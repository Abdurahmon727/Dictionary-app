import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/formz/formz_status.dart';
import '../../domain/entities/word.dart';
import '../../domain/usecase/get_results.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc()
      : super(SearchState(
            resultEntity:
                WordEntity(audio: '', meanings: [], phonetic: '', word: ''))) {
    on<_FindDefinition>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final usecase = GetDefinitionUseCase();
      final result = await usecase.call(event.query);
      result.either((fail) {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: fail.errorMessage));
      }, (data) {
        emit(state.copyWith(
            status: FormzStatus.submissionSuccess, resultEntity: data));
      });
    });
  }
}
