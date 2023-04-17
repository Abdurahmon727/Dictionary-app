part of 'show_pop_up_bloc.dart';

@Freezed()
class ShowPopUpState with _$ShowPopUpState {
  factory ShowPopUpState({
    @Default('') String errorText,
    @Default('') String warningText,
    @Default('') String successText,
    @Default(false) bool showPopUp,
    @Default(PopUpType.error) PopUpType popUpType,
  }) = _ShowPopUpState;
}
