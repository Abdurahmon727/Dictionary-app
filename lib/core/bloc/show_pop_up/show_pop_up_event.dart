part of 'show_pop_up_bloc.dart';

@Freezed()
class ShowPopUpEvent with _$ShowPopUpEvent {
  factory ShowPopUpEvent.showWarning({required String text}) = _ShowWarning;
  factory ShowPopUpEvent.showSuccess({required String text}) = _ShowSuccess;
  factory ShowPopUpEvent.showFailure({required String text}) = _ShowFailure;
  factory ShowPopUpEvent.hide() = _Hide;
}
