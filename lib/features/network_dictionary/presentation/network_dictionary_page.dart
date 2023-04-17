import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/app_functions.dart';
import '../../../core/bloc/show_pop_up/show_pop_up_bloc.dart';
import '../../../core/data/service_locator.dart';
import '../../../core/models/formz/formz_status.dart';
import '../../../core/pages/w_scaffold.dart';
import '../../../core/widgets/w_scale.dart';
import '../../create_pdf/presentaion/bloc/pdf_bloc.dart';
import 'bloc/search_bloc.dart';
import 'widgets/drawer.dart';
import 'widgets/word_definition.dart';

class NetworkDictionaryPage extends StatefulWidget {
  const NetworkDictionaryPage({super.key});

  @override
  State<NetworkDictionaryPage> createState() => _NetworkDictionaryPageState();
}

class _NetworkDictionaryPageState extends State<NetworkDictionaryPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
        BlocProvider(
          create: (context) => sl<PdfBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        return WScaffold(
            drawer: const AppDrawer(),
            appBar: AppBar(
              title: const Text(
                'Network Definition',
                style: TextStyle(fontSize: 18),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      final entity =
                          context.read<SearchBloc>().state.resultEntity;

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
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(color: white),
                    onChanged: (value) {},
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    cursorColor: white,
                    controller: searchController,
                    textCapitalization: TextCapitalization.none,
                    onSubmitted: (text) async {
                      if (text.isNotEmpty) {
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.findDefinition(text));
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: WScaleAnimation(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text('Tap to speak'),
                                        const SizedBox(height: 10),
                                        WScaleAnimation(
                                          onTap: () async {
                                            await AppFunctions.listenVoice(
                                                (value) {
                                              searchController.text = value;
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.orange,
                                            radius: 45,
                                            child: Icon(Icons.mic_none,
                                                color: white, size: 30),
                                          ),
                                        ),
                                      ]),
                                );
                              },
                            );
                          },
                          child: const Icon(Icons.mic, color: white)),
                      suffixIcon: Visibility(
                        visible: searchController.text.isNotEmpty,
                        child: WScaleAnimation(
                            onTap: () => searchController.clear(),
                            child: const Icon(Icons.clear, color: white)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      contentPadding: const EdgeInsets.only(left: 8),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: white),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.status == FormzStatus.submissionInProgress) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (state.status == FormzStatus.submissionFailure) {
                  return Center(child: Text(state.errorMessage));
                } else if (state.status == FormzStatus.submissionSuccess) {
                  final entity = state.resultEntity;
                  return WWordDefinition(entity: entity);
                }
                return const SizedBox();
              },
            ));
      }),
    );
  }
}
