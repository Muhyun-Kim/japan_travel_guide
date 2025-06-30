// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApiResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(HotPepperError error) apiError,
    required TResult Function(int statusCode, String message) httpError,
    required TResult Function(String message) networkError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(HotPepperError error)? apiError,
    TResult? Function(int statusCode, String message)? httpError,
    TResult? Function(String message)? networkError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(HotPepperError error)? apiError,
    TResult Function(int statusCode, String message)? httpError,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess<T> value) success,
    required TResult Function(ApiError<T> value) apiError,
    required TResult Function(HttpError<T> value) httpError,
    required TResult Function(NetworkError<T> value) networkError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess<T> value)? success,
    TResult? Function(ApiError<T> value)? apiError,
    TResult? Function(HttpError<T> value)? httpError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess<T> value)? success,
    TResult Function(ApiError<T> value)? apiError,
    TResult Function(HttpError<T> value)? httpError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
    ApiResult<T> value,
    $Res Function(ApiResult<T>) then,
  ) = _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApiSuccessImplCopyWith<T, $Res> {
  factory _$$ApiSuccessImplCopyWith(
    _$ApiSuccessImpl<T> value,
    $Res Function(_$ApiSuccessImpl<T>) then,
  ) = __$$ApiSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiSuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiSuccessImpl<T>>
    implements _$$ApiSuccessImplCopyWith<T, $Res> {
  __$$ApiSuccessImplCopyWithImpl(
    _$ApiSuccessImpl<T> _value,
    $Res Function(_$ApiSuccessImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed}) {
    return _then(
      _$ApiSuccessImpl<T>(
        freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as T,
      ),
    );
  }
}

/// @nodoc

class _$ApiSuccessImpl<T> implements ApiSuccess<T> {
  const _$ApiSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResult<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSuccessImplCopyWith<T, _$ApiSuccessImpl<T>> get copyWith =>
      __$$ApiSuccessImplCopyWithImpl<T, _$ApiSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(HotPepperError error) apiError,
    required TResult Function(int statusCode, String message) httpError,
    required TResult Function(String message) networkError,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(HotPepperError error)? apiError,
    TResult? Function(int statusCode, String message)? httpError,
    TResult? Function(String message)? networkError,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(HotPepperError error)? apiError,
    TResult Function(int statusCode, String message)? httpError,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess<T> value) success,
    required TResult Function(ApiError<T> value) apiError,
    required TResult Function(HttpError<T> value) httpError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess<T> value)? success,
    TResult? Function(ApiError<T> value)? apiError,
    TResult? Function(HttpError<T> value)? httpError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess<T> value)? success,
    TResult Function(ApiError<T> value)? apiError,
    TResult Function(HttpError<T> value)? httpError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ApiSuccess<T> implements ApiResult<T> {
  const factory ApiSuccess(final T data) = _$ApiSuccessImpl<T>;

  T get data;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiSuccessImplCopyWith<T, _$ApiSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<T, $Res> {
  factory _$$ApiErrorImplCopyWith(
    _$ApiErrorImpl<T> value,
    $Res Function(_$ApiErrorImpl<T>) then,
  ) = __$$ApiErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({HotPepperError error});

  $HotPepperErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiErrorImpl<T>>
    implements _$$ApiErrorImplCopyWith<T, $Res> {
  __$$ApiErrorImplCopyWithImpl(
    _$ApiErrorImpl<T> _value,
    $Res Function(_$ApiErrorImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$ApiErrorImpl<T>(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as HotPepperError,
      ),
    );
  }

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotPepperErrorCopyWith<$Res> get error {
    return $HotPepperErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ApiErrorImpl<T> implements ApiError<T> {
  const _$ApiErrorImpl(this.error);

  @override
  final HotPepperError error;

  @override
  String toString() {
    return 'ApiResult<$T>.apiError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<T, _$ApiErrorImpl<T>> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<T, _$ApiErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(HotPepperError error) apiError,
    required TResult Function(int statusCode, String message) httpError,
    required TResult Function(String message) networkError,
  }) {
    return apiError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(HotPepperError error)? apiError,
    TResult? Function(int statusCode, String message)? httpError,
    TResult? Function(String message)? networkError,
  }) {
    return apiError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(HotPepperError error)? apiError,
    TResult Function(int statusCode, String message)? httpError,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess<T> value) success,
    required TResult Function(ApiError<T> value) apiError,
    required TResult Function(HttpError<T> value) httpError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess<T> value)? success,
    TResult? Function(ApiError<T> value)? apiError,
    TResult? Function(HttpError<T> value)? httpError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess<T> value)? success,
    TResult Function(ApiError<T> value)? apiError,
    TResult Function(HttpError<T> value)? httpError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError<T> implements ApiResult<T> {
  const factory ApiError(final HotPepperError error) = _$ApiErrorImpl<T>;

  HotPepperError get error;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorImplCopyWith<T, _$ApiErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpErrorImplCopyWith<T, $Res> {
  factory _$$HttpErrorImplCopyWith(
    _$HttpErrorImpl<T> value,
    $Res Function(_$HttpErrorImpl<T>) then,
  ) = __$$HttpErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$HttpErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$HttpErrorImpl<T>>
    implements _$$HttpErrorImplCopyWith<T, $Res> {
  __$$HttpErrorImplCopyWithImpl(
    _$HttpErrorImpl<T> _value,
    $Res Function(_$HttpErrorImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statusCode = null, Object? message = null}) {
    return _then(
      _$HttpErrorImpl<T>(
        null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                as int,
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$HttpErrorImpl<T> implements HttpError<T> {
  const _$HttpErrorImpl(this.statusCode, this.message);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiResult<$T>.httpError(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpErrorImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpErrorImplCopyWith<T, _$HttpErrorImpl<T>> get copyWith =>
      __$$HttpErrorImplCopyWithImpl<T, _$HttpErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(HotPepperError error) apiError,
    required TResult Function(int statusCode, String message) httpError,
    required TResult Function(String message) networkError,
  }) {
    return httpError(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(HotPepperError error)? apiError,
    TResult? Function(int statusCode, String message)? httpError,
    TResult? Function(String message)? networkError,
  }) {
    return httpError?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(HotPepperError error)? apiError,
    TResult Function(int statusCode, String message)? httpError,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess<T> value) success,
    required TResult Function(ApiError<T> value) apiError,
    required TResult Function(HttpError<T> value) httpError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return httpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess<T> value)? success,
    TResult? Function(ApiError<T> value)? apiError,
    TResult? Function(HttpError<T> value)? httpError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return httpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess<T> value)? success,
    TResult Function(ApiError<T> value)? apiError,
    TResult Function(HttpError<T> value)? httpError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(this);
    }
    return orElse();
  }
}

abstract class HttpError<T> implements ApiResult<T> {
  const factory HttpError(final int statusCode, final String message) =
      _$HttpErrorImpl<T>;

  int get statusCode;
  String get message;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpErrorImplCopyWith<T, _$HttpErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<T, $Res> {
  factory _$$NetworkErrorImplCopyWith(
    _$NetworkErrorImpl<T> value,
    $Res Function(_$NetworkErrorImpl<T>) then,
  ) = __$$NetworkErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$NetworkErrorImpl<T>>
    implements _$$NetworkErrorImplCopyWith<T, $Res> {
  __$$NetworkErrorImplCopyWithImpl(
    _$NetworkErrorImpl<T> _value,
    $Res Function(_$NetworkErrorImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NetworkErrorImpl<T>(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NetworkErrorImpl<T> implements NetworkError<T> {
  const _$NetworkErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiResult<$T>.networkError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<T, _$NetworkErrorImpl<T>>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(HotPepperError error) apiError,
    required TResult Function(int statusCode, String message) httpError,
    required TResult Function(String message) networkError,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(HotPepperError error)? apiError,
    TResult? Function(int statusCode, String message)? httpError,
    TResult? Function(String message)? networkError,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(HotPepperError error)? apiError,
    TResult Function(int statusCode, String message)? httpError,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccess<T> value) success,
    required TResult Function(ApiError<T> value) apiError,
    required TResult Function(HttpError<T> value) httpError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiSuccess<T> value)? success,
    TResult? Function(ApiError<T> value)? apiError,
    TResult? Function(HttpError<T> value)? httpError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccess<T> value)? success,
    TResult Function(ApiError<T> value)? apiError,
    TResult Function(HttpError<T> value)? httpError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError<T> implements ApiResult<T> {
  const factory NetworkError(final String message) = _$NetworkErrorImpl<T>;

  String get message;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
