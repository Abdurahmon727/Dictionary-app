import 'package:dictionary_app/features/local_dictionary/data/model/word.dart';

abstract class LocalDictionaryRepository {
  Future<List<LocalWord>> findWords(
      {required String query,
      required bool isEngUzb,
      required int currentPage});
}
