import 'package:equatable/equatable.dart';

import 'meaing.dart';

class WordEntity extends Equatable {
  const WordEntity(
      {required this.word,
      required this.phonetic,
      required this.audio,
      required this.meanings});

  final String word;
  final String? phonetic;
  final String audio;
  final List<MeaningEntity> meanings;

  @override
  List<Object?> get props => [word, phonetic, audio, meanings];
}
