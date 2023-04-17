import 'package:freezed_annotation/freezed_annotation.dart';

part 'meaning.freezed.dart';

@freezed
class MeaningModel with _$MeaningModel {
  const factory MeaningModel({
    required String partOfSpeech,
    required List<String> definitions,
    required List<String> synonyms,
  }) = _MeaningModel;
}
