import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_functions.dart';
import '../../../../core/bloc/show_pop_up/show_pop_up_bloc.dart';
import '../../../create_pdf/presentaion/bloc/pdf_bloc.dart';
import '../../domain/entity/local_word.dart';

class LocalWordDefinitionPage extends StatelessWidget {
  const LocalWordDefinitionPage({super.key, required this.word});
  final LocalWordEntity word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                final entity = word;

                // context.read<PdfBloc>().add(PdfEvent.addWord(
                //       wordEntity: entity,
                //       onFailure: (value) {
                //         context
                //             .read<ShowPopUpBloc>()
                //             .add(ShowPopUpEvent.showWarning(text: value));
                //         // Add showWarning event only
                //       },
                //       onSuccess: (value) {
                //         context
                //             .read<ShowPopUpBloc>()
                //             .add(ShowPopUpEvent.showSuccess(text: value));
                //         // Add showSuccess event only
                //       },
                //     ));

                context.read<PdfBloc>().add(PdfEvent.addWord(
                      wordEntity: entity,
                      onFailure: (value) => context
                          .read<ShowPopUpBloc>()
                          .add(ShowPopUpEvent.showWarning(text: value)),
                      onSuccess: (value) => context
                          .read<ShowPopUpBloc>()
                          .add(ShowPopUpEvent.showSuccess(text: value)),
                    ));
              },
              icon: const Icon(Icons.picture_as_pdf_outlined))
        ],
      ),
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
        ),
      ),
    );
  }
}
