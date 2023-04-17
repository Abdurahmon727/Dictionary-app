// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meaning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeaningModel {
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<String> get definitions => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeaningModelCopyWith<MeaningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningModelCopyWith<$Res> {
  factory $MeaningModelCopyWith(
          MeaningModel value, $Res Function(MeaningModel) then) =
      _$MeaningModelCopyWithImpl<$Res, MeaningModel>;
  @useResult
  $Res call(
      {String partOfSpeech, List<String> definitions, List<String> synonyms});
}

/// @nodoc
class _$MeaningModelCopyWithImpl<$Res, $Val extends MeaningModel>
    implements $MeaningModelCopyWith<$Res> {
  _$MeaningModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
    Object? synonyms = null,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeaningModelCopyWith<$Res>
    implements $MeaningModelCopyWith<$Res> {
  factory _$$_MeaningModelCopyWith(
          _$_MeaningModel value, $Res Function(_$_MeaningModel) then) =
      __$$_MeaningModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partOfSpeech, List<String> definitions, List<String> synonyms});
}

/// @nodoc
class __$$_MeaningModelCopyWithImpl<$Res>
    extends _$MeaningModelCopyWithImpl<$Res, _$_MeaningModel>
    implements _$$_MeaningModelCopyWith<$Res> {
  __$$_MeaningModelCopyWithImpl(
      _$_MeaningModel _value, $Res Function(_$_MeaningModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
    Object? synonyms = null,
  }) {
    return _then(_$_MeaningModel(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MeaningModel implements _MeaningModel {
  const _$_MeaningModel(
      {required this.partOfSpeech,
      required final List<String> definitions,
      required final List<String> synonyms})
      : _definitions = definitions,
        _synonyms = synonyms;

  @override
  final String partOfSpeech;
  final List<String> _definitions;
  @override
  List<String> get definitions {
    if (_definitions is EqualUnmodifiableListView) return _definitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  final List<String> _synonyms;
  @override
  List<String> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  @override
  String toString() {
    return 'MeaningModel(partOfSpeech: $partOfSpeech, definitions: $definitions, synonyms: $synonyms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeaningModel &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      partOfSpeech,
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(_synonyms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeaningModelCopyWith<_$_MeaningModel> get copyWith =>
      __$$_MeaningModelCopyWithImpl<_$_MeaningModel>(this, _$identity);
}

abstract class _MeaningModel implements MeaningModel {
  const factory _MeaningModel(
      {required final String partOfSpeech,
      required final List<String> definitions,
      required final List<String> synonyms}) = _$_MeaningModel;

  @override
  String get partOfSpeech;
  @override
  List<String> get definitions;
  @override
  List<String> get synonyms;
  @override
  @JsonKey(ignore: true)
  _$$_MeaningModelCopyWith<_$_MeaningModel> get copyWith =>
      throw _privateConstructorUsedError;
}
