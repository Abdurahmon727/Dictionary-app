class LocalWord {
  final int id;
  final String word;
  final String? pron;
  final String translation;
  LocalWord({
    required this.id,
    required this.word,
    this.pron,
    required this.translation,
  });
}
