import 'package:dictionary_app/features/local_dictionary/domain/entity/local_word.dart';

abstract class LocalDictionaryRepository {
  Future<List<LocalWordEntity>> findWords(
      {required String query,
      required bool isEngUzb,
      required int currentPage});
}
