import 'package:equatable/equatable.dart';

class MeaningEntity extends Equatable {
  const MeaningEntity({
    required this.partOfSpeech,
    required this.definitions,
    required this.synonyms,
  });
  final String partOfSpeech;
  final List<String> definitions;
  final List<String> synonyms;

  @override
  List<Object?> get props => [partOfSpeech, definitions, synonyms];
}
