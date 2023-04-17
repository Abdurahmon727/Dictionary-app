import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/storage_repository.dart';
import '../../data/model/word.dart';
import '../../domain/repository/local_dic_repo.dart';

part 'local_dictionary_bloc.freezed.dart';
part 'local_dictionary_event.dart';
part 'local_dictionary_state.dart';

class LocalDictionaryBloc
    extends Bloc<LocalDictionaryEvent, LocalDictionaryState> {
  late final LocalDictionaryRepository _repository;
  LocalDictionaryBloc(LocalDictionaryRepository repository)
      : _repository = repository,
        super(const LocalDictionaryState()) {
    on<_Search>((event, emit) async {
      final result = await _repository.findWords(
          query: event.query,
          isEngUzb: state.isEngUzb,
          currentPage: state.currentPage);
      emit(state.copyWith(currentPage: 0, results: result, query: event.query));
    });

    on<_ChangeLanguage>((event, emit) async {
      final isEngUzb = !state.isEngUzb;
      await StorageRepository.putBool(key: 'isEngUzb', value: isEngUzb);
      final data = await _repository.findWords(
          query: state.query, isEngUzb: isEngUzb, currentPage: 0);
      emit(state.copyWith(isEngUzb: isEngUzb, results: data, currentPage: 0));
    });

    on<_OnPagination>((event, emit) async {
      final page = state.currentPage + 1;
      final data = await _repository.findWords(
          query: state.query, isEngUzb: state.isEngUzb, currentPage: page);
      emit(state.copyWith(results: state.results + data, currentPage: page));
    });

    on<_Init>((event, emit) {
      final bool isEngUzb =
          StorageRepository.getBool('isEngUzb', defValue: true);
      if (!isEngUzb) {
        add(const LocalDictionaryEvent.changeLanguage());
      } else {
        add(LocalDictionaryEvent.search(state.query));
      }
    });
  }
}
