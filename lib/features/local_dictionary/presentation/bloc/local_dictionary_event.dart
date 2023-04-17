part of 'local_dictionary_bloc.dart';

@freezed
class LocalDictionaryEvent with _$LocalDictionaryEvent {
  const factory LocalDictionaryEvent.search(String query) = _Search;
  const factory LocalDictionaryEvent.changeLanguage() = _ChangeLanguage;
  const factory LocalDictionaryEvent.onPagination() = _OnPagination;
  const factory LocalDictionaryEvent.init() = _Init;
}
