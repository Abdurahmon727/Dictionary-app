// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordEntity wordEntity,
            ValueChanged<String> onFailure, ValueChanged<String> onSuccess)
        addWord,
    required TResult Function() clearWords,
    required TResult Function(int index) removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult? Function()? clearWords,
    TResult? Function(int index)? removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult Function()? clearWords,
    TResult Function(int index)? removeWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ClearWords value) clearWords,
    required TResult Function(_RemoveWord value) removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ClearWords value)? clearWords,
    TResult? Function(_RemoveWord value)? removeWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ClearWords value)? clearWords,
    TResult Function(_RemoveWord value)? removeWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfEventCopyWith<$Res> {
  factory $PdfEventCopyWith(PdfEvent value, $Res Function(PdfEvent) then) =
      _$PdfEventCopyWithImpl<$Res, PdfEvent>;
}

/// @nodoc
class _$PdfEventCopyWithImpl<$Res, $Val extends PdfEvent>
    implements $PdfEventCopyWith<$Res> {
  _$PdfEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddWordCopyWith<$Res> {
  factory _$$_AddWordCopyWith(
          _$_AddWord value, $Res Function(_$_AddWord) then) =
      __$$_AddWordCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WordEntity wordEntity,
      ValueChanged<String> onFailure,
      ValueChanged<String> onSuccess});
}

/// @nodoc
class __$$_AddWordCopyWithImpl<$Res>
    extends _$PdfEventCopyWithImpl<$Res, _$_AddWord>
    implements _$$_AddWordCopyWith<$Res> {
  __$$_AddWordCopyWithImpl(_$_AddWord _value, $Res Function(_$_AddWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordEntity = null,
    Object? onFailure = null,
    Object? onSuccess = null,
  }) {
    return _then(_$_AddWord(
      wordEntity: null == wordEntity
          ? _value.wordEntity
          : wordEntity // ignore: cast_nullable_to_non_nullable
              as WordEntity,
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ));
  }
}

/// @nodoc

class _$_AddWord implements _AddWord {
  const _$_AddWord(
      {required this.wordEntity,
      required this.onFailure,
      required this.onSuccess});

  @override
  final WordEntity wordEntity;
  @override
  final ValueChanged<String> onFailure;
  @override
  final ValueChanged<String> onSuccess;

  @override
  String toString() {
    return 'PdfEvent.addWord(wordEntity: $wordEntity, onFailure: $onFailure, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddWord &&
            (identical(other.wordEntity, wordEntity) ||
                other.wordEntity == wordEntity) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, wordEntity, onFailure, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddWordCopyWith<_$_AddWord> get copyWith =>
      __$$_AddWordCopyWithImpl<_$_AddWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordEntity wordEntity,
            ValueChanged<String> onFailure, ValueChanged<String> onSuccess)
        addWord,
    required TResult Function() clearWords,
    required TResult Function(int index) removeWord,
  }) {
    return addWord(wordEntity, onFailure, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult? Function()? clearWords,
    TResult? Function(int index)? removeWord,
  }) {
    return addWord?.call(wordEntity, onFailure, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult Function()? clearWords,
    TResult Function(int index)? removeWord,
    required TResult orElse(),
  }) {
    if (addWord != null) {
      return addWord(wordEntity, onFailure, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ClearWords value) clearWords,
    required TResult Function(_RemoveWord value) removeWord,
  }) {
    return addWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ClearWords value)? clearWords,
    TResult? Function(_RemoveWord value)? removeWord,
  }) {
    return addWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ClearWords value)? clearWords,
    TResult Function(_RemoveWord value)? removeWord,
    required TResult orElse(),
  }) {
    if (addWord != null) {
      return addWord(this);
    }
    return orElse();
  }
}

abstract class _AddWord implements PdfEvent {
  const factory _AddWord(
      {required final WordEntity wordEntity,
      required final ValueChanged<String> onFailure,
      required final ValueChanged<String> onSuccess}) = _$_AddWord;

  WordEntity get wordEntity;
  ValueChanged<String> get onFailure;
  ValueChanged<String> get onSuccess;
  @JsonKey(ignore: true)
  _$$_AddWordCopyWith<_$_AddWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearWordsCopyWith<$Res> {
  factory _$$_ClearWordsCopyWith(
          _$_ClearWords value, $Res Function(_$_ClearWords) then) =
      __$$_ClearWordsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearWordsCopyWithImpl<$Res>
    extends _$PdfEventCopyWithImpl<$Res, _$_ClearWords>
    implements _$$_ClearWordsCopyWith<$Res> {
  __$$_ClearWordsCopyWithImpl(
      _$_ClearWords _value, $Res Function(_$_ClearWords) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearWords implements _ClearWords {
  const _$_ClearWords();

  @override
  String toString() {
    return 'PdfEvent.clearWords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearWords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordEntity wordEntity,
            ValueChanged<String> onFailure, ValueChanged<String> onSuccess)
        addWord,
    required TResult Function() clearWords,
    required TResult Function(int index) removeWord,
  }) {
    return clearWords();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult? Function()? clearWords,
    TResult? Function(int index)? removeWord,
  }) {
    return clearWords?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult Function()? clearWords,
    TResult Function(int index)? removeWord,
    required TResult orElse(),
  }) {
    if (clearWords != null) {
      return clearWords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ClearWords value) clearWords,
    required TResult Function(_RemoveWord value) removeWord,
  }) {
    return clearWords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ClearWords value)? clearWords,
    TResult? Function(_RemoveWord value)? removeWord,
  }) {
    return clearWords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ClearWords value)? clearWords,
    TResult Function(_RemoveWord value)? removeWord,
    required TResult orElse(),
  }) {
    if (clearWords != null) {
      return clearWords(this);
    }
    return orElse();
  }
}

