// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalDictionaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() changeLanguage,
    required TResult Function() onPagination,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? changeLanguage,
    TResult? Function()? onPagination,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? changeLanguage,
    TResult Function()? onPagination,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_OnPagination value) onPagination,
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_OnPagination value)? onPagination,
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_OnPagination value)? onPagination,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDictionaryEventCopyWith<$Res> {
  factory $LocalDictionaryEventCopyWith(LocalDictionaryEvent value,
          $Res Function(LocalDictionaryEvent) then) =
      _$LocalDictionaryEventCopyWithImpl<$Res, LocalDictionaryEvent>;
}

/// @nodoc
class _$LocalDictionaryEventCopyWithImpl<$Res,
        $Val extends LocalDictionaryEvent>
    implements $LocalDictionaryEventCopyWith<$Res> {
  _$LocalDictionaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$LocalDictionaryEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_Search(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'LocalDictionaryEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() changeLanguage,
    required TResult Function() onPagination,
    required TResult Function() init,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? changeLanguage,
    TResult? Function()? onPagination,
    TResult? Function()? init,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? changeLanguage,
    TResult Function()? onPagination,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_OnPagination value) onPagination,
    required TResult Function(_Init value) init,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_OnPagination value)? onPagination,
    TResult? Function(_Init value)? init,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_OnPagination value)? onPagination,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements LocalDictionaryEvent {
  const factory _Search(final String query) = _$_Search;

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLanguageCopyWith<$Res> {
  factory _$$_ChangeLanguageCopyWith(
          _$_ChangeLanguage value, $Res Function(_$_ChangeLanguage) then) =
      __$$_ChangeLanguageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeLanguageCopyWithImpl<$Res>
    extends _$LocalDictionaryEventCopyWithImpl<$Res, _$_ChangeLanguage>
    implements _$$_ChangeLanguageCopyWith<$Res> {
  __$$_ChangeLanguageCopyWithImpl(
      _$_ChangeLanguage _value, $Res Function(_$_ChangeLanguage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangeLanguage implements _ChangeLanguage {
  const _$_ChangeLanguage();

  @override
  String toString() {
    return 'LocalDictionaryEvent.changeLanguage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeLanguage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() changeLanguage,
    required TResult Function() onPagination,
    required TResult Function() init,
  }) {
    return changeLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? changeLanguage,
    TResult? Function()? onPagination,
    TResult? Function()? init,
  }) {
    return changeLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? changeLanguage,
    TResult Function()? onPagination,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_OnPagination value) onPagination,
    required TResult Function(_Init value) init,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_OnPagination value)? onPagination,
    TResult? Function(_Init value)? init,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_OnPagination value)? onPagination,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements LocalDictionaryEvent {
  const factory _ChangeLanguage() = _$_ChangeLanguage;
}

/// @nodoc
abstract class _$$_OnPaginationCopyWith<$Res> {
  factory _$$_OnPaginationCopyWith(
          _$_OnPagination value, $Res Function(_$_OnPagination) then) =
      __$$_OnPaginationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnPaginationCopyWithImpl<$Res>
    extends _$LocalDictionaryEventCopyWithImpl<$Res, _$_OnPagination>
    implements _$$_OnPaginationCopyWith<$Res> {
  __$$_OnPaginationCopyWithImpl(
      _$_OnPagination _value, $Res Function(_$_OnPagination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnPagination implements _OnPagination {
  const _$_OnPagination();

  @override
  String toString() {
    return 'LocalDictionaryEvent.onPagination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnPagination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() changeLanguage,
    required TResult Function() onPagination,
    required TResult Function() init,
  }) {
    return onPagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? changeLanguage,
    TResult? Function()? onPagination,
    TResult? Function()? init,
  }) {
    return onPagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? changeLanguage,
    TResult Function()? onPagination,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (onPagination != null) {
      return onPagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_OnPagination value) onPagination,
    required TResult Function(_Init value) init,
  }) {
    return onPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_OnPagination value)? onPagination,
    TResult? Function(_Init value)? init,
  }) {
    return onPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_OnPagination value)? onPagination,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (onPagination != null) {
      return onPagination(this);
    }
    return orElse();
  }
}

