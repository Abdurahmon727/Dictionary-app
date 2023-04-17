import 'package:flutter/material.dart';

import '../../../network_dictionary/domain/entities/word.dart';
import '../../../network_dictionary/presentation/widgets/word_definition.dart';

class WordInfoPage extends StatelessWidget {
  const WordInfoPage({super.key, required this.entity});
  final WordEntity entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WWordDefinition(entity: entity),
    );
  }
}
