import 'package:dictionary_app/features/network_dictionary/data/models/meaning.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
class WordModel with _$WordModel {
  const factory WordModel(
      {required String word,
      required String? phonetic,
      required String audio,
      @Default([]) List<MeaningModel> meanings}) = _WordModel;
}
