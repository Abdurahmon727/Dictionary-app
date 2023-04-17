part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.findDefinition(String query) = _FindDefinition;
}
