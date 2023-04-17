// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_pop_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowPopUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showWarning,
    required TResult Function(String text) showSuccess,
    required TResult Function(String text) showFailure,
    required TResult Function() hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? showWarning,
    TResult? Function(String text)? showSuccess,
    TResult? Function(String text)? showFailure,
    TResult? Function()? hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showWarning,
    TResult Function(String text)? showSuccess,
    TResult Function(String text)? showFailure,
    TResult Function()? hide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowWarning value) showWarning,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowFailure value) showFailure,
    required TResult Function(_Hide value) hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowWarning value)? showWarning,
    TResult? Function(_ShowSuccess value)? showSuccess,
    TResult? Function(_ShowFailure value)? showFailure,
    TResult? Function(_Hide value)? hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowWarning value)? showWarning,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowFailure value)? showFailure,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPopUpEventCopyWith<$Res> {
  factory $ShowPopUpEventCopyWith(
          ShowPopUpEvent value, $Res Function(ShowPopUpEvent) then) =
      _$ShowPopUpEventCopyWithImpl<$Res, ShowPopUpEvent>;
}

/// @nodoc
class _$ShowPopUpEventCopyWithImpl<$Res, $Val extends ShowPopUpEvent>
    implements $ShowPopUpEventCopyWith<$Res> {
  _$ShowPopUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShowWarningCopyWith<$Res> {
  factory _$$_ShowWarningCopyWith(
          _$_ShowWarning value, $Res Function(_$_ShowWarning) then) =
      __$$_ShowWarningCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_ShowWarningCopyWithImpl<$Res>
    extends _$ShowPopUpEventCopyWithImpl<$Res, _$_ShowWarning>
    implements _$$_ShowWarningCopyWith<$Res> {
  __$$_ShowWarningCopyWithImpl(
      _$_ShowWarning _value, $Res Function(_$_ShowWarning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_ShowWarning(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowWarning implements _ShowWarning {
  _$_ShowWarning({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ShowPopUpEvent.showWarning(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowWarning &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowWarningCopyWith<_$_ShowWarning> get copyWith =>
      __$$_ShowWarningCopyWithImpl<_$_ShowWarning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showWarning,
    required TResult Function(String text) showSuccess,
    required TResult Function(String text) showFailure,
    required TResult Function() hide,
  }) {
    return showWarning(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? showWarning,
    TResult? Function(String text)? showSuccess,
    TResult? Function(String text)? showFailure,
    TResult? Function()? hide,
  }) {
    return showWarning?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showWarning,
    TResult Function(String text)? showSuccess,
    TResult Function(String text)? showFailure,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (showWarning != null) {
      return showWarning(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowWarning value) showWarning,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowFailure value) showFailure,
    required TResult Function(_Hide value) hide,
  }) {
    return showWarning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowWarning value)? showWarning,
    TResult? Function(_ShowSuccess value)? showSuccess,
    TResult? Function(_ShowFailure value)? showFailure,
    TResult? Function(_Hide value)? hide,
  }) {
    return showWarning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowWarning value)? showWarning,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowFailure value)? showFailure,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) {
    if (showWarning != null) {
      return showWarning(this);
    }
    return orElse();
  }
}

abstract class _ShowWarning implements ShowPopUpEvent {
  factory _ShowWarning({required final String text}) = _$_ShowWarning;

  String get text;
  @JsonKey(ignore: true)
  _$$_ShowWarningCopyWith<_$_ShowWarning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowSuccessCopyWith<$Res> {
  factory _$$_ShowSuccessCopyWith(
          _$_ShowSuccess value, $Res Function(_$_ShowSuccess) then) =
      __$$_ShowSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_ShowSuccessCopyWithImpl<$Res>
    extends _$ShowPopUpEventCopyWithImpl<$Res, _$_ShowSuccess>
    implements _$$_ShowSuccessCopyWith<$Res> {
  __$$_ShowSuccessCopyWithImpl(
      _$_ShowSuccess _value, $Res Function(_$_ShowSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_ShowSuccess(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowSuccess implements _ShowSuccess {
  _$_ShowSuccess({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ShowPopUpEvent.showSuccess(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowSuccess &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowSuccessCopyWith<_$_ShowSuccess> get copyWith =>
      __$$_ShowSuccessCopyWithImpl<_$_ShowSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showWarning,
    required TResult Function(String text) showSuccess,
    required TResult Function(String text) showFailure,
    required TResult Function() hide,
  }) {
    return showSuccess(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? showWarning,
    TResult? Function(String text)? showSuccess,
    TResult? Function(String text)? showFailure,
    TResult? Function()? hide,
  }) {
    return showSuccess?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showWarning,
    TResult Function(String text)? showSuccess,
    TResult Function(String text)? showFailure,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowWarning value) showWarning,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowFailure value) showFailure,
    required TResult Function(_Hide value) hide,
  }) {
    return showSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowWarning value)? showWarning,
    TResult? Function(_ShowSuccess value)? showSuccess,
    TResult? Function(_ShowFailure value)? showFailure,
    TResult? Function(_Hide value)? hide,
  }) {
    return showSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowWarning value)? showWarning,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowFailure value)? showFailure,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccess implements ShowPopUpEvent {
  factory _ShowSuccess({required final String text}) = _$_ShowSuccess;

  String get text;
  @JsonKey(ignore: true)
  _$$_ShowSuccessCopyWith<_$_ShowSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowFailureCopyWith<$Res> {
  factory _$$_ShowFailureCopyWith(
          _$_ShowFailure value, $Res Function(_$_ShowFailure) then) =
      __$$_ShowFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_ShowFailureCopyWithImpl<$Res>
    extends _$ShowPopUpEventCopyWithImpl<$Res, _$_ShowFailure>
    implements _$$_ShowFailureCopyWith<$Res> {
  __$$_ShowFailureCopyWithImpl(
      _$_ShowFailure _value, $Res Function(_$_ShowFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_ShowFailure(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowFailure implements _ShowFailure {
  _$_ShowFailure({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ShowPopUpEvent.showFailure(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowFailure &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowFailureCopyWith<_$_ShowFailure> get copyWith =>
      __$$_ShowFailureCopyWithImpl<_$_ShowFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showWarning,
    required TResult Function(String text) showSuccess,
    required TResult Function(String text) showFailure,
    required TResult Function() hide,
  }) {
    return showFailure(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? showWarning,
    TResult? Function(String text)? showSuccess,
    TResult? Function(String text)? showFailure,
    TResult? Function()? hide,
  }) {
    return showFailure?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showWarning,
    TResult Function(String text)? showSuccess,
    TResult Function(String text)? showFailure,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (showFailure != null) {
      return showFailure(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowWarning value) showWarning,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowFailure value) showFailure,
    required TResult Function(_Hide value) hide,
  }) {
    return showFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowWarning value)? showWarning,
    TResult? Function(_ShowSuccess value)? showSuccess,
    TResult? Function(_ShowFailure value)? showFailure,
    TResult? Function(_Hide value)? hide,
  }) {
    return showFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowWarning value)? showWarning,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowFailure value)? showFailure,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) {
    if (showFailure != null) {
      return showFailure(this);
    }
    return orElse();
  }
}

abstract class _ShowFailure implements ShowPopUpEvent {
  factory _ShowFailure({required final String text}) = _$_ShowFailure;

  String get text;
  @JsonKey(ignore: true)
  _$$_ShowFailureCopyWith<_$_ShowFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HideCopyWith<$Res> {
  factory _$$_HideCopyWith(_$_Hide value, $Res Function(_$_Hide) then) =
      __$$_HideCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HideCopyWithImpl<$Res>
    extends _$ShowPopUpEventCopyWithImpl<$Res, _$_Hide>
    implements _$$_HideCopyWith<$Res> {
  __$$_HideCopyWithImpl(_$_Hide _value, $Res Function(_$_Hide) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Hide implements _Hide {
  _$_Hide();

  @override
  String toString() {
    return 'ShowPopUpEvent.hide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Hide);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showWarning,
    required TResult Function(String text) showSuccess,
    required TResult Function(String text) showFailure,
    required TResult Function() hide,
  }) {
    return hide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? showWarning,
    TResult? Function(String text)? showSuccess,
    TResult? Function(String text)? showFailure,
    TResult? Function()? hide,
  }) {
    return hide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showWarning,
    TResult Function(String text)? showSuccess,
    TResult Function(String text)? showFailure,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowWarning value) showWarning,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowFailure value) showFailure,
    required TResult Function(_Hide value) hide,
  }) {
    return hide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowWarning value)? showWarning,
    TResult? Function(_ShowSuccess value)? showSuccess,
    TResult? Function(_ShowFailure value)? showFailure,
    TResult? Function(_Hide value)? hide,
  }) {
    return hide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowWarning value)? showWarning,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowFailure value)? showFailure,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _Hide implements ShowPopUpEvent {
  factory _Hide() = _$_Hide;
}

/// @nodoc
mixin _$ShowPopUpState {
  String get errorText => throw _privateConstructorUsedError;
  String get warningText => throw _privateConstructorUsedError;
  String get successText => throw _privateConstructorUsedError;
  bool get showPopUp => throw _privateConstructorUsedError;
  PopUpType get popUpType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowPopUpStateCopyWith<ShowPopUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPopUpStateCopyWith<$Res> {
  factory $ShowPopUpStateCopyWith(
          ShowPopUpState value, $Res Function(ShowPopUpState) then) =
      _$ShowPopUpStateCopyWithImpl<$Res, ShowPopUpState>;
  @useResult
  $Res call(
      {String errorText,
      String warningText,
      String successText,
      bool showPopUp,
      PopUpType popUpType});
}

/// @nodoc
class _$ShowPopUpStateCopyWithImpl<$Res, $Val extends ShowPopUpState>
    implements $ShowPopUpStateCopyWith<$Res> {
  _$ShowPopUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
    Object? warningText = null,
    Object? successText = null,
    Object? showPopUp = null,
    Object? popUpType = null,
  }) {
    return _then(_value.copyWith(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      warningText: null == warningText
          ? _value.warningText
          : warningText // ignore: cast_nullable_to_non_nullable
              as String,
      successText: null == successText
          ? _value.successText
          : successText // ignore: cast_nullable_to_non_nullable
              as String,
      showPopUp: null == showPopUp
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      popUpType: null == popUpType
          ? _value.popUpType
          : popUpType // ignore: cast_nullable_to_non_nullable
              as PopUpType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowPopUpStateCopyWith<$Res>
    implements $ShowPopUpStateCopyWith<$Res> {
  factory _$$_ShowPopUpStateCopyWith(
          _$_ShowPopUpState value, $Res Function(_$_ShowPopUpState) then) =
      __$$_ShowPopUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorText,
      String warningText,
      String successText,
      bool showPopUp,
      PopUpType popUpType});
}

/// @nodoc
class __$$_ShowPopUpStateCopyWithImpl<$Res>
    extends _$ShowPopUpStateCopyWithImpl<$Res, _$_ShowPopUpState>
    implements _$$_ShowPopUpStateCopyWith<$Res> {
  __$$_ShowPopUpStateCopyWithImpl(
      _$_ShowPopUpState _value, $Res Function(_$_ShowPopUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
    Object? warningText = null,
    Object? successText = null,
    Object? showPopUp = null,
    Object? popUpType = null,
  }) {
    return _then(_$_ShowPopUpState(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      warningText: null == warningText
          ? _value.warningText
          : warningText // ignore: cast_nullable_to_non_nullable
              as String,
      successText: null == successText
          ? _value.successText
          : successText // ignore: cast_nullable_to_non_nullable
              as String,
      showPopUp: null == showPopUp
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      popUpType: null == popUpType
          ? _value.popUpType
          : popUpType // ignore: cast_nullable_to_non_nullable
              as PopUpType,
    ));
  }
}

/// @nodoc

class _$_ShowPopUpState implements _ShowPopUpState {
  _$_ShowPopUpState(
      {this.errorText = '',
      this.warningText = '',
      this.successText = '',
      this.showPopUp = false,
      this.popUpType = PopUpType.error});

  @override
  @JsonKey()
  final String errorText;
  @override
  @JsonKey()
  final String warningText;
  @override
  @JsonKey()
  final String successText;
  @override
  @JsonKey()
  final bool showPopUp;
  @override
  @JsonKey()
  final PopUpType popUpType;

  @override
  String toString() {
    return 'ShowPopUpState(errorText: $errorText, warningText: $warningText, successText: $successText, showPopUp: $showPopUp, popUpType: $popUpType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowPopUpState &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.warningText, warningText) ||
                other.warningText == warningText) &&
            (identical(other.successText, successText) ||
                other.successText == successText) &&
            (identical(other.showPopUp, showPopUp) ||
                other.showPopUp == showPopUp) &&
            (identical(other.popUpType, popUpType) ||
                other.popUpType == popUpType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorText, warningText, successText, showPopUp, popUpType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowPopUpStateCopyWith<_$_ShowPopUpState> get copyWith =>
      __$$_ShowPopUpStateCopyWithImpl<_$_ShowPopUpState>(this, _$identity);
}

abstract class _ShowPopUpState implements ShowPopUpState {
  factory _ShowPopUpState(
      {final String errorText,
      final String warningText,
      final String successText,
      final bool showPopUp,
      final PopUpType popUpType}) = _$_ShowPopUpState;

  @override
  String get errorText;
  @override
  String get warningText;
  @override
  String get successText;
  @override
  bool get showPopUp;
  @override
  PopUpType get popUpType;
  @override
  @JsonKey(ignore: true)
  _$$_ShowPopUpStateCopyWith<_$_ShowPopUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
