// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleModel> articles) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleModel> articles)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<NewsArticleModel> articles)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsError value) error,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitial value)? initial,
    TResult? Function(NewsError value)? error,
    TResult? Function(NewsLoading value)? loading,
    TResult? Function(NewsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsError value)? error,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewsInitialImplCopyWith<$Res> {
  factory _$$NewsInitialImplCopyWith(
          _$NewsInitialImpl value, $Res Function(_$NewsInitialImpl) then) =
      __$$NewsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsInitialImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsInitialImpl>
    implements _$$NewsInitialImplCopyWith<$Res> {
  __$$NewsInitialImplCopyWithImpl(
      _$NewsInitialImpl _value, $Res Function(_$NewsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsInitialImpl implements NewsInitial {
  const _$NewsInitialImpl();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleModel> articles) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleModel> articles)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<NewsArticleModel> articles)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsError value) error,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitial value)? initial,
    TResult? Function(NewsError value)? error,
    TResult? Function(NewsLoading value)? loading,
    TResult? Function(NewsLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsError value)? error,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewsInitial implements NewsState {
  const factory NewsInitial() = _$NewsInitialImpl;
}

/// @nodoc
abstract class _$$NewsErrorImplCopyWith<$Res> {
  factory _$$NewsErrorImplCopyWith(
          _$NewsErrorImpl value, $Res Function(_$NewsErrorImpl) then) =
      __$$NewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NewsErrorImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsErrorImpl>
    implements _$$NewsErrorImplCopyWith<$Res> {
  __$$NewsErrorImplCopyWithImpl(
      _$NewsErrorImpl _value, $Res Function(_$NewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsErrorImpl implements NewsError {
  const _$NewsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NewsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsErrorImplCopyWith<_$NewsErrorImpl> get copyWith =>
      __$$NewsErrorImplCopyWithImpl<_$NewsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleModel> articles) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleModel> articles)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<NewsArticleModel> articles)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsError value) error,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitial value)? initial,
    TResult? Function(NewsError value)? error,
    TResult? Function(NewsLoading value)? loading,
    TResult? Function(NewsLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsError value)? error,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsError implements NewsState {
  const factory NewsError(final String message) = _$NewsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NewsErrorImplCopyWith<_$NewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsLoadingImplCopyWith<$Res> {
  factory _$$NewsLoadingImplCopyWith(
          _$NewsLoadingImpl value, $Res Function(_$NewsLoadingImpl) then) =
      __$$NewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsLoadingImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadingImpl>
    implements _$$NewsLoadingImplCopyWith<$Res> {
  __$$NewsLoadingImplCopyWithImpl(
      _$NewsLoadingImpl _value, $Res Function(_$NewsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsLoadingImpl implements NewsLoading {
  const _$NewsLoadingImpl();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleModel> articles) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleModel> articles)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<NewsArticleModel> articles)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsError value) error,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitial value)? initial,
    TResult? Function(NewsError value)? error,
    TResult? Function(NewsLoading value)? loading,
    TResult? Function(NewsLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsError value)? error,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsLoading implements NewsState {
  const factory NewsLoading() = _$NewsLoadingImpl;
}

/// @nodoc
abstract class _$$NewsLoadedImplCopyWith<$Res> {
  factory _$$NewsLoadedImplCopyWith(
          _$NewsLoadedImpl value, $Res Function(_$NewsLoadedImpl) then) =
      __$$NewsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsArticleModel> articles});
}

/// @nodoc
class __$$NewsLoadedImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadedImpl>
    implements _$$NewsLoadedImplCopyWith<$Res> {
  __$$NewsLoadedImplCopyWithImpl(
      _$NewsLoadedImpl _value, $Res Function(_$NewsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$NewsLoadedImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticleModel>,
    ));
  }
}

/// @nodoc

class _$NewsLoadedImpl implements NewsLoaded {
  const _$NewsLoadedImpl(final List<NewsArticleModel> articles)
      : _articles = articles;

  final List<NewsArticleModel> _articles;
  @override
  List<NewsArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsState.loaded(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLoadedImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLoadedImplCopyWith<_$NewsLoadedImpl> get copyWith =>
      __$$NewsLoadedImplCopyWithImpl<_$NewsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleModel> articles) loaded,
  }) {
    return loaded(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleModel> articles)? loaded,
  }) {
    return loaded?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<NewsArticleModel> articles)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsError value) error,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitial value)? initial,
    TResult? Function(NewsError value)? error,
    TResult? Function(NewsLoading value)? loading,
    TResult? Function(NewsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsError value)? error,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoaded implements NewsState {
  const factory NewsLoaded(final List<NewsArticleModel> articles) =
      _$NewsLoadedImpl;

  List<NewsArticleModel> get articles;
  @JsonKey(ignore: true)
  _$$NewsLoadedImplCopyWith<_$NewsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
