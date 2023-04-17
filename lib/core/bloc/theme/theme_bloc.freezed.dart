// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTheme,
    required TResult Function(bool isLight) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTheme,
    TResult? Function(bool isLight)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTheme,
    TResult Function(bool isLight)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTheme value) loadTheme,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTheme value)? loadTheme,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTheme value)? loadTheme,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadThemeCopyWith<$Res> {
  factory _$$_LoadThemeCopyWith(
          _$_LoadTheme value, $Res Function(_$_LoadTheme) then) =
      __$$_LoadThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadThemeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_LoadTheme>
    implements _$$_LoadThemeCopyWith<$Res> {
  __$$_LoadThemeCopyWithImpl(
      _$_LoadTheme _value, $Res Function(_$_LoadTheme) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadTheme implements _LoadTheme {
  const _$_LoadTheme();

  @override
  String toString() {
    return 'ThemeEvent.loadTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTheme,
    required TResult Function(bool isLight) changeTheme,
  }) {
    return loadTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTheme,
    TResult? Function(bool isLight)? changeTheme,
  }) {
    return loadTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTheme,
    TResult Function(bool isLight)? changeTheme,
    required TResult orElse(),
  }) {
    if (loadTheme != null) {
      return loadTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTheme value) loadTheme,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return loadTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTheme value)? loadTheme,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) {
    return loadTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTheme value)? loadTheme,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (loadTheme != null) {
      return loadTheme(this);
    }
    return orElse();
  }
}

abstract class _LoadTheme implements ThemeEvent {
  const factory _LoadTheme() = _$_LoadTheme;
}

/// @nodoc
abstract class _$$_ChangeThemeCopyWith<$Res> {
  factory _$$_ChangeThemeCopyWith(
          _$_ChangeTheme value, $Res Function(_$_ChangeTheme) then) =
      __$$_ChangeThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLight});
}

/// @nodoc
class __$$_ChangeThemeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_ChangeTheme>
    implements _$$_ChangeThemeCopyWith<$Res> {
  __$$_ChangeThemeCopyWithImpl(
      _$_ChangeTheme _value, $Res Function(_$_ChangeTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLight = null,
  }) {
    return _then(_$_ChangeTheme(
      isLight: null == isLight
          ? _value.isLight
          : isLight // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeTheme implements _ChangeTheme {
  const _$_ChangeTheme({required this.isLight});

  @override
  final bool isLight;

  @override
  String toString() {
    return 'ThemeEvent.changeTheme(isLight: $isLight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTheme &&
            (identical(other.isLight, isLight) || other.isLight == isLight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      __$$_ChangeThemeCopyWithImpl<_$_ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTheme,
    required TResult Function(bool isLight) changeTheme,
  }) {
    return changeTheme(isLight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTheme,
    TResult? Function(bool isLight)? changeTheme,
  }) {
    return changeTheme?.call(isLight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTheme,
    TResult Function(bool isLight)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(isLight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTheme value) loadTheme,
    required TResult Function(_ChangeTheme value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTheme value)? loadTheme,
    TResult? Function(_ChangeTheme value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTheme value)? loadTheme,
    TResult Function(_ChangeTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements ThemeEvent {
  const factory _ChangeTheme({required final bool isLight}) = _$_ChangeTheme;

  bool get isLight;
  @JsonKey(ignore: true)
  _$$_ChangeThemeCopyWith<_$_ChangeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  bool get isLight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({bool isLight});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLight = null,
  }) {
    return _then(_value.copyWith(
      isLight: null == isLight
          ? _value.isLight
          : isLight // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_ThemeStateCopyWith(
          _$_ThemeState value, $Res Function(_$_ThemeState) then) =
      __$$_ThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLight});
}

/// @nodoc
class __$$_ThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_ThemeState>
    implements _$$_ThemeStateCopyWith<$Res> {
  __$$_ThemeStateCopyWithImpl(
      _$_ThemeState _value, $Res Function(_$_ThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLight = null,
  }) {
    return _then(_$_ThemeState(
      isLight: null == isLight
          ? _value.isLight
          : isLight // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({this.isLight = false});

  @override
  @JsonKey()
  final bool isLight;

  @override
  String toString() {
    return 'ThemeState(isLight: $isLight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeState &&
            (identical(other.isLight, isLight) || other.isLight == isLight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      __$$_ThemeStateCopyWithImpl<_$_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({final bool isLight}) = _$_ThemeState;

  @override
  bool get isLight;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
