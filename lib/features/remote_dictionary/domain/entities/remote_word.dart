import 'package:equatable/equatable.dart';

import 'any_word.dart';
import 'meaing.dart';

class RemoteWordEntity extends Equatable implements AnyWord {
  const RemoteWordEntity(
      {required this.word,
      required this.phonetic,
      required this.audio,
      required this.meanings});

  @override
  final String word;
  final String? phonetic;
  final String audio;
  final List<MeaningEntity> meanings;

  @override
  List<Object?> get props => [word, phonetic, audio, meanings];
}
