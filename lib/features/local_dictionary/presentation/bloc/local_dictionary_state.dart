part of 'local_dictionary_bloc.dart';

@freezed
class LocalDictionaryState with _$LocalDictionaryState {
  const factory LocalDictionaryState({
    @Default([]) List<LocalWordEntity> results,
    @Default(true) bool isEngUzb,
    @Default('') String query,
    @Default(0) int currentPage,
  }) = _LocalDictionaryState;
}
