import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/widgets.dart' as pdf_widgets;
import 'package:pdf/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../features/network_dictionary/domain/entities/word.dart';
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

  static Future<FileInfo> generatePdf(List<WordEntity> entities) async {
    final pdf = Document();

    for (int page = 0; page < entities.length; page++) {
      final onePage = pdf_widgets.Page(
        margin: const pdf_widgets.EdgeInsets.all(5),
        build: (pdf_widgets.Context context) {
          return pdf_widgets.ListView(children: [
            pdf_widgets.Column(
                crossAxisAlignment: pdf_widgets.CrossAxisAlignment.start,
                children: [
                  pdf_widgets.Text(
                    entities[page].word,
                    style: const pdf_widgets.TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  pdf_widgets.SizedBox(width: 8),
                  pdf_widgets.Text(entities[page].phonetic ?? ''),
                  for (int i = 0; i < entities[page].meanings.length; i++)
                    pdf_widgets.Column(
                      crossAxisAlignment: pdf_widgets.CrossAxisAlignment.start,
                      children: [
                        pdf_widgets.Text(
                          '${entities[page].meanings[i].partOfSpeech}:',
                          style: const pdf_widgets.TextStyle(fontSize: 14),
                        ),
                        for (int j = 0;
                            j < entities[page].meanings[i].definitions.length;
                            j++)
                          pdf_widgets.Text(
                            '[${j + 1}] ${entities[page].meanings[i].definitions[j]}',
                            style: const pdf_widgets.TextStyle(fontSize: 14),
                          ),
                        pdf_widgets.SizedBox(height: 1),
                        if (entities[page].meanings[i].synonyms.isNotEmpty)
                          pdf_widgets.Wrap(
                            spacing: 6,
                            children: [
                              pdf_widgets.Text(
                                'Synonyms: ',
                                style:
                                    const pdf_widgets.TextStyle(fontSize: 14),
                              ),
                              for (int k = 0;
                                  k <
                                      entities[page]
                                          .meanings[i]
                                          .synonyms
                                          .length;
                                  k++)
                                pdf_widgets.Text(
                                  entities[page].meanings[i].synonyms[k],
                                  style:
                                      const pdf_widgets.TextStyle(fontSize: 14),
                                ),
                            ],
                          ),
                        pdf_widgets.SizedBox(height: 4),
                      ],
                    ),
                ]),
          ]);
        },
      );

      pdf.addPage(onePage);
    }
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
