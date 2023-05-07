import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../remote_dictionary/domain/entities/any_word.dart';

part 'pdf_bloc.freezed.dart';
part 'pdf_event.dart';
part 'pdf_state.dart';

class PdfBloc extends Bloc<PdfEvent, PdfState> {
  PdfBloc() : super(const PdfState()) {
    on<_AddWord>((event, emit) {
      if (event.wordEntity.word.isNotEmpty) {
        if (state.words
            .map((e) => e.word)
            .toList()
            .contains(event.wordEntity.word)) {
          event.onFailure('This word is already added');
        } else {
          final List<AnyWord> newWords = state.words + [event.wordEntity];
          emit(state.copyWith(words: newWords));

          event.onSuccess('Word "${event.wordEntity.word}" is added to print');
        }
      } else {
        event.onFailure('word doesn\'nt exist');
      }
    });
    on<_ClearWords>((event, emit) {
      emit(state.copyWith(words: []));
    });
    on<_RemoveWord>((event, emit) {
      final words = state.words;
      final newWords = [...words];
      emit(state.copyWith(words: newWords));
    });
  }
}
