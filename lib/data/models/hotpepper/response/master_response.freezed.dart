// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MasterBaseResponse<T> {
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  String get apiVersion => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'results_available', defaultValue: 0)
  int get resultsAvailable => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'results_returned', defaultValue: 0)
  int get resultsReturned => throw _privateConstructorUsedError;
  @SafeIntConverter()
  @JsonKey(name: 'results_start', defaultValue: 0)
  int get resultsStart => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  /// Create a copy of MasterBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterBaseResponseCopyWith<T, MasterBaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterBaseResponseCopyWith<T, $Res> {
  factory $MasterBaseResponseCopyWith(
    MasterBaseResponse<T> value,
    $Res Function(MasterBaseResponse<T>) then,
  ) = _$MasterBaseResponseCopyWithImpl<T, $Res, MasterBaseResponse<T>>;
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    int resultsStart,
    T data,
  });
}

/// @nodoc
class _$MasterBaseResponseCopyWithImpl<
  T,
  $Res,
  $Val extends MasterBaseResponse<T>
>
    implements $MasterBaseResponseCopyWith<T, $Res> {
  _$MasterBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? data = freezed,
  }) {
    return _then(
      _value.copyWith(
            apiVersion:
                null == apiVersion
                    ? _value.apiVersion
                    : apiVersion // ignore: cast_nullable_to_non_nullable
                        as String,
            resultsAvailable:
                null == resultsAvailable
                    ? _value.resultsAvailable
                    : resultsAvailable // ignore: cast_nullable_to_non_nullable
                        as int,
            resultsReturned:
                null == resultsReturned
                    ? _value.resultsReturned
                    : resultsReturned // ignore: cast_nullable_to_non_nullable
                        as int,
            resultsStart:
                null == resultsStart
                    ? _value.resultsStart
                    : resultsStart // ignore: cast_nullable_to_non_nullable
                        as int,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as T,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MasterBaseResponseImplCopyWith<T, $Res>
    implements $MasterBaseResponseCopyWith<T, $Res> {
  factory _$$MasterBaseResponseImplCopyWith(
    _$MasterBaseResponseImpl<T> value,
    $Res Function(_$MasterBaseResponseImpl<T>) then,
  ) = __$$MasterBaseResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    int resultsStart,
    T data,
  });
}

/// @nodoc
class __$$MasterBaseResponseImplCopyWithImpl<T, $Res>
    extends
        _$MasterBaseResponseCopyWithImpl<T, $Res, _$MasterBaseResponseImpl<T>>
    implements _$$MasterBaseResponseImplCopyWith<T, $Res> {
  __$$MasterBaseResponseImplCopyWithImpl(
    _$MasterBaseResponseImpl<T> _value,
    $Res Function(_$MasterBaseResponseImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? data = freezed,
  }) {
    return _then(
      _$MasterBaseResponseImpl<T>(
        apiVersion:
            null == apiVersion
                ? _value.apiVersion
                : apiVersion // ignore: cast_nullable_to_non_nullable
                    as String,
        resultsAvailable:
            null == resultsAvailable
                ? _value.resultsAvailable
                : resultsAvailable // ignore: cast_nullable_to_non_nullable
                    as int,
        resultsReturned:
            null == resultsReturned
                ? _value.resultsReturned
                : resultsReturned // ignore: cast_nullable_to_non_nullable
                    as int,
        resultsStart:
            null == resultsStart
                ? _value.resultsStart
                : resultsStart // ignore: cast_nullable_to_non_nullable
                    as int,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as T,
      ),
    );
  }
}

/// @nodoc

class _$MasterBaseResponseImpl<T> implements _MasterBaseResponse<T> {
  const _$MasterBaseResponseImpl({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required this.apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    required this.resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    required this.resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    required this.resultsStart,
    required this.data,
  });

  @override
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  final String apiVersion;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_available', defaultValue: 0)
  final int resultsAvailable;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_returned', defaultValue: 0)
  final int resultsReturned;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_start', defaultValue: 0)
  final int resultsStart;
  @override
  final T data;

  @override
  String toString() {
    return 'MasterBaseResponse<$T>(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterBaseResponseImpl<T> &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    apiVersion,
    resultsAvailable,
    resultsReturned,
    resultsStart,
    const DeepCollectionEquality().hash(data),
  );

  /// Create a copy of MasterBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterBaseResponseImplCopyWith<T, _$MasterBaseResponseImpl<T>>
  get copyWith =>
      __$$MasterBaseResponseImplCopyWithImpl<T, _$MasterBaseResponseImpl<T>>(
        this,
        _$identity,
      );
}

abstract class _MasterBaseResponse<T> implements MasterBaseResponse<T> {
  const factory _MasterBaseResponse({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required final String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    required final int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    required final int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    required final int resultsStart,
    required final T data,
  }) = _$MasterBaseResponseImpl<T>;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'api_version', defaultValue: 'unknown')
  String get apiVersion;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_available', defaultValue: 0)
  int get resultsAvailable;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_returned', defaultValue: 0)
  int get resultsReturned;
  @override
  @SafeIntConverter()
  @JsonKey(name: 'results_start', defaultValue: 0)
  int get resultsStart;
  @override
  T get data;

  /// Create a copy of MasterBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterBaseResponseImplCopyWith<T, _$MasterBaseResponseImpl<T>>
  get copyWith => throw _privateConstructorUsedError;
}

