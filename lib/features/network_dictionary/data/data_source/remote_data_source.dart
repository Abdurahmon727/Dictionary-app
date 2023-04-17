import 'package:dio/dio.dart';

import '../../../../core/error/exeptions.dart';
import '../../domain/entities/word.dart';
import '../models/meaning.dart';
import '../models/word.dart';

abstract class SearchRemoteDataSource {
  Future<WordModel> getDefinition(String query);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final Dio _dio = Dio();
  @override
  Future<WordModel> getDefinition(String query) async {
    final result = await _dio
        .get('https://api.dictionaryapi.dev/api/v2/entries/en/$query');
    if (result.statusCode! == 404) {
      throw ServerException(statusMessage: 'Nothing found', statusCode: 404);
    }
    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final body = result.data[0];
      final meanings = (body['meanings'] as List)
          .map((meaning) => MeaningModel(
                partOfSpeech: meaning['partOfSpeech'],
                synonyms: (meaning['synonyms'] as List)
                    .map((synon) => synon.toString())
                    .toList(),
                definitions: (meaning['definitions'] as List)
                    .map((def) => def['definition'].toString())
                    .toList(),
              ))
          .toList();
      var data = WordModel(
          audio: body['phonetics'][0]['audio'],
          phonetic: body['phonetic'],
          word: body['word'],
          meanings: meanings);
      data = data.copyWith(meanings: meanings);

      return data;
    } else {
      throw ServerException(
          statusMessage: 'Server Failure', statusCode: result.statusCode!);
    }
  }
}
