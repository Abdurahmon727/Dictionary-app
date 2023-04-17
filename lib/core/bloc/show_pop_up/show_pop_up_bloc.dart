import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/popup_types.dart';

part 'show_pop_up_bloc.freezed.dart';
part 'show_pop_up_event.dart';
part 'show_pop_up_state.dart';

class ShowPopUpBloc extends Bloc<ShowPopUpEvent, ShowPopUpState> {
  ShowPopUpBloc() : super(ShowPopUpState()) {
    Timer timer = Timer(Duration.zero, () {});
    on<_ShowWarning>((event, emit) {
      if (timer.isActive) {
        timer.cancel();
      }
      timer = Timer(const Duration(seconds: 2), () {
        add(ShowPopUpEvent.hide());
      });
      emit(state.copyWith(
          warningText: event.text,
          showPopUp: true,
          popUpType: PopUpType.warning));
    });
    on<_ShowSuccess>((event, emit) {
      if (timer.isActive) {
        timer.cancel();
      }
      timer = Timer(const Duration(seconds: 2), () {
        add(ShowPopUpEvent.hide());
      });
      emit(state.copyWith(
          successText: event.text,
          showPopUp: true,
          popUpType: PopUpType.success));
    });
    on<_ShowFailure>((event, emit) {
      if (timer.isActive) {
        timer.cancel();
      }
      timer = Timer(const Duration(seconds: 2), () {
        add(ShowPopUpEvent.hide());
      });
      emit(state.copyWith(
          errorText: event.text, showPopUp: true, popUpType: PopUpType.error));
    });

    on<_Hide>((event, emit) {
      if (timer.isActive) {
        timer.cancel();
      }
      emit(state.copyWith(showPopUp: false, warningText: ''));
    });
  }
}
