import 'package:equatable/equatable.dart';

import '../../../remote_dictionary/domain/entities/any_word.dart';

class LocalWordEntity extends Equatable implements AnyWord {
  final int id;
  @override
  final String word;
  final String? pron;
  final String translation;
  const LocalWordEntity({
    required this.id,
    required this.word,
    this.pron,
    required this.translation,
  });

  @override
  List<Object?> get props => [id, word, pron, translation];
}
