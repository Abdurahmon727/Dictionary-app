import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../assets/colors/colors.dart';
import '../bloc/show_pop_up/show_pop_up_bloc.dart';
import '../models/popup_types.dart';
import '../widgets/popups.dart';

class WScaffold extends StatefulWidget {
  final Widget? drawer;
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? floatingButton;
  const WScaffold({
    required this.body,
    this.appBar,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.floatingButton,
    this.drawer,
    Key? key,
  }) : super(key: key);

  @override
  State<WScaffold> createState() => _WScaffoldState();
}

class _WScaffoldState extends State<WScaffold> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShowPopUpBloc, ShowPopUpState>(
      listener: (context, state) {
        print('listener started');
        if (state.showPopUp && state.popUpType == PopUpType.error) {
          showSimpleNotification(
            WPopUp(color: red, text: state.errorText),
            elevation: 0,
            background: Colors.transparent,
            autoDismiss: true,
            slideDismissDirection: DismissDirection.horizontal,
          );
        } else if (state.showPopUp && state.popUpType == PopUpType.warning) {
          showSimpleNotification(
            WPopUp(
              color: Colors.orangeAccent,
              text: state.warningText,
            ),
            elevation: 0,
            background: Colors.transparent,
            autoDismiss: true,
            slideDismissDirection: DismissDirection.horizontal,
          );
        } else if (state.showPopUp && state.popUpType == PopUpType.success) {
          showSimpleNotification(
            WPopUp(
              color: Colors.green,
              text: state.successText,
            ),
            elevation: 0,
            background: Colors.transparent,
            autoDismiss: true,
            slideDismissDirection: DismissDirection.horizontal,
          );
        }
      },
      builder: (context, state) => KeyboardDismisser(
        child: Scaffold(
          drawer: widget.drawer,
          resizeToAvoidBottomInset: true,
          floatingActionButton: widget.floatingButton,
          appBar: widget.appBar,
          backgroundColor: widget.backgroundColor ??
              Theme.of(context).scaffoldBackgroundColor,
          bottomNavigationBar: widget.bottomNavigationBar,
          body: widget.body,
        ),
      ),
    );
  }
}
