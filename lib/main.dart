import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

import 'assets/theme/theme.dart';
import 'core/bloc/show_pop_up/show_pop_up_bloc.dart';
import 'core/data/service_locator.dart';
import 'features/network_dictionary/presentation/network_dictionary_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShowPopUpBloc>(
          create: (BuildContext context) => ShowPopUpBloc(),
        ),
      ],
      child: OverlaySupport.global(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme(),
          home: const NetworkDictionaryPage(),
        ),
      ),
    );
  }
}