abstract class _OnPagination implements LocalDictionaryEvent {
  const factory _OnPagination() = _$_OnPagination;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$LocalDictionaryEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'LocalDictionaryEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() changeLanguage,
    required TResult Function() onPagination,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? changeLanguage,
    TResult? Function()? onPagination,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? changeLanguage,
    TResult Function()? onPagination,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_OnPagination value) onPagination,
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_OnPagination value)? onPagination,
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_OnPagination value)? onPagination,
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements LocalDictionaryEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
mixin _$LocalDictionaryState {
  List<LocalWordEntity> get results => throw _privateConstructorUsedError;
  bool get isEngUzb => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalDictionaryStateCopyWith<LocalDictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDictionaryStateCopyWith<$Res> {
  factory $LocalDictionaryStateCopyWith(LocalDictionaryState value,
          $Res Function(LocalDictionaryState) then) =
      _$LocalDictionaryStateCopyWithImpl<$Res, LocalDictionaryState>;
  @useResult
  $Res call(
      {List<LocalWordEntity> results,
      bool isEngUzb,
      String query,
      int currentPage});
}

/// @nodoc
class _$LocalDictionaryStateCopyWithImpl<$Res,
        $Val extends LocalDictionaryState>
    implements $LocalDictionaryStateCopyWith<$Res> {
  _$LocalDictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? isEngUzb = null,
    Object? query = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocalWordEntity>,
      isEngUzb: null == isEngUzb
          ? _value.isEngUzb
          : isEngUzb // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalDictionaryStateCopyWith<$Res>
    implements $LocalDictionaryStateCopyWith<$Res> {
  factory _$$_LocalDictionaryStateCopyWith(_$_LocalDictionaryState value,
          $Res Function(_$_LocalDictionaryState) then) =
      __$$_LocalDictionaryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LocalWordEntity> results,
      bool isEngUzb,
      String query,
      int currentPage});
}

/// @nodoc
class __$$_LocalDictionaryStateCopyWithImpl<$Res>
    extends _$LocalDictionaryStateCopyWithImpl<$Res, _$_LocalDictionaryState>
    implements _$$_LocalDictionaryStateCopyWith<$Res> {
  __$$_LocalDictionaryStateCopyWithImpl(_$_LocalDictionaryState _value,
      $Res Function(_$_LocalDictionaryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? isEngUzb = null,
    Object? query = null,
    Object? currentPage = null,
  }) {
    return _then(_$_LocalDictionaryState(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocalWordEntity>,
      isEngUzb: null == isEngUzb
          ? _value.isEngUzb
          : isEngUzb // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LocalDictionaryState implements _LocalDictionaryState {
  const _$_LocalDictionaryState(
      {final List<LocalWordEntity> results = const [],
      this.isEngUzb = true,
      this.query = '',
      this.currentPage = 0})
      : _results = results;

  final List<LocalWordEntity> _results;
  @override
  @JsonKey()
  List<LocalWordEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final bool isEngUzb;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'LocalDictionaryState(results: $results, isEngUzb: $isEngUzb, query: $query, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDictionaryState &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.isEngUzb, isEngUzb) ||
                other.isEngUzb == isEngUzb) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      isEngUzb,
      query,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDictionaryStateCopyWith<_$_LocalDictionaryState> get copyWith =>
      __$$_LocalDictionaryStateCopyWithImpl<_$_LocalDictionaryState>(
          this, _$identity);
}

abstract class _LocalDictionaryState implements LocalDictionaryState {
  const factory _LocalDictionaryState(
      {final List<LocalWordEntity> results,
      final bool isEngUzb,
      final String query,
      final int currentPage}) = _$_LocalDictionaryState;

  @override
  List<LocalWordEntity> get results;
  @override
  bool get isEngUzb;
  @override
  String get query;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDictionaryStateCopyWith<_$_LocalDictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
