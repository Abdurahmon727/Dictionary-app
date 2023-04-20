import 'package:dictionary_app/features/local_dictionary/data/model/word.dart';
import 'package:flutter/material.dart';

class LocalWordPage extends StatelessWidget {
  const LocalWordPage({super.key, required this.word});
  final LocalWord word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Text(word.word),
              if (word.pron != null) Text(word.pron!),
            ],
          )
        ],
      ),
    );
  }
}