CodeName _$CodeNameFromJson(Map<String, dynamic> json) {
  return _CodeName.fromJson(json);
}

/// @nodoc
mixin _$CodeName {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CodeName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeNameCopyWith<CodeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeNameCopyWith<$Res> {
  factory $CodeNameCopyWith(CodeName value, $Res Function(CodeName) then) =
      _$CodeNameCopyWithImpl<$Res, CodeName>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
  });
}

/// @nodoc
class _$CodeNameCopyWithImpl<$Res, $Val extends CodeName>
    implements $CodeNameCopyWith<$Res> {
  _$CodeNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CodeNameImplCopyWith<$Res>
    implements $CodeNameCopyWith<$Res> {
  factory _$$CodeNameImplCopyWith(
    _$CodeNameImpl value,
    $Res Function(_$CodeNameImpl) then,
  ) = __$$CodeNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
  });
}

/// @nodoc
class __$$CodeNameImplCopyWithImpl<$Res>
    extends _$CodeNameCopyWithImpl<$Res, _$CodeNameImpl>
    implements _$$CodeNameImplCopyWith<$Res> {
  __$$CodeNameImplCopyWithImpl(
    _$CodeNameImpl _value,
    $Res Function(_$CodeNameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CodeName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$CodeNameImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeNameImpl implements _CodeName {
  const _$CodeNameImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
  });

  factory _$CodeNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeNameImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'CodeName(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeNameImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of CodeName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeNameImplCopyWith<_$CodeNameImpl> get copyWith =>
      __$$CodeNameImplCopyWithImpl<_$CodeNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeNameImplToJson(this);
  }
}

abstract class _CodeName implements CodeName {
  const factory _CodeName({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
  }) = _$CodeNameImpl;

  factory _CodeName.fromJson(Map<String, dynamic> json) =
      _$CodeNameImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;

  /// Create a copy of CodeName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeNameImplCopyWith<_$CodeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceArea _$ServiceAreaFromJson(Map<String, dynamic> json) {
  return _ServiceArea.fromJson(json);
}