abstract class _ClearWords implements PdfEvent {
  const factory _ClearWords() = _$_ClearWords;
}

/// @nodoc
abstract class _$$_RemoveWordCopyWith<$Res> {
  factory _$$_RemoveWordCopyWith(
          _$_RemoveWord value, $Res Function(_$_RemoveWord) then) =
      __$$_RemoveWordCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_RemoveWordCopyWithImpl<$Res>
    extends _$PdfEventCopyWithImpl<$Res, _$_RemoveWord>
    implements _$$_RemoveWordCopyWith<$Res> {
  __$$_RemoveWordCopyWithImpl(
      _$_RemoveWord _value, $Res Function(_$_RemoveWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_RemoveWord(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveWord implements _RemoveWord {
  const _$_RemoveWord(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PdfEvent.removeWord(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveWord &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveWordCopyWith<_$_RemoveWord> get copyWith =>
      __$$_RemoveWordCopyWithImpl<_$_RemoveWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordEntity wordEntity,
            ValueChanged<String> onFailure, ValueChanged<String> onSuccess)
        addWord,
    required TResult Function() clearWords,
    required TResult Function(int index) removeWord,
  }) {
    return removeWord(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult? Function()? clearWords,
    TResult? Function(int index)? removeWord,
  }) {
    return removeWord?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordEntity wordEntity, ValueChanged<String> onFailure,
            ValueChanged<String> onSuccess)?
        addWord,
    TResult Function()? clearWords,
    TResult Function(int index)? removeWord,
    required TResult orElse(),
  }) {
    if (removeWord != null) {
      return removeWord(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ClearWords value) clearWords,
    required TResult Function(_RemoveWord value) removeWord,
  }) {
    return removeWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ClearWords value)? clearWords,
    TResult? Function(_RemoveWord value)? removeWord,
  }) {
    return removeWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ClearWords value)? clearWords,
    TResult Function(_RemoveWord value)? removeWord,
    required TResult orElse(),
  }) {
    if (removeWord != null) {
      return removeWord(this);
    }
    return orElse();
  }
}

abstract class _RemoveWord implements PdfEvent {
  const factory _RemoveWord(final int index) = _$_RemoveWord;

  int get index;
  @JsonKey(ignore: true)
  _$$_RemoveWordCopyWith<_$_RemoveWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfState {
  List<WordEntity> get words => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PdfStateCopyWith<PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfStateCopyWith<$Res> {
  factory $PdfStateCopyWith(PdfState value, $Res Function(PdfState) then) =
      _$PdfStateCopyWithImpl<$Res, PdfState>;
  @useResult
  $Res call({List<WordEntity> words});
}

/// @nodoc
class _$PdfStateCopyWithImpl<$Res, $Val extends PdfState>
    implements $PdfStateCopyWith<$Res> {
  _$PdfStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PdfStateCopyWith<$Res> implements $PdfStateCopyWith<$Res> {
  factory _$$_PdfStateCopyWith(
          _$_PdfState value, $Res Function(_$_PdfState) then) =
      __$$_PdfStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordEntity> words});
}

/// @nodoc
class __$$_PdfStateCopyWithImpl<$Res>
    extends _$PdfStateCopyWithImpl<$Res, _$_PdfState>
    implements _$$_PdfStateCopyWith<$Res> {
  __$$_PdfStateCopyWithImpl(
      _$_PdfState _value, $Res Function(_$_PdfState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$_PdfState(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordEntity>,
    ));
  }
}

/// @nodoc

class _$_PdfState implements _PdfState {
  const _$_PdfState({final List<WordEntity> words = const []}) : _words = words;

  final List<WordEntity> _words;
  @override
  @JsonKey()
  List<WordEntity> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'PdfState(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PdfState &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PdfStateCopyWith<_$_PdfState> get copyWith =>
      __$$_PdfStateCopyWithImpl<_$_PdfState>(this, _$identity);
}

abstract class _PdfState implements PdfState {
  const factory _PdfState({final List<WordEntity> words}) = _$_PdfState;

  @override
  List<WordEntity> get words;
  @override
  @JsonKey(ignore: true)
  _$$_PdfStateCopyWith<_$_PdfState> get copyWith =>
      throw _privateConstructorUsedError;
}
