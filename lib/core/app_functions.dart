import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdf_widgets;
import 'package:pdf/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../features/local_dictionary/domain/entity/local_word.dart';
import '../features/remote_dictionary/domain/entities/any_word.dart';
import '../features/remote_dictionary/domain/entities/remote_word.dart';
import 'helper.dart';

abstract class AppFunctions {
  static Future<bool> listenVoice(ValueChanged<String> onResult) async {
    final speech = SpeechToText();
    final isAvailable = await speech.initialize();
    if (isAvailable) {
      speech.listen(
        onResult: (result) => onResult(result.recognizedWords),
      );
    }
    return isAvailable;
  }

  static Future<FileInfo> generatePdf(List<AnyWord> entities) async {
    final pdf = Document();
    List<pdf_widgets.Widget> words = [];

    for (int page = 0; page < entities.length; page++) {
      if (entities[page] is RemoteWordEntity) {
        final entity = entities[page] as RemoteWordEntity;
        words.add(
          pdf_widgets.Text(
            entity.word,
            style: const pdf_widgets.TextStyle(
              fontSize: 18,
            ),
          ),
        );
        words.add(pdf_widgets.SizedBox(width: 8));
        words.add(pdf_widgets.Text(entity.phonetic ?? ''));
        for (int i = 0; i < entity.meanings.length; i++) {
          words.add(pdf_widgets.Text(
            '${entity.meanings[i].partOfSpeech}:',
            style: const pdf_widgets.TextStyle(fontSize: 14),
          ));

          for (int j = 0; j < entity.meanings[i].definitions.length; j++) {
            words.add(
              pdf_widgets.Text(
                '[${j + 1}] ${entity.meanings[i].definitions[j]}',
                style: const pdf_widgets.TextStyle(fontSize: 14),
              ),
            );
          }

          words.add(pdf_widgets.SizedBox(height: 1));
          if (entity.meanings[i].synonyms.isNotEmpty) {
            words.add(pdf_widgets.Wrap(
              spacing: 6,
              children: [
                pdf_widgets.Text(
                  'Synonyms: ',
                  style: const pdf_widgets.TextStyle(fontSize: 14),
                ),
                for (int k = 0; k < entity.meanings[i].synonyms.length; k++)
                  pdf_widgets.Text(
                    entity.meanings[i].synonyms[k],
                    style: const pdf_widgets.TextStyle(fontSize: 14),
                  ),
              ],
            ));
          }
        }
        words.add(pdf_widgets.SizedBox(height: 4));
      } else {
        final entity = entities[page] as LocalWordEntity;
        words.add(pdf_widgets.Row(children: [
          pdf_widgets.Text(
            entity.word,
            style: const pdf_widgets.TextStyle(
              fontSize: 18,
            ),
          ),
          pdf_widgets.SizedBox(width: 5),
          if (entity.pron != null)
            pdf_widgets.Text(
              entity.pron!,
              style: const pdf_widgets.TextStyle(fontSize: 14),
            )
        ]));
        words.add(pdf_widgets.Text(
          removeHtmlTags(entity.translation),
          style: const pdf_widgets.TextStyle(fontSize: 14),
        ));
        words.add(pdf_widgets.SizedBox(height: 4));
      }
    }
    final completePdf = pdf_widgets.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const pdf_widgets.EdgeInsets.all(15),
      build: (pdf_widgets.Context context) {
        return words;
      },
    );

    pdf.addPage(completePdf);
    return await saveDocument(name: 'Ultra Dictionary doc.pdf', pdf: pdf);
  }

  static Future<FileInfo> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    if (!await Permission.storage.isGranted) {
      await Permission.storage.request();
    }
    final bytes = await pdf.save();
    final newName = getUniqueFileName(name);
    String path = '/storage/emulated/0/Download/$newName';

    final file = File(path);

    await file.writeAsBytes(bytes);

    return FileInfo(file: file, fileName: newName);
  }

  static Future<void> openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }

  static String removeHtmlTags(String data) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return data.replaceAll(exp, '');
  }

  static String getUniqueFileName(String fileName) {
    int suffix = 1;
    String baseName = fileName.split('.').first;
    String extension = fileName.split('.').last;
    String newFileName = fileName;

    while (File(newFileName).existsSync()) {
      newFileName = '$baseName($suffix).$extension';
      suffix++;
    }

    return newFileName;
  }
}
