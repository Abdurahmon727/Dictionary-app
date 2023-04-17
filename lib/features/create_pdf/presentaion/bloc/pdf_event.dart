part of 'pdf_bloc.dart';

@freezed
class PdfEvent with _$PdfEvent {
  const factory PdfEvent.addWord(
      {required WordEntity wordEntity,
      required ValueChanged<String> onFailure,
      required ValueChanged<String> onSuccess}) = _AddWord;
  const factory PdfEvent.clearWords() = _ClearWords;
  const factory PdfEvent.removeWord(int index) = _RemoveWord;
}
