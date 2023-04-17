// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordModel {
  String get word => throw _privateConstructorUsedError;
  String? get phonetic => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  List<MeaningModel> get meanings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordModelCopyWith<WordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordModelCopyWith<$Res> {
  factory $WordModelCopyWith(WordModel value, $Res Function(WordModel) then) =
      _$WordModelCopyWithImpl<$Res, WordModel>;
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      String audio,
      List<MeaningModel> meanings});
}

/// @nodoc
class _$WordModelCopyWithImpl<$Res, $Val extends WordModel>
    implements $WordModelCopyWith<$Res> {
  _$WordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? audio = null,
    Object? meanings = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      meanings: null == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<MeaningModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordModelCopyWith<$Res> implements $WordModelCopyWith<$Res> {
  factory _$$_WordModelCopyWith(
          _$_WordModel value, $Res Function(_$_WordModel) then) =
      __$$_WordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      String audio,
      List<MeaningModel> meanings});
}

/// @nodoc
class __$$_WordModelCopyWithImpl<$Res>
    extends _$WordModelCopyWithImpl<$Res, _$_WordModel>
    implements _$$_WordModelCopyWith<$Res> {
  __$$_WordModelCopyWithImpl(
      _$_WordModel _value, $Res Function(_$_WordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? audio = null,
    Object? meanings = null,
  }) {
    return _then(_$_WordModel(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      meanings: null == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<MeaningModel>,
    ));
  }
}

/// @nodoc

class _$_WordModel implements _WordModel {
  const _$_WordModel(
      {required this.word,
      required this.phonetic,
      required this.audio,
      final List<MeaningModel> meanings = const []})
      : _meanings = meanings;

  @override
  final String word;
  @override
  final String? phonetic;
  @override
  final String audio;
  final List<MeaningModel> _meanings;
  @override
  @JsonKey()
  List<MeaningModel> get meanings {
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  @override
  String toString() {
    return 'WordModel(word: $word, phonetic: $phonetic, audio: $audio, meanings: $meanings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordModel &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, phonetic, audio,
      const DeepCollectionEquality().hash(_meanings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordModelCopyWith<_$_WordModel> get copyWith =>
      __$$_WordModelCopyWithImpl<_$_WordModel>(this, _$identity);
}

abstract class _WordModel implements WordModel {
  const factory _WordModel(
      {required final String word,
      required final String? phonetic,
      required final String audio,
      final List<MeaningModel> meanings}) = _$_WordModel;

  @override
  String get word;
  @override
  String? get phonetic;
  @override
  String get audio;
  @override
  List<MeaningModel> get meanings;
  @override
  @JsonKey(ignore: true)
  _$$_WordModelCopyWith<_$_WordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