/// @nodoc
mixin _$ServiceArea {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea => throw _privateConstructorUsedError;

  /// Serializes this ServiceArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceAreaCopyWith<ServiceArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAreaCopyWith<$Res> {
  factory $ServiceAreaCopyWith(
    ServiceArea value,
    $Res Function(ServiceArea) then,
  ) = _$ServiceAreaCopyWithImpl<$Res, ServiceArea>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class _$ServiceAreaCopyWithImpl<$Res, $Val extends ServiceArea>
    implements $ServiceAreaCopyWith<$Res> {
  _$ServiceAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            largeServiceArea:
                null == largeServiceArea
                    ? _value.largeServiceArea
                    : largeServiceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
          )
          as $Val,
    );
  }

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get largeServiceArea {
    return $CodeNameCopyWith<$Res>(_value.largeServiceArea, (value) {
      return _then(_value.copyWith(largeServiceArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceAreaImplCopyWith<$Res>
    implements $ServiceAreaCopyWith<$Res> {
  factory _$$ServiceAreaImplCopyWith(
    _$ServiceAreaImpl value,
    $Res Function(_$ServiceAreaImpl) then,
  ) = __$$ServiceAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  @override
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class __$$ServiceAreaImplCopyWithImpl<$Res>
    extends _$ServiceAreaCopyWithImpl<$Res, _$ServiceAreaImpl>
    implements _$$ServiceAreaImplCopyWith<$Res> {
  __$$ServiceAreaImplCopyWithImpl(
    _$ServiceAreaImpl _value,
    $Res Function(_$ServiceAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _$ServiceAreaImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        largeServiceArea:
            null == largeServiceArea
                ? _value.largeServiceArea
                : largeServiceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceAreaImpl implements _ServiceArea {
  const _$ServiceAreaImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @JsonKey(name: 'large_service_area') required this.largeServiceArea,
  });

  factory _$ServiceAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceAreaImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'large_service_area')
  final CodeName largeServiceArea;

  @override
  String toString() {
    return 'ServiceArea(code: $code, name: $name, largeServiceArea: $largeServiceArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.largeServiceArea, largeServiceArea) ||
                other.largeServiceArea == largeServiceArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, largeServiceArea);

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceAreaImplCopyWith<_$ServiceAreaImpl> get copyWith =>
      __$$ServiceAreaImplCopyWithImpl<_$ServiceAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceAreaImplToJson(this);
  }
}

abstract class _ServiceArea implements ServiceArea {
  const factory _ServiceArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @JsonKey(name: 'large_service_area')
    required final CodeName largeServiceArea,
  }) = _$ServiceAreaImpl;

  factory _ServiceArea.fromJson(Map<String, dynamic> json) =
      _$ServiceAreaImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea;

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceAreaImplCopyWith<_$ServiceAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LargeArea _$LargeAreaFromJson(Map<String, dynamic> json) {
  return _LargeArea.fromJson(json);
}

/// @nodoc
mixin _$LargeArea {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_area')
  CodeName get serviceArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea => throw _privateConstructorUsedError;

  /// Serializes this LargeArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LargeAreaCopyWith<LargeArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeAreaCopyWith<$Res> {
  factory $LargeAreaCopyWith(LargeArea value, $Res Function(LargeArea) then) =
      _$LargeAreaCopyWithImpl<$Res, LargeArea>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'service_area') CodeName serviceArea,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  $CodeNameCopyWith<$Res> get serviceArea;
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class _$LargeAreaCopyWithImpl<$Res, $Val extends LargeArea>
    implements $LargeAreaCopyWith<$Res> {
  _$LargeAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? serviceArea = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
            largeServiceArea:
                null == largeServiceArea
                    ? _value.largeServiceArea
                    : largeServiceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
          )
          as $Val,
    );
  }

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get serviceArea {
    return $CodeNameCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get largeServiceArea {
    return $CodeNameCopyWith<$Res>(_value.largeServiceArea, (value) {
      return _then(_value.copyWith(largeServiceArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LargeAreaImplCopyWith<$Res>
    implements $LargeAreaCopyWith<$Res> {
  factory _$$LargeAreaImplCopyWith(
    _$LargeAreaImpl value,
    $Res Function(_$LargeAreaImpl) then,
  ) = __$$LargeAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'service_area') CodeName serviceArea,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  @override
  $CodeNameCopyWith<$Res> get serviceArea;
  @override
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class __$$LargeAreaImplCopyWithImpl<$Res>
    extends _$LargeAreaCopyWithImpl<$Res, _$LargeAreaImpl>
    implements _$$LargeAreaImplCopyWith<$Res> {
  __$$LargeAreaImplCopyWithImpl(
    _$LargeAreaImpl _value,
    $Res Function(_$LargeAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? serviceArea = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _$LargeAreaImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
        largeServiceArea:
            null == largeServiceArea
                ? _value.largeServiceArea
                : largeServiceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LargeAreaImpl implements _LargeArea {
  const _$LargeAreaImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @JsonKey(name: 'service_area') required this.serviceArea,
    @JsonKey(name: 'large_service_area') required this.largeServiceArea,
  });

  factory _$LargeAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeAreaImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'service_area')
  final CodeName serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  final CodeName largeServiceArea;

  @override
  String toString() {
    return 'LargeArea(code: $code, name: $name, serviceArea: $serviceArea, largeServiceArea: $largeServiceArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.largeServiceArea, largeServiceArea) ||
                other.largeServiceArea == largeServiceArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, serviceArea, largeServiceArea);

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LargeAreaImplCopyWith<_$LargeAreaImpl> get copyWith =>
      __$$LargeAreaImplCopyWithImpl<_$LargeAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeAreaImplToJson(this);
  }
}

abstract class _LargeArea implements LargeArea {
  const factory _LargeArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @JsonKey(name: 'service_area') required final CodeName serviceArea,
    @JsonKey(name: 'large_service_area')
    required final CodeName largeServiceArea,
  }) = _$LargeAreaImpl;

  factory _LargeArea.fromJson(Map<String, dynamic> json) =
      _$LargeAreaImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'service_area')
  CodeName get serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea;

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LargeAreaImplCopyWith<_$LargeAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiddleArea _$MiddleAreaFromJson(Map<String, dynamic> json) {
  return _MiddleArea.fromJson(json);
}

/// @nodoc
mixin _$MiddleArea {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_area')
  CodeName get largeArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_area')
  CodeName get serviceArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea => throw _privateConstructorUsedError;

  /// Serializes this MiddleArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiddleAreaCopyWith<MiddleArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiddleAreaCopyWith<$Res> {
  factory $MiddleAreaCopyWith(
    MiddleArea value,
    $Res Function(MiddleArea) then,
  ) = _$MiddleAreaCopyWithImpl<$Res, MiddleArea>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'large_area') CodeName largeArea,
    @JsonKey(name: 'service_area') CodeName serviceArea,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  $CodeNameCopyWith<$Res> get largeArea;
  $CodeNameCopyWith<$Res> get serviceArea;
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class _$MiddleAreaCopyWithImpl<$Res, $Val extends MiddleArea>
    implements $MiddleAreaCopyWith<$Res> {
  _$MiddleAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? largeArea = null,
    Object? serviceArea = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            largeArea:
                null == largeArea
                    ? _value.largeArea
                    : largeArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
            largeServiceArea:
                null == largeServiceArea
                    ? _value.largeServiceArea
                    : largeServiceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
          )
          as $Val,
    );
  }

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get largeArea {
    return $CodeNameCopyWith<$Res>(_value.largeArea, (value) {
      return _then(_value.copyWith(largeArea: value) as $Val);
    });
  }

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get serviceArea {
    return $CodeNameCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get largeServiceArea {
    return $CodeNameCopyWith<$Res>(_value.largeServiceArea, (value) {
      return _then(_value.copyWith(largeServiceArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiddleAreaImplCopyWith<$Res>
    implements $MiddleAreaCopyWith<$Res> {
  factory _$$MiddleAreaImplCopyWith(
    _$MiddleAreaImpl value,
    $Res Function(_$MiddleAreaImpl) then,
  ) = __$$MiddleAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'large_area') CodeName largeArea,
    @JsonKey(name: 'service_area') CodeName serviceArea,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  @override
  $CodeNameCopyWith<$Res> get largeArea;
  @override
  $CodeNameCopyWith<$Res> get serviceArea;
  @override
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class __$$MiddleAreaImplCopyWithImpl<$Res>
    extends _$MiddleAreaCopyWithImpl<$Res, _$MiddleAreaImpl>
    implements _$$MiddleAreaImplCopyWith<$Res> {
  __$$MiddleAreaImplCopyWithImpl(
    _$MiddleAreaImpl _value,
    $Res Function(_$MiddleAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? largeArea = null,
    Object? serviceArea = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _$MiddleAreaImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        largeArea:
            null == largeArea
                ? _value.largeArea
                : largeArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
        largeServiceArea:
            null == largeServiceArea
                ? _value.largeServiceArea
                : largeServiceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MiddleAreaImpl implements _MiddleArea {
  const _$MiddleAreaImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @JsonKey(name: 'large_area') required this.largeArea,
    @JsonKey(name: 'service_area') required this.serviceArea,
    @JsonKey(name: 'large_service_area') required this.largeServiceArea,
  });

  factory _$MiddleAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiddleAreaImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'large_area')
  final CodeName largeArea;
  @override
  @JsonKey(name: 'service_area')
  final CodeName serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  final CodeName largeServiceArea;

  @override
  String toString() {
    return 'MiddleArea(code: $code, name: $name, largeArea: $largeArea, serviceArea: $serviceArea, largeServiceArea: $largeServiceArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiddleAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.largeArea, largeArea) ||
                other.largeArea == largeArea) &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.largeServiceArea, largeServiceArea) ||
                other.largeServiceArea == largeServiceArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    name,
    largeArea,
    serviceArea,
    largeServiceArea,
  );

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiddleAreaImplCopyWith<_$MiddleAreaImpl> get copyWith =>
      __$$MiddleAreaImplCopyWithImpl<_$MiddleAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiddleAreaImplToJson(this);
  }
}

abstract class _MiddleArea implements MiddleArea {
  const factory _MiddleArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @JsonKey(name: 'large_area') required final CodeName largeArea,
    @JsonKey(name: 'service_area') required final CodeName serviceArea,
    @JsonKey(name: 'large_service_area')
    required final CodeName largeServiceArea,
  }) = _$MiddleAreaImpl;

  factory _MiddleArea.fromJson(Map<String, dynamic> json) =
      _$MiddleAreaImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'large_area')
  CodeName get largeArea;
  @override
  @JsonKey(name: 'service_area')
  CodeName get serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea;

  /// Create a copy of MiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiddleAreaImplCopyWith<_$MiddleAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SmallArea _$SmallAreaFromJson(Map<String, dynamic> json) {
  return _SmallArea.fromJson(json);
}

/// @nodoc
mixin _$SmallArea {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_area')
  CodeName get middleArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_area')
  CodeName get largeArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_area')
  CodeName get serviceArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea => throw _privateConstructorUsedError;

  /// Serializes this SmallArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmallAreaCopyWith<SmallArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmallAreaCopyWith<$Res> {
  factory $SmallAreaCopyWith(SmallArea value, $Res Function(SmallArea) then) =
      _$SmallAreaCopyWithImpl<$Res, SmallArea>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'middle_area') CodeName middleArea,
    @JsonKey(name: 'large_area') CodeName largeArea,
    @JsonKey(name: 'service_area') CodeName serviceArea,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  $CodeNameCopyWith<$Res> get middleArea;
  $CodeNameCopyWith<$Res> get largeArea;
  $CodeNameCopyWith<$Res> get serviceArea;
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class _$SmallAreaCopyWithImpl<$Res, $Val extends SmallArea>
    implements $SmallAreaCopyWith<$Res> {
  _$SmallAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? middleArea = null,
    Object? largeArea = null,
    Object? serviceArea = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            middleArea:
                null == middleArea
                    ? _value.middleArea
                    : middleArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
            largeArea:
                null == largeArea
                    ? _value.largeArea
                    : largeArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
            largeServiceArea:
                null == largeServiceArea
                    ? _value.largeServiceArea
                    : largeServiceArea // ignore: cast_nullable_to_non_nullable
                        as CodeName,
          )
          as $Val,
    );
  }

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get middleArea {
    return $CodeNameCopyWith<$Res>(_value.middleArea, (value) {
      return _then(_value.copyWith(middleArea: value) as $Val);
    });
  }

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get largeArea {
    return $CodeNameCopyWith<$Res>(_value.largeArea, (value) {
      return _then(_value.copyWith(largeArea: value) as $Val);
    });
  }

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get serviceArea {
    return $CodeNameCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeNameCopyWith<$Res> get largeServiceArea {
    return $CodeNameCopyWith<$Res>(_value.largeServiceArea, (value) {
      return _then(_value.copyWith(largeServiceArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SmallAreaImplCopyWith<$Res>
    implements $SmallAreaCopyWith<$Res> {
  factory _$$SmallAreaImplCopyWith(
    _$SmallAreaImpl value,
    $Res Function(_$SmallAreaImpl) then,
  ) = __$$SmallAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
    @JsonKey(name: 'middle_area') CodeName middleArea,
    @JsonKey(name: 'large_area') CodeName largeArea,
    @JsonKey(name: 'service_area') CodeName serviceArea,
    @JsonKey(name: 'large_service_area') CodeName largeServiceArea,
  });

  @override
  $CodeNameCopyWith<$Res> get middleArea;
  @override
  $CodeNameCopyWith<$Res> get largeArea;
  @override
  $CodeNameCopyWith<$Res> get serviceArea;
  @override
  $CodeNameCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class __$$SmallAreaImplCopyWithImpl<$Res>
    extends _$SmallAreaCopyWithImpl<$Res, _$SmallAreaImpl>
    implements _$$SmallAreaImplCopyWith<$Res> {
  __$$SmallAreaImplCopyWithImpl(
    _$SmallAreaImpl _value,
    $Res Function(_$SmallAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? middleArea = null,
    Object? largeArea = null,
    Object? serviceArea = null,
    Object? largeServiceArea = null,
  }) {
    return _then(
      _$SmallAreaImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        middleArea:
            null == middleArea
                ? _value.middleArea
                : middleArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
        largeArea:
            null == largeArea
                ? _value.largeArea
                : largeArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
        largeServiceArea:
            null == largeServiceArea
                ? _value.largeServiceArea
                : largeServiceArea // ignore: cast_nullable_to_non_nullable
                    as CodeName,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SmallAreaImpl implements _SmallArea {
  const _$SmallAreaImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
    @JsonKey(name: 'middle_area') required this.middleArea,
    @JsonKey(name: 'large_area') required this.largeArea,
    @JsonKey(name: 'service_area') required this.serviceArea,
    @JsonKey(name: 'large_service_area') required this.largeServiceArea,
  });

  factory _$SmallAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmallAreaImplFromJson(json);

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'middle_area')
  final CodeName middleArea;
  @override
  @JsonKey(name: 'large_area')
  final CodeName largeArea;
  @override
  @JsonKey(name: 'service_area')
  final CodeName serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  final CodeName largeServiceArea;

  @override
  String toString() {
    return 'SmallArea(code: $code, name: $name, middleArea: $middleArea, largeArea: $largeArea, serviceArea: $serviceArea, largeServiceArea: $largeServiceArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmallAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.middleArea, middleArea) ||
                other.middleArea == middleArea) &&
            (identical(other.largeArea, largeArea) ||
                other.largeArea == largeArea) &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.largeServiceArea, largeServiceArea) ||
                other.largeServiceArea == largeServiceArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    name,
    middleArea,
    largeArea,
    serviceArea,
    largeServiceArea,
  );

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmallAreaImplCopyWith<_$SmallAreaImpl> get copyWith =>
      __$$SmallAreaImplCopyWithImpl<_$SmallAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmallAreaImplToJson(this);
  }
}

abstract class _SmallArea implements SmallArea {
  const factory _SmallArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
    @JsonKey(name: 'middle_area') required final CodeName middleArea,
    @JsonKey(name: 'large_area') required final CodeName largeArea,
    @JsonKey(name: 'service_area') required final CodeName serviceArea,
    @JsonKey(name: 'large_service_area')
    required final CodeName largeServiceArea,
  }) = _$SmallAreaImpl;

  factory _SmallArea.fromJson(Map<String, dynamic> json) =
      _$SmallAreaImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'middle_area')
  CodeName get middleArea;
  @override
  @JsonKey(name: 'large_area')
  CodeName get largeArea;
  @override
  @JsonKey(name: 'service_area')
  CodeName get serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  CodeName get largeServiceArea;

  /// Create a copy of SmallArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmallAreaImplCopyWith<_$SmallAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
