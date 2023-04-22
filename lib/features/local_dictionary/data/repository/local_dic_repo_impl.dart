import 'package:sqflite/sqflite.dart';

import '../../../../core/data/service_locator.dart';
import '../../domain/repository/local_dic_repo.dart';
import '../model/word.dart';

class LocalDictionaryRepositoryImpl implements LocalDictionaryRepository {
  late final Database db;
  LocalDictionaryRepositoryImpl() {
    db = sl<Database>();
  }
  @override
  Future<List<LocalWord>> findWords(
      {required String query,
      required bool isEngUzb,
      required int currentPage}) async {
    final String language = isEngUzb ? 'eng' : 'uzb';
    final String form = isEngUzb ? 'eng_uzb' : 'uzb_eng';
    final map = await db.rawQuery(
        "SELECT * FROM $form where $language like '%$query%' limit 50 offset ${50 * currentPage}");

    final data = map
        .map((element) => LocalWord(
            id: element['_id'] as int,
            word: element[language] as String,
            translation: element[!isEngUzb ? 'eng' : 'uzb'] as String,
            pron: isEngUzb ? element['pron'] as String : null))
        .toList();
    return data;
  }
}
