import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../core/widgets/w_scale.dart';
import '../../domain/entities/word.dart';

class WWordDefinition extends StatelessWidget {
  const WWordDefinition({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final WordEntity entity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Text(
              entity.word,
              style: const TextStyle(
                color: black,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 8),
            Text(entity.phonetic ?? ''),
            const Spacer(),
            WScaleAnimation(
              onTap: () => AudioPlayer().play(UrlSource(entity.audio)),
              child: const Icon(Icons.volume_up),
            ),
          ],
        ),
        for (int i = 0; i < entity.meanings.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${entity.meanings[i].partOfSpeech}:',
                style: const TextStyle(color: grey, fontSize: 14),
              ),
              for (int j = 0; j < entity.meanings[i].definitions.length; j++)
                Text(
                  '[${j + 1}] ${entity.meanings[i].definitions[j]}',
                  style: const TextStyle(fontSize: 14),
                ),
              const SizedBox(height: 1),
              Visibility(
                visible: entity.meanings[i].synonyms.isNotEmpty,
                child: Wrap(
                  spacing: 6,
                  children: [
                    const Text(
                      'Synonyms: ',
                      style: TextStyle(color: yellowShadow, fontSize: 14),
                    ),
                    for (int k = 0; k < entity.meanings[i].synonyms.length; k++)
                      Text(
                        entity.meanings[i].synonyms[k],
                        style:
                            const TextStyle(fontSize: 14, color: yellowShadow),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
      ],
    );
  }
}
