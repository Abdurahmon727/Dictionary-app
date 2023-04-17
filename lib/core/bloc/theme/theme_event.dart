part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.loadTheme() = _LoadTheme;
  const factory ThemeEvent.changeTheme({required bool isLight}) = _ChangeTheme;
}
