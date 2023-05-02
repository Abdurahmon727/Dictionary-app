// ignore_for_file: use_build_context_synchronously

import '../../../core/pages/w_scaffold.dart';
import '../../dictionary/presentation/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_functions.dart';
import 'bloc/pdf_bloc.dart';
import 'pages/word_info.dart';

class CreatePdfPage extends StatelessWidget {
  const CreatePdfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                final pdf = await AppFunctions.generatePdf(
                    context.read<PdfBloc>().state.words);
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      content: Text(
                          'Your file saved inside Dowloads file as //${pdf.fileName}, do you want to open it now?'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('No')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              AppFunctions.openFile(pdf.file);
                            },
                            child: const Text('Yes'))
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.print_rounded)),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    content:
                        const Text('Do really you want to delete all words?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          context
                              .read<PdfBloc>()
                              .add(const PdfEvent.clearWords());
                          Navigator.pop(context);
                        },
                        child: const Text('Yes delete all'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('No'),
                      )
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
        title: const Text(
          'Create pdf',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<PdfBloc, PdfState>(
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WordInfoPage(entity: state.words[index]),
                        ));
                  },
                  child: ListTile(title: Text(state.words[index].word)));
            },
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemCount: state.words.length,
          );
        },
      ),
    );
  }
}
