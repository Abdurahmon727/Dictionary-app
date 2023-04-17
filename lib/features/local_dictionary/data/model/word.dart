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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'word': word,
      'pron': pron,
      'translation': translation,
    };
  }

  factory LocalWord.fromMap(Map<String, dynamic> map) {
    return LocalWord(
      id: map['id'] as int,
      word: map['word'] as String,
      pron: map['pron'] != null ? map['pron'] as String : null,
      translation: map['translation'] as String,
    );
  }
}
