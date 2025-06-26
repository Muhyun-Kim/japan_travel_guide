// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  @SafeStringConverter()
  @JsonKey(name: 'message', defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'code', defaultValue: 0)
  int get code => throw _privateConstructorUsedError;

  /// Serializes this Error to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'message', defaultValue: '')
    String message,
    @SafeIntConverter() @JsonKey(name: 'code', defaultValue: 0) int code,
  });
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'message', defaultValue: '')
    String message,
    @SafeIntConverter() @JsonKey(name: 'code', defaultValue: 0) int code,
  });
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$ErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl({
    @SafeStringConverter()
    @JsonKey(name: 'message', defaultValue: '')
    required this.message,
    @SafeIntConverter()
    @JsonKey(name: 'code', defaultValue: 0)
    required this.code,
  });

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'message', defaultValue: '')
  final String message;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'code', defaultValue: 0)
  final int code;

  @override
  String toString() {
    return 'Error(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(this);
  }
}

abstract class _Error implements Error {
  const factory _Error({
    @SafeStringConverter()
    @JsonKey(name: 'message', defaultValue: '')
    required final String message,
    @SafeIntConverter()
    @JsonKey(name: 'code', defaultValue: 0)
    required final int code,
  }) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'message', defaultValue: '')
  String get message;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'code', defaultValue: 0)
  int get code;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotPepperError _$HotPepperErrorFromJson(Map<String, dynamic> json) {
  return _HotPepperError.fromJson(json);
}

/// @nodoc
mixin _$HotPepperError {
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  String get apiVersion => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'error')
  Error get error => throw _privateConstructorUsedError;

  /// Serializes this HotPepperError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotPepperError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotPepperErrorCopyWith<HotPepperError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotPepperErrorCopyWith<$Res> {
  factory $HotPepperErrorCopyWith(
    HotPepperError value,
    $Res Function(HotPepperError) then,
  ) = _$HotPepperErrorCopyWithImpl<$Res, HotPepperError>;
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    String apiVersion,
    @SafeStringConverter() @JsonKey(name: 'error') Error error,
  });

  $ErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$HotPepperErrorCopyWithImpl<$Res, $Val extends HotPepperError>
    implements $HotPepperErrorCopyWith<$Res> {
  _$HotPepperErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotPepperError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiVersion = null, Object? error = null}) {
    return _then(
      _value.copyWith(
            apiVersion:
                null == apiVersion
                    ? _value.apiVersion
                    : apiVersion // ignore: cast_nullable_to_non_nullable
                        as String,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as Error,
          )
          as $Val,
    );
  }

  /// Create a copy of HotPepperError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res> get error {
    return $ErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotPepperErrorImplCopyWith<$Res>
    implements $HotPepperErrorCopyWith<$Res> {
  factory _$$HotPepperErrorImplCopyWith(
    _$HotPepperErrorImpl value,
    $Res Function(_$HotPepperErrorImpl) then,
  ) = __$$HotPepperErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    String apiVersion,
    @SafeStringConverter() @JsonKey(name: 'error') Error error,
  });

  @override
  $ErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$HotPepperErrorImplCopyWithImpl<$Res>
    extends _$HotPepperErrorCopyWithImpl<$Res, _$HotPepperErrorImpl>
    implements _$$HotPepperErrorImplCopyWith<$Res> {
  __$$HotPepperErrorImplCopyWithImpl(
    _$HotPepperErrorImpl _value,
    $Res Function(_$HotPepperErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotPepperError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiVersion = null, Object? error = null}) {
    return _then(
      _$HotPepperErrorImpl(
        apiVersion:
            null == apiVersion
                ? _value.apiVersion
                : apiVersion // ignore: cast_nullable_to_non_nullable
                    as String,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as Error,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HotPepperErrorImpl implements _HotPepperError {
  const _$HotPepperErrorImpl({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required this.apiVersion,
    @SafeStringConverter() @JsonKey(name: 'error') required this.error,
  });

  factory _$HotPepperErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotPepperErrorImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  final String apiVersion;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'error')
  final Error error;

  @override
  String toString() {
    return 'HotPepperError(apiVersion: $apiVersion, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotPepperErrorImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, apiVersion, error);

  /// Create a copy of HotPepperError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotPepperErrorImplCopyWith<_$HotPepperErrorImpl> get copyWith =>
      __$$HotPepperErrorImplCopyWithImpl<_$HotPepperErrorImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HotPepperErrorImplToJson(this);
  }
}

abstract class _HotPepperError implements HotPepperError {
  const factory _HotPepperError({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required final String apiVersion,
    @SafeStringConverter() @JsonKey(name: 'error') required final Error error,
  }) = _$HotPepperErrorImpl;

  factory _HotPepperError.fromJson(Map<String, dynamic> json) =
      _$HotPepperErrorImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  String get apiVersion;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'error')
  Error get error;

  /// Create a copy of HotPepperError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotPepperErrorImplCopyWith<_$HotPepperErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
