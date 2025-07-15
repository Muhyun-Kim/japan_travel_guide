// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_master_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AreaMasterResponse _$AreaMasterResponseFromJson(Map<String, dynamic> json) {
  return _AreaMasterResponse.fromJson(json);
}

/// @nodoc
mixin _$AreaMasterResponse {
  AreaMasterResults get results => throw _privateConstructorUsedError;

  /// Serializes this AreaMasterResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaMasterResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaMasterResponseCopyWith<AreaMasterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaMasterResponseCopyWith<$Res> {
  factory $AreaMasterResponseCopyWith(
    AreaMasterResponse value,
    $Res Function(AreaMasterResponse) then,
  ) = _$AreaMasterResponseCopyWithImpl<$Res, AreaMasterResponse>;
  @useResult
  $Res call({AreaMasterResults results});

  $AreaMasterResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$AreaMasterResponseCopyWithImpl<$Res, $Val extends AreaMasterResponse>
    implements $AreaMasterResponseCopyWith<$Res> {
  _$AreaMasterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaMasterResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _value.copyWith(
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as AreaMasterResults,
          )
          as $Val,
    );
  }

  /// Create a copy of AreaMasterResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaMasterResultsCopyWith<$Res> get results {
    return $AreaMasterResultsCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaMasterResponseImplCopyWith<$Res>
    implements $AreaMasterResponseCopyWith<$Res> {
  factory _$$AreaMasterResponseImplCopyWith(
    _$AreaMasterResponseImpl value,
    $Res Function(_$AreaMasterResponseImpl) then,
  ) = __$$AreaMasterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AreaMasterResults results});

  @override
  $AreaMasterResultsCopyWith<$Res> get results;
}

/// @nodoc
class __$$AreaMasterResponseImplCopyWithImpl<$Res>
    extends _$AreaMasterResponseCopyWithImpl<$Res, _$AreaMasterResponseImpl>
    implements _$$AreaMasterResponseImplCopyWith<$Res> {
  __$$AreaMasterResponseImplCopyWithImpl(
    _$AreaMasterResponseImpl _value,
    $Res Function(_$AreaMasterResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AreaMasterResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _$AreaMasterResponseImpl(
        results:
            null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                    as AreaMasterResults,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaMasterResponseImpl implements _AreaMasterResponse {
  const _$AreaMasterResponseImpl({required this.results});

  factory _$AreaMasterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaMasterResponseImplFromJson(json);

  @override
  final AreaMasterResults results;

  @override
  String toString() {
    return 'AreaMasterResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaMasterResponseImpl &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, results);

  /// Create a copy of AreaMasterResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaMasterResponseImplCopyWith<_$AreaMasterResponseImpl> get copyWith =>
      __$$AreaMasterResponseImplCopyWithImpl<_$AreaMasterResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaMasterResponseImplToJson(this);
  }
}

abstract class _AreaMasterResponse implements AreaMasterResponse {
  const factory _AreaMasterResponse({
    required final AreaMasterResults results,
  }) = _$AreaMasterResponseImpl;

  factory _AreaMasterResponse.fromJson(Map<String, dynamic> json) =
      _$AreaMasterResponseImpl.fromJson;

  @override
  AreaMasterResults get results;

  /// Create a copy of AreaMasterResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaMasterResponseImplCopyWith<_$AreaMasterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaMasterResults _$AreaMasterResultsFromJson(Map<String, dynamic> json) {
  return _AreaMasterResults.fromJson(json);
}

/// @nodoc
mixin _$AreaMasterResults {
  @JsonKey(name: 'api_version')
  String get apiVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'results_available')
  int get resultsAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'results_returned')
  String get resultsReturned => throw _privateConstructorUsedError;
  @JsonKey(name: 'results_start')
  int get resultsStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_area')
  List<MiddleAreaMaster> get middleArea => throw _privateConstructorUsedError;

  /// Serializes this AreaMasterResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaMasterResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaMasterResultsCopyWith<AreaMasterResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaMasterResultsCopyWith<$Res> {
  factory $AreaMasterResultsCopyWith(
    AreaMasterResults value,
    $Res Function(AreaMasterResults) then,
  ) = _$AreaMasterResultsCopyWithImpl<$Res, AreaMasterResults>;
  @useResult
  $Res call({
    @JsonKey(name: 'api_version') String apiVersion,
    @JsonKey(name: 'results_available') int resultsAvailable,
    @JsonKey(name: 'results_returned') String resultsReturned,
    @JsonKey(name: 'results_start') int resultsStart,
    @JsonKey(name: 'middle_area') List<MiddleAreaMaster> middleArea,
  });
}

/// @nodoc
class _$AreaMasterResultsCopyWithImpl<$Res, $Val extends AreaMasterResults>
    implements $AreaMasterResultsCopyWith<$Res> {
  _$AreaMasterResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaMasterResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? middleArea = null,
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
                        as String,
            resultsStart:
                null == resultsStart
                    ? _value.resultsStart
                    : resultsStart // ignore: cast_nullable_to_non_nullable
                        as int,
            middleArea:
                null == middleArea
                    ? _value.middleArea
                    : middleArea // ignore: cast_nullable_to_non_nullable
                        as List<MiddleAreaMaster>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AreaMasterResultsImplCopyWith<$Res>
    implements $AreaMasterResultsCopyWith<$Res> {
  factory _$$AreaMasterResultsImplCopyWith(
    _$AreaMasterResultsImpl value,
    $Res Function(_$AreaMasterResultsImpl) then,
  ) = __$$AreaMasterResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'api_version') String apiVersion,
    @JsonKey(name: 'results_available') int resultsAvailable,
    @JsonKey(name: 'results_returned') String resultsReturned,
    @JsonKey(name: 'results_start') int resultsStart,
    @JsonKey(name: 'middle_area') List<MiddleAreaMaster> middleArea,
  });
}

