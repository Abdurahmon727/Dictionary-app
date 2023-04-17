import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/create_pdf/presentaion/bloc/pdf_bloc.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  await initDb();
  sl.registerLazySingleton(() => PdfBloc());
}

Future<void> initDb() async {
  ByteData data = await rootBundle.load('assets/database/eng_dictionary.db');
  List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  String path = join(await getDatabasesPath(), 'eng_dictionary.db');
  await File(path).writeAsBytes(bytes);
  // Now, open the database file using sqflite.
  final Database db = await openDatabase(path);
  sl.registerLazySingleton(() => db);
}
