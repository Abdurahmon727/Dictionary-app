import 'package:dictionary_app/features/local_dictionary/data/model/word.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_functions.dart';

class LocalWordPage extends StatelessWidget {
  const LocalWordPage({super.key, required this.word});
  final LocalWord word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    word.word,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 10),
                  if (word.pron != null)
                    Text(
                      word.pron!,
                      style: const TextStyle(fontSize: 14),
                    ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                AppFunctions.removeHtmlTags(word.translation),
                style: const TextStyle(fontSize: 16),
              ),
            ],
          )),
    );
  }
}