/// @nodoc
class __$$AreaMasterResultsImplCopyWithImpl<$Res>
    extends _$AreaMasterResultsCopyWithImpl<$Res, _$AreaMasterResultsImpl>
    implements _$$AreaMasterResultsImplCopyWith<$Res> {
  __$$AreaMasterResultsImplCopyWithImpl(
    _$AreaMasterResultsImpl _value,
    $Res Function(_$AreaMasterResultsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AreaMasterResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? middleArea = null,
  }) {
    return _then(
      _$AreaMasterResultsImpl(
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
                    as String,
        resultsStart:
            null == resultsStart
                ? _value.resultsStart
                : resultsStart // ignore: cast_nullable_to_non_nullable
                    as int,
        middleArea:
            null == middleArea
                ? _value._middleArea
                : middleArea // ignore: cast_nullable_to_non_nullable
                    as List<MiddleAreaMaster>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaMasterResultsImpl implements _AreaMasterResults {
  const _$AreaMasterResultsImpl({
    @JsonKey(name: 'api_version') required this.apiVersion,
    @JsonKey(name: 'results_available') required this.resultsAvailable,
    @JsonKey(name: 'results_returned') required this.resultsReturned,
    @JsonKey(name: 'results_start') required this.resultsStart,
    @JsonKey(name: 'middle_area')
    required final List<MiddleAreaMaster> middleArea,
  }) : _middleArea = middleArea;

  factory _$AreaMasterResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaMasterResultsImplFromJson(json);

  @override
  @JsonKey(name: 'api_version')
  final String apiVersion;
  @override
  @JsonKey(name: 'results_available')
  final int resultsAvailable;
  @override
  @JsonKey(name: 'results_returned')
  final String resultsReturned;
  @override
  @JsonKey(name: 'results_start')
  final int resultsStart;
  final List<MiddleAreaMaster> _middleArea;
  @override
  @JsonKey(name: 'middle_area')
  List<MiddleAreaMaster> get middleArea {
    if (_middleArea is EqualUnmodifiableListView) return _middleArea;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_middleArea);
  }

  @override
  String toString() {
    return 'AreaMasterResults(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, middleArea: $middleArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaMasterResultsImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(
              other._middleArea,
              _middleArea,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    apiVersion,
    resultsAvailable,
    resultsReturned,
    resultsStart,
    const DeepCollectionEquality().hash(_middleArea),
  );

  /// Create a copy of AreaMasterResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaMasterResultsImplCopyWith<_$AreaMasterResultsImpl> get copyWith =>
      __$$AreaMasterResultsImplCopyWithImpl<_$AreaMasterResultsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaMasterResultsImplToJson(this);
  }
}

abstract class _AreaMasterResults implements AreaMasterResults {
  const factory _AreaMasterResults({
    @JsonKey(name: 'api_version') required final String apiVersion,
    @JsonKey(name: 'results_available') required final int resultsAvailable,
    @JsonKey(name: 'results_returned') required final String resultsReturned,
    @JsonKey(name: 'results_start') required final int resultsStart,
    @JsonKey(name: 'middle_area')
    required final List<MiddleAreaMaster> middleArea,
  }) = _$AreaMasterResultsImpl;

  factory _AreaMasterResults.fromJson(Map<String, dynamic> json) =
      _$AreaMasterResultsImpl.fromJson;

  @override
  @JsonKey(name: 'api_version')
  String get apiVersion;
  @override
  @JsonKey(name: 'results_available')
  int get resultsAvailable;
  @override
  @JsonKey(name: 'results_returned')
  String get resultsReturned;
  @override
  @JsonKey(name: 'results_start')
  int get resultsStart;
  @override
  @JsonKey(name: 'middle_area')
  List<MiddleAreaMaster> get middleArea;

  /// Create a copy of AreaMasterResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaMasterResultsImplCopyWith<_$AreaMasterResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiddleAreaMaster _$MiddleAreaMasterFromJson(Map<String, dynamic> json) {
  return _MiddleAreaMaster.fromJson(json);
}

/// @nodoc
mixin _$MiddleAreaMaster {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_area')
  LargeAreaInfo get largeArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_area')
  ServiceAreaInfo get serviceArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_service_area')
  LargeServiceAreaInfo get largeServiceArea =>
      throw _privateConstructorUsedError;

  /// Serializes this MiddleAreaMaster to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiddleAreaMasterCopyWith<MiddleAreaMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiddleAreaMasterCopyWith<$Res> {
  factory $MiddleAreaMasterCopyWith(
    MiddleAreaMaster value,
    $Res Function(MiddleAreaMaster) then,
  ) = _$MiddleAreaMasterCopyWithImpl<$Res, MiddleAreaMaster>;
  @useResult
  $Res call({
    String code,
    String name,
    @JsonKey(name: 'large_area') LargeAreaInfo largeArea,
    @JsonKey(name: 'service_area') ServiceAreaInfo serviceArea,
    @JsonKey(name: 'large_service_area') LargeServiceAreaInfo largeServiceArea,
  });

  $LargeAreaInfoCopyWith<$Res> get largeArea;
  $ServiceAreaInfoCopyWith<$Res> get serviceArea;
  $LargeServiceAreaInfoCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class _$MiddleAreaMasterCopyWithImpl<$Res, $Val extends MiddleAreaMaster>
    implements $MiddleAreaMasterCopyWith<$Res> {
  _$MiddleAreaMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiddleAreaMaster
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
                        as LargeAreaInfo,
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as ServiceAreaInfo,
            largeServiceArea:
                null == largeServiceArea
                    ? _value.largeServiceArea
                    : largeServiceArea // ignore: cast_nullable_to_non_nullable
                        as LargeServiceAreaInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of MiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LargeAreaInfoCopyWith<$Res> get largeArea {
    return $LargeAreaInfoCopyWith<$Res>(_value.largeArea, (value) {
      return _then(_value.copyWith(largeArea: value) as $Val);
    });
  }

  /// Create a copy of MiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceAreaInfoCopyWith<$Res> get serviceArea {
    return $ServiceAreaInfoCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of MiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LargeServiceAreaInfoCopyWith<$Res> get largeServiceArea {
    return $LargeServiceAreaInfoCopyWith<$Res>(_value.largeServiceArea, (
      value,
    ) {
      return _then(_value.copyWith(largeServiceArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiddleAreaMasterImplCopyWith<$Res>
    implements $MiddleAreaMasterCopyWith<$Res> {
  factory _$$MiddleAreaMasterImplCopyWith(
    _$MiddleAreaMasterImpl value,
    $Res Function(_$MiddleAreaMasterImpl) then,
  ) = __$$MiddleAreaMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String name,
    @JsonKey(name: 'large_area') LargeAreaInfo largeArea,
    @JsonKey(name: 'service_area') ServiceAreaInfo serviceArea,
    @JsonKey(name: 'large_service_area') LargeServiceAreaInfo largeServiceArea,
  });

  @override
  $LargeAreaInfoCopyWith<$Res> get largeArea;
  @override
  $ServiceAreaInfoCopyWith<$Res> get serviceArea;
  @override
  $LargeServiceAreaInfoCopyWith<$Res> get largeServiceArea;
}

/// @nodoc
class __$$MiddleAreaMasterImplCopyWithImpl<$Res>
    extends _$MiddleAreaMasterCopyWithImpl<$Res, _$MiddleAreaMasterImpl>
    implements _$$MiddleAreaMasterImplCopyWith<$Res> {
  __$$MiddleAreaMasterImplCopyWithImpl(
    _$MiddleAreaMasterImpl _value,
    $Res Function(_$MiddleAreaMasterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MiddleAreaMaster
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
      _$MiddleAreaMasterImpl(
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
                    as LargeAreaInfo,
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as ServiceAreaInfo,
        largeServiceArea:
            null == largeServiceArea
                ? _value.largeServiceArea
                : largeServiceArea // ignore: cast_nullable_to_non_nullable
                    as LargeServiceAreaInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MiddleAreaMasterImpl implements _MiddleAreaMaster {
  const _$MiddleAreaMasterImpl({
    required this.code,
    required this.name,
    @JsonKey(name: 'large_area') required this.largeArea,
    @JsonKey(name: 'service_area') required this.serviceArea,
    @JsonKey(name: 'large_service_area') required this.largeServiceArea,
  });

  factory _$MiddleAreaMasterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiddleAreaMasterImplFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  @JsonKey(name: 'large_area')
  final LargeAreaInfo largeArea;
  @override
  @JsonKey(name: 'service_area')
  final ServiceAreaInfo serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  final LargeServiceAreaInfo largeServiceArea;

  @override
  String toString() {
    return 'MiddleAreaMaster(code: $code, name: $name, largeArea: $largeArea, serviceArea: $serviceArea, largeServiceArea: $largeServiceArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiddleAreaMasterImpl &&
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

  /// Create a copy of MiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiddleAreaMasterImplCopyWith<_$MiddleAreaMasterImpl> get copyWith =>
      __$$MiddleAreaMasterImplCopyWithImpl<_$MiddleAreaMasterImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MiddleAreaMasterImplToJson(this);
  }
}

abstract class _MiddleAreaMaster implements MiddleAreaMaster {
  const factory _MiddleAreaMaster({
    required final String code,
    required final String name,
    @JsonKey(name: 'large_area') required final LargeAreaInfo largeArea,
    @JsonKey(name: 'service_area') required final ServiceAreaInfo serviceArea,
    @JsonKey(name: 'large_service_area')
    required final LargeServiceAreaInfo largeServiceArea,
  }) = _$MiddleAreaMasterImpl;

  factory _MiddleAreaMaster.fromJson(Map<String, dynamic> json) =
      _$MiddleAreaMasterImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(name: 'large_area')
  LargeAreaInfo get largeArea;
  @override
  @JsonKey(name: 'service_area')
  ServiceAreaInfo get serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  LargeServiceAreaInfo get largeServiceArea;

  /// Create a copy of MiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiddleAreaMasterImplCopyWith<_$MiddleAreaMasterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LargeAreaInfo _$LargeAreaInfoFromJson(Map<String, dynamic> json) {
  return _LargeAreaInfo.fromJson(json);
}

/// @nodoc
mixin _$LargeAreaInfo {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LargeAreaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LargeAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LargeAreaInfoCopyWith<LargeAreaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeAreaInfoCopyWith<$Res> {
  factory $LargeAreaInfoCopyWith(
    LargeAreaInfo value,
    $Res Function(LargeAreaInfo) then,
  ) = _$LargeAreaInfoCopyWithImpl<$Res, LargeAreaInfo>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$LargeAreaInfoCopyWithImpl<$Res, $Val extends LargeAreaInfo>
    implements $LargeAreaInfoCopyWith<$Res> {
  _$LargeAreaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LargeAreaInfo
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
abstract class _$$LargeAreaInfoImplCopyWith<$Res>
    implements $LargeAreaInfoCopyWith<$Res> {
  factory _$$LargeAreaInfoImplCopyWith(
    _$LargeAreaInfoImpl value,
    $Res Function(_$LargeAreaInfoImpl) then,
  ) = __$$LargeAreaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$LargeAreaInfoImplCopyWithImpl<$Res>
    extends _$LargeAreaInfoCopyWithImpl<$Res, _$LargeAreaInfoImpl>
    implements _$$LargeAreaInfoImplCopyWith<$Res> {
  __$$LargeAreaInfoImplCopyWithImpl(
    _$LargeAreaInfoImpl _value,
    $Res Function(_$LargeAreaInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LargeAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$LargeAreaInfoImpl(
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
class _$LargeAreaInfoImpl implements _LargeAreaInfo {
  const _$LargeAreaInfoImpl({required this.code, required this.name});

  factory _$LargeAreaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeAreaInfoImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'LargeAreaInfo(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeAreaInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of LargeAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LargeAreaInfoImplCopyWith<_$LargeAreaInfoImpl> get copyWith =>
      __$$LargeAreaInfoImplCopyWithImpl<_$LargeAreaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeAreaInfoImplToJson(this);
  }
}

abstract class _LargeAreaInfo implements LargeAreaInfo {
  const factory _LargeAreaInfo({
    required final String code,
    required final String name,
  }) = _$LargeAreaInfoImpl;

  factory _LargeAreaInfo.fromJson(Map<String, dynamic> json) =
      _$LargeAreaInfoImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of LargeAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LargeAreaInfoImplCopyWith<_$LargeAreaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceAreaInfo _$ServiceAreaInfoFromJson(Map<String, dynamic> json) {
  return _ServiceAreaInfo.fromJson(json);
}

/// @nodoc
mixin _$ServiceAreaInfo {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ServiceAreaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceAreaInfoCopyWith<ServiceAreaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAreaInfoCopyWith<$Res> {
  factory $ServiceAreaInfoCopyWith(
    ServiceAreaInfo value,
    $Res Function(ServiceAreaInfo) then,
  ) = _$ServiceAreaInfoCopyWithImpl<$Res, ServiceAreaInfo>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$ServiceAreaInfoCopyWithImpl<$Res, $Val extends ServiceAreaInfo>
    implements $ServiceAreaInfoCopyWith<$Res> {
  _$ServiceAreaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceAreaInfo
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
abstract class _$$ServiceAreaInfoImplCopyWith<$Res>
    implements $ServiceAreaInfoCopyWith<$Res> {
  factory _$$ServiceAreaInfoImplCopyWith(
    _$ServiceAreaInfoImpl value,
    $Res Function(_$ServiceAreaInfoImpl) then,
  ) = __$$ServiceAreaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$ServiceAreaInfoImplCopyWithImpl<$Res>
    extends _$ServiceAreaInfoCopyWithImpl<$Res, _$ServiceAreaInfoImpl>
    implements _$$ServiceAreaInfoImplCopyWith<$Res> {
  __$$ServiceAreaInfoImplCopyWithImpl(
    _$ServiceAreaInfoImpl _value,
    $Res Function(_$ServiceAreaInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$ServiceAreaInfoImpl(
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
class _$ServiceAreaInfoImpl implements _ServiceAreaInfo {
  const _$ServiceAreaInfoImpl({required this.code, required this.name});

  factory _$ServiceAreaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceAreaInfoImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'ServiceAreaInfo(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceAreaInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of ServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceAreaInfoImplCopyWith<_$ServiceAreaInfoImpl> get copyWith =>
      __$$ServiceAreaInfoImplCopyWithImpl<_$ServiceAreaInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceAreaInfoImplToJson(this);
  }
}

abstract class _ServiceAreaInfo implements ServiceAreaInfo {
  const factory _ServiceAreaInfo({
    required final String code,
    required final String name,
  }) = _$ServiceAreaInfoImpl;

  factory _ServiceAreaInfo.fromJson(Map<String, dynamic> json) =
      _$ServiceAreaInfoImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of ServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceAreaInfoImplCopyWith<_$ServiceAreaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LargeServiceAreaInfo _$LargeServiceAreaInfoFromJson(Map<String, dynamic> json) {
  return _LargeServiceAreaInfo.fromJson(json);
}

/// @nodoc
mixin _$LargeServiceAreaInfo {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LargeServiceAreaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LargeServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LargeServiceAreaInfoCopyWith<LargeServiceAreaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeServiceAreaInfoCopyWith<$Res> {
  factory $LargeServiceAreaInfoCopyWith(
    LargeServiceAreaInfo value,
    $Res Function(LargeServiceAreaInfo) then,
  ) = _$LargeServiceAreaInfoCopyWithImpl<$Res, LargeServiceAreaInfo>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$LargeServiceAreaInfoCopyWithImpl<
  $Res,
  $Val extends LargeServiceAreaInfo
>
    implements $LargeServiceAreaInfoCopyWith<$Res> {
  _$LargeServiceAreaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LargeServiceAreaInfo
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
abstract class _$$LargeServiceAreaInfoImplCopyWith<$Res>
    implements $LargeServiceAreaInfoCopyWith<$Res> {
  factory _$$LargeServiceAreaInfoImplCopyWith(
    _$LargeServiceAreaInfoImpl value,
    $Res Function(_$LargeServiceAreaInfoImpl) then,
  ) = __$$LargeServiceAreaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$LargeServiceAreaInfoImplCopyWithImpl<$Res>
    extends _$LargeServiceAreaInfoCopyWithImpl<$Res, _$LargeServiceAreaInfoImpl>
    implements _$$LargeServiceAreaInfoImplCopyWith<$Res> {
  __$$LargeServiceAreaInfoImplCopyWithImpl(
    _$LargeServiceAreaInfoImpl _value,
    $Res Function(_$LargeServiceAreaInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LargeServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$LargeServiceAreaInfoImpl(
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
class _$LargeServiceAreaInfoImpl implements _LargeServiceAreaInfo {
  const _$LargeServiceAreaInfoImpl({required this.code, required this.name});

  factory _$LargeServiceAreaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeServiceAreaInfoImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'LargeServiceAreaInfo(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeServiceAreaInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of LargeServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LargeServiceAreaInfoImplCopyWith<_$LargeServiceAreaInfoImpl>
  get copyWith =>
      __$$LargeServiceAreaInfoImplCopyWithImpl<_$LargeServiceAreaInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeServiceAreaInfoImplToJson(this);
  }
}

abstract class _LargeServiceAreaInfo implements LargeServiceAreaInfo {
  const factory _LargeServiceAreaInfo({
    required final String code,
    required final String name,
  }) = _$LargeServiceAreaInfoImpl;

  factory _LargeServiceAreaInfo.fromJson(Map<String, dynamic> json) =
      _$LargeServiceAreaInfoImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of LargeServiceAreaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LargeServiceAreaInfoImplCopyWith<_$LargeServiceAreaInfoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
