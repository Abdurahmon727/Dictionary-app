import '../../domain/entities/meaing.dart';
import '../../domain/entities/remote_word.dart';
import 'meaning.dart';
import 'word.dart';

abstract class SearchConverter {
  static MeaningEntity meaningModelToEntity(MeaningModel model) =>
      MeaningEntity(
        partOfSpeech: model.partOfSpeech,
        definitions: model.definitions,
        synonyms: model.synonyms,
      );
  static RemoteWordEntity wordModelToEntity(WordModel model) {
    return RemoteWordEntity(
      word: model.word,
      phonetic: model.phonetic,
      audio: model.audio,
      meanings:
          model.meanings.map((model) => meaningModelToEntity(model)).toList(),
    );
  }
}
