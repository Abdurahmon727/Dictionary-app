import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../core/app_functions.dart';
import '../../../../core/pages/w_scaffold.dart';
import '../../../../core/widgets/w_scale.dart';
import '../../dictionary/presentation/widgets/drawer.dart';
import '../data/repository/local_dic_repo_impl.dart';
import 'bloc/local_dictionary_bloc.dart';

class LocalDictionaryPage extends StatefulWidget {
  const LocalDictionaryPage({super.key});

  @override
  State<LocalDictionaryPage> createState() => _LocalDictionaryPageState();
}

class _LocalDictionaryPageState extends State<LocalDictionaryPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              LocalDictionaryBloc(LocalDictionaryRepositoryImpl())
                ..add(const LocalDictionaryEvent.init()),
        ),
      ],
      child: Builder(builder: (context) {
        return WScaffold(
            drawer: const AppDrawer(),
            appBar: AppBar(
              title: const Text(
                'Local Dictionary',
                style: TextStyle(fontSize: 18),
              ),
              actions: [
                Center(
                  child: BlocBuilder<LocalDictionaryBloc, LocalDictionaryState>(
                    builder: (context, state) {
                      return Text(
                        state.isEngUzb ? 'Eng_Uzb' : 'Uzb_Eng',
                        style: const TextStyle(fontSize: 13),
                      );
                    },
                  ),
                ),
                IconButton(
                    onPressed: () {
                      context
                          .read<LocalDictionaryBloc>()
                          .add(const LocalDictionaryEvent.changeLanguage());
                    },
                    icon: const Icon(Icons.cached))
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(color: white),
                    onChanged: (value) {
                      context
                          .read<LocalDictionaryBloc>()
                          .add(LocalDictionaryEvent.search(value));
                    },
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    cursorColor: white,
                    controller: searchController,
                    textCapitalization: TextCapitalization.none,
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
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Theme.of(context).primaryColor,
                                            radius: 45,
                                            child: const Icon(Icons.mic_none,
                                                color: white, size: 30),
                                          ),
                                        ),
                                      ]),
                                );
                              },
                            );
                          },
                          child: const Icon(Icons.mic, color: white)),
                      suffixIcon: WScaleAnimation(
                          onTap: () {
                            searchController.clear();
                            context
                                .read<LocalDictionaryBloc>()
                                .add(const LocalDictionaryEvent.search(''));
                          },
                          child: const Icon(Icons.clear, color: white)),
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
            body: BlocBuilder<LocalDictionaryBloc, LocalDictionaryState>(
              builder: (context, state) {
                if (state.results.isNotEmpty) {
                  return ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {},
                          child:
                              ListTile(title: Text(state.results[index].word))),
                      separatorBuilder: (_, __) => const SizedBox(height: 5),
                      itemCount: state.results.length);
                } else {
                  return const Center(
                    child: Text('nothing found :('),
                  );
                }
              },
            ));
      }),
    );
  }
}
