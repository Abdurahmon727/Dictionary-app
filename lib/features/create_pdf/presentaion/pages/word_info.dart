import 'package:flutter/material.dart';

import '../../../../core/app_functions.dart';
import '../../../local_dictionary/domain/entity/local_word.dart';
import '../../../remote_dictionary/domain/entities/any_word.dart';
import '../../../remote_dictionary/domain/entities/remote_word.dart';
import '../../../remote_dictionary/presentation/widgets/word_definition.dart';

class WordInfoPage extends StatelessWidget {
  const WordInfoPage({super.key, required this.entity});
  final AnyWord entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: (entity is RemoteWordEntity)
          ? WWordDefinition(entity: entity as RemoteWordEntity)
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        entity.word,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(width: 10),
                      if ((entity as LocalWordEntity).pron != null)
                        Text(
                          (entity as LocalWordEntity).pron!,
                          style: const TextStyle(fontSize: 14),
                        ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    AppFunctions.removeHtmlTags(
                        (entity as LocalWordEntity).translation),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
    );
  }
}
