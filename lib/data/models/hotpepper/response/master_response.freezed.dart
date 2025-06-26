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

BudgetResponse _$BudgetResponseFromJson(Map<String, dynamic> json) {
  return _BudgetResponse.fromJson(json);
}

/// @nodoc
mixin _$BudgetResponse {
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
  @JsonKey(name: 'budget', defaultValue: <CodeName>[])
  List<CodeName> get budgets => throw _privateConstructorUsedError;

  /// Serializes this BudgetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetResponseCopyWith<BudgetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetResponseCopyWith<$Res> {
  factory $BudgetResponseCopyWith(
    BudgetResponse value,
    $Res Function(BudgetResponse) then,
  ) = _$BudgetResponseCopyWithImpl<$Res, BudgetResponse>;
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
    @JsonKey(name: 'budget', defaultValue: <CodeName>[]) List<CodeName> budgets,
  });
}

/// @nodoc
class _$BudgetResponseCopyWithImpl<$Res, $Val extends BudgetResponse>
    implements $BudgetResponseCopyWith<$Res> {
  _$BudgetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? budgets = null,
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
            budgets:
                null == budgets
                    ? _value.budgets
                    : budgets // ignore: cast_nullable_to_non_nullable
                        as List<CodeName>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BudgetResponseImplCopyWith<$Res>
    implements $BudgetResponseCopyWith<$Res> {
  factory _$$BudgetResponseImplCopyWith(
    _$BudgetResponseImpl value,
    $Res Function(_$BudgetResponseImpl) then,
  ) = __$$BudgetResponseImplCopyWithImpl<$Res>;
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
    @JsonKey(name: 'budget', defaultValue: <CodeName>[]) List<CodeName> budgets,
  });
}

/// @nodoc
class __$$BudgetResponseImplCopyWithImpl<$Res>
    extends _$BudgetResponseCopyWithImpl<$Res, _$BudgetResponseImpl>
    implements _$$BudgetResponseImplCopyWith<$Res> {
  __$$BudgetResponseImplCopyWithImpl(
    _$BudgetResponseImpl _value,
    $Res Function(_$BudgetResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? budgets = null,
  }) {
    return _then(
      _$BudgetResponseImpl(
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
        budgets:
            null == budgets
                ? _value._budgets
                : budgets // ignore: cast_nullable_to_non_nullable
                    as List<CodeName>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetResponseImpl implements _BudgetResponse {
  const _$BudgetResponseImpl({
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
    @JsonKey(name: 'budget', defaultValue: <CodeName>[])
    required final List<CodeName> budgets,
  }) : _budgets = budgets;

  factory _$BudgetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetResponseImplFromJson(json);

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
  final List<CodeName> _budgets;
  @override
  @JsonKey(name: 'budget', defaultValue: <CodeName>[])
  List<CodeName> get budgets {
    if (_budgets is EqualUnmodifiableListView) return _budgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_budgets);
  }

  @override
  String toString() {
    return 'BudgetResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, budgets: $budgets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetResponseImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(other._budgets, _budgets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    apiVersion,
    resultsAvailable,
    resultsReturned,
    resultsStart,
    const DeepCollectionEquality().hash(_budgets),
  );

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetResponseImplCopyWith<_$BudgetResponseImpl> get copyWith =>
      __$$BudgetResponseImplCopyWithImpl<_$BudgetResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetResponseImplToJson(this);
  }
}

abstract class _BudgetResponse implements BudgetResponse {
  const factory _BudgetResponse({
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
    @JsonKey(name: 'budget', defaultValue: <CodeName>[])
    required final List<CodeName> budgets,
  }) = _$BudgetResponseImpl;

  factory _BudgetResponse.fromJson(Map<String, dynamic> json) =
      _$BudgetResponseImpl.fromJson;

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
  @JsonKey(name: 'budget', defaultValue: <CodeName>[])
  List<CodeName> get budgets;

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetResponseImplCopyWith<_$BudgetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LargeServiceAreaResponse _$LargeServiceAreaResponseFromJson(
  Map<String, dynamic> json,
) {
  return _LargeServiceAreaResponse.fromJson(json);
}

/// @nodoc
mixin _$LargeServiceAreaResponse {
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
  @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
  List<CodeName> get largeServiceAreas => throw _privateConstructorUsedError;

  /// Serializes this LargeServiceAreaResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LargeServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LargeServiceAreaResponseCopyWith<LargeServiceAreaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeServiceAreaResponseCopyWith<$Res> {
  factory $LargeServiceAreaResponseCopyWith(
    LargeServiceAreaResponse value,
    $Res Function(LargeServiceAreaResponse) then,
  ) = _$LargeServiceAreaResponseCopyWithImpl<$Res, LargeServiceAreaResponse>;
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
    @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
    List<CodeName> largeServiceAreas,
  });
}

/// @nodoc
class _$LargeServiceAreaResponseCopyWithImpl<
  $Res,
  $Val extends LargeServiceAreaResponse
>
    implements $LargeServiceAreaResponseCopyWith<$Res> {
  _$LargeServiceAreaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LargeServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? largeServiceAreas = null,
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
            largeServiceAreas:
                null == largeServiceAreas
                    ? _value.largeServiceAreas
                    : largeServiceAreas // ignore: cast_nullable_to_non_nullable
                        as List<CodeName>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LargeServiceAreaResponseImplCopyWith<$Res>
    implements $LargeServiceAreaResponseCopyWith<$Res> {
  factory _$$LargeServiceAreaResponseImplCopyWith(
    _$LargeServiceAreaResponseImpl value,
    $Res Function(_$LargeServiceAreaResponseImpl) then,
  ) = __$$LargeServiceAreaResponseImplCopyWithImpl<$Res>;
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
    @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
    List<CodeName> largeServiceAreas,
  });
}

/// @nodoc
class __$$LargeServiceAreaResponseImplCopyWithImpl<$Res>
    extends
        _$LargeServiceAreaResponseCopyWithImpl<
          $Res,
          _$LargeServiceAreaResponseImpl
        >
    implements _$$LargeServiceAreaResponseImplCopyWith<$Res> {
  __$$LargeServiceAreaResponseImplCopyWithImpl(
    _$LargeServiceAreaResponseImpl _value,
    $Res Function(_$LargeServiceAreaResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LargeServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? largeServiceAreas = null,
  }) {
    return _then(
      _$LargeServiceAreaResponseImpl(
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
        largeServiceAreas:
            null == largeServiceAreas
                ? _value._largeServiceAreas
                : largeServiceAreas // ignore: cast_nullable_to_non_nullable
                    as List<CodeName>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LargeServiceAreaResponseImpl implements _LargeServiceAreaResponse {
  const _$LargeServiceAreaResponseImpl({
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
    @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
    required final List<CodeName> largeServiceAreas,
  }) : _largeServiceAreas = largeServiceAreas;

  factory _$LargeServiceAreaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeServiceAreaResponseImplFromJson(json);

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
  final List<CodeName> _largeServiceAreas;
  @override
  @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
  List<CodeName> get largeServiceAreas {
    if (_largeServiceAreas is EqualUnmodifiableListView)
      return _largeServiceAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeServiceAreas);
  }

  @override
  String toString() {
    return 'LargeServiceAreaResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, largeServiceAreas: $largeServiceAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeServiceAreaResponseImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(
              other._largeServiceAreas,
              _largeServiceAreas,
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
    const DeepCollectionEquality().hash(_largeServiceAreas),
  );

  /// Create a copy of LargeServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LargeServiceAreaResponseImplCopyWith<_$LargeServiceAreaResponseImpl>
  get copyWith => __$$LargeServiceAreaResponseImplCopyWithImpl<
    _$LargeServiceAreaResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeServiceAreaResponseImplToJson(this);
  }
}

abstract class _LargeServiceAreaResponse implements LargeServiceAreaResponse {
  const factory _LargeServiceAreaResponse({
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
    @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
    required final List<CodeName> largeServiceAreas,
  }) = _$LargeServiceAreaResponseImpl;

  factory _LargeServiceAreaResponse.fromJson(Map<String, dynamic> json) =
      _$LargeServiceAreaResponseImpl.fromJson;

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
  @JsonKey(name: 'large_service_area', defaultValue: <CodeName>[])
  List<CodeName> get largeServiceAreas;

  /// Create a copy of LargeServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LargeServiceAreaResponseImplCopyWith<_$LargeServiceAreaResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
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

ServiceAreaResponse _$ServiceAreaResponseFromJson(Map<String, dynamic> json) {
  return _ServiceAreaResponse.fromJson(json);
}

/// @nodoc
mixin _$ServiceAreaResponse {
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
  @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
  List<ServiceArea> get serviceAreas => throw _privateConstructorUsedError;

  /// Serializes this ServiceAreaResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceAreaResponseCopyWith<ServiceAreaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAreaResponseCopyWith<$Res> {
  factory $ServiceAreaResponseCopyWith(
    ServiceAreaResponse value,
    $Res Function(ServiceAreaResponse) then,
  ) = _$ServiceAreaResponseCopyWithImpl<$Res, ServiceAreaResponse>;
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
    @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
    List<ServiceArea> serviceAreas,
  });
}

/// @nodoc
class _$ServiceAreaResponseCopyWithImpl<$Res, $Val extends ServiceAreaResponse>
    implements $ServiceAreaResponseCopyWith<$Res> {
  _$ServiceAreaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? serviceAreas = null,
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
            serviceAreas:
                null == serviceAreas
                    ? _value.serviceAreas
                    : serviceAreas // ignore: cast_nullable_to_non_nullable
                        as List<ServiceArea>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServiceAreaResponseImplCopyWith<$Res>
    implements $ServiceAreaResponseCopyWith<$Res> {
  factory _$$ServiceAreaResponseImplCopyWith(
    _$ServiceAreaResponseImpl value,
    $Res Function(_$ServiceAreaResponseImpl) then,
  ) = __$$ServiceAreaResponseImplCopyWithImpl<$Res>;
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
    @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
    List<ServiceArea> serviceAreas,
  });
}

/// @nodoc
class __$$ServiceAreaResponseImplCopyWithImpl<$Res>
    extends _$ServiceAreaResponseCopyWithImpl<$Res, _$ServiceAreaResponseImpl>
    implements _$$ServiceAreaResponseImplCopyWith<$Res> {
  __$$ServiceAreaResponseImplCopyWithImpl(
    _$ServiceAreaResponseImpl _value,
    $Res Function(_$ServiceAreaResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? serviceAreas = null,
  }) {
    return _then(
      _$ServiceAreaResponseImpl(
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
        serviceAreas:
            null == serviceAreas
                ? _value._serviceAreas
                : serviceAreas // ignore: cast_nullable_to_non_nullable
                    as List<ServiceArea>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceAreaResponseImpl implements _ServiceAreaResponse {
  const _$ServiceAreaResponseImpl({
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
    @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
    required final List<ServiceArea> serviceAreas,
  }) : _serviceAreas = serviceAreas;

  factory _$ServiceAreaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceAreaResponseImplFromJson(json);

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
  final List<ServiceArea> _serviceAreas;
  @override
  @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
  List<ServiceArea> get serviceAreas {
    if (_serviceAreas is EqualUnmodifiableListView) return _serviceAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceAreas);
  }

  @override
  String toString() {
    return 'ServiceAreaResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, serviceAreas: $serviceAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceAreaResponseImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(
              other._serviceAreas,
              _serviceAreas,
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
    const DeepCollectionEquality().hash(_serviceAreas),
  );

  /// Create a copy of ServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceAreaResponseImplCopyWith<_$ServiceAreaResponseImpl> get copyWith =>
      __$$ServiceAreaResponseImplCopyWithImpl<_$ServiceAreaResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceAreaResponseImplToJson(this);
  }
}

abstract class _ServiceAreaResponse implements ServiceAreaResponse {
  const factory _ServiceAreaResponse({
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
    @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
    required final List<ServiceArea> serviceAreas,
  }) = _$ServiceAreaResponseImpl;

  factory _ServiceAreaResponse.fromJson(Map<String, dynamic> json) =
      _$ServiceAreaResponseImpl.fromJson;

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
  @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
  List<ServiceArea> get serviceAreas;

  /// Create a copy of ServiceAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceAreaResponseImplCopyWith<_$ServiceAreaResponseImpl> get copyWith =>
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

LargeAreaResponse _$LargeAreaResponseFromJson(Map<String, dynamic> json) {
  return _LargeAreaResponse.fromJson(json);
}

/// @nodoc
mixin _$LargeAreaResponse {
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
  @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
  List<LargeArea> get largeAreas => throw _privateConstructorUsedError;

  /// Serializes this LargeAreaResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LargeAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LargeAreaResponseCopyWith<LargeAreaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeAreaResponseCopyWith<$Res> {
  factory $LargeAreaResponseCopyWith(
    LargeAreaResponse value,
    $Res Function(LargeAreaResponse) then,
  ) = _$LargeAreaResponseCopyWithImpl<$Res, LargeAreaResponse>;
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
    @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
    List<LargeArea> largeAreas,
  });
}

/// @nodoc
class _$LargeAreaResponseCopyWithImpl<$Res, $Val extends LargeAreaResponse>
    implements $LargeAreaResponseCopyWith<$Res> {
  _$LargeAreaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LargeAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? largeAreas = null,
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
            largeAreas:
                null == largeAreas
                    ? _value.largeAreas
                    : largeAreas // ignore: cast_nullable_to_non_nullable
                        as List<LargeArea>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LargeAreaResponseImplCopyWith<$Res>
    implements $LargeAreaResponseCopyWith<$Res> {
  factory _$$LargeAreaResponseImplCopyWith(
    _$LargeAreaResponseImpl value,
    $Res Function(_$LargeAreaResponseImpl) then,
  ) = __$$LargeAreaResponseImplCopyWithImpl<$Res>;
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
    @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
    List<LargeArea> largeAreas,
  });
}

/// @nodoc
class __$$LargeAreaResponseImplCopyWithImpl<$Res>
    extends _$LargeAreaResponseCopyWithImpl<$Res, _$LargeAreaResponseImpl>
    implements _$$LargeAreaResponseImplCopyWith<$Res> {
  __$$LargeAreaResponseImplCopyWithImpl(
    _$LargeAreaResponseImpl _value,
    $Res Function(_$LargeAreaResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LargeAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? largeAreas = null,
  }) {
    return _then(
      _$LargeAreaResponseImpl(
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
        largeAreas:
            null == largeAreas
                ? _value._largeAreas
                : largeAreas // ignore: cast_nullable_to_non_nullable
                    as List<LargeArea>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LargeAreaResponseImpl implements _LargeAreaResponse {
  const _$LargeAreaResponseImpl({
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
    @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
    required final List<LargeArea> largeAreas,
  }) : _largeAreas = largeAreas;

  factory _$LargeAreaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeAreaResponseImplFromJson(json);

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
  final List<LargeArea> _largeAreas;
  @override
  @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
  List<LargeArea> get largeAreas {
    if (_largeAreas is EqualUnmodifiableListView) return _largeAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeAreas);
  }

  @override
  String toString() {
    return 'LargeAreaResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, largeAreas: $largeAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeAreaResponseImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(
              other._largeAreas,
              _largeAreas,
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
    const DeepCollectionEquality().hash(_largeAreas),
  );

  /// Create a copy of LargeAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LargeAreaResponseImplCopyWith<_$LargeAreaResponseImpl> get copyWith =>
      __$$LargeAreaResponseImplCopyWithImpl<_$LargeAreaResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeAreaResponseImplToJson(this);
  }
}

abstract class _LargeAreaResponse implements LargeAreaResponse {
  const factory _LargeAreaResponse({
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
    @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
    required final List<LargeArea> largeAreas,
  }) = _$LargeAreaResponseImpl;

  factory _LargeAreaResponse.fromJson(Map<String, dynamic> json) =
      _$LargeAreaResponseImpl.fromJson;

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
  @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
  List<LargeArea> get largeAreas;

  /// Create a copy of LargeAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LargeAreaResponseImplCopyWith<_$LargeAreaResponseImpl> get copyWith =>
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

MiddleAreaResponse _$MiddleAreaResponseFromJson(Map<String, dynamic> json) {
  return _MiddleAreaResponse.fromJson(json);
}

/// @nodoc
mixin _$MiddleAreaResponse {
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
  @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
  List<MiddleArea> get middleAreas => throw _privateConstructorUsedError;

  /// Serializes this MiddleAreaResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiddleAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiddleAreaResponseCopyWith<MiddleAreaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiddleAreaResponseCopyWith<$Res> {
  factory $MiddleAreaResponseCopyWith(
    MiddleAreaResponse value,
    $Res Function(MiddleAreaResponse) then,
  ) = _$MiddleAreaResponseCopyWithImpl<$Res, MiddleAreaResponse>;
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
    @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
    List<MiddleArea> middleAreas,
  });
}

/// @nodoc
class _$MiddleAreaResponseCopyWithImpl<$Res, $Val extends MiddleAreaResponse>
    implements $MiddleAreaResponseCopyWith<$Res> {
  _$MiddleAreaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiddleAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? middleAreas = null,
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
            middleAreas:
                null == middleAreas
                    ? _value.middleAreas
                    : middleAreas // ignore: cast_nullable_to_non_nullable
                        as List<MiddleArea>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MiddleAreaResponseImplCopyWith<$Res>
    implements $MiddleAreaResponseCopyWith<$Res> {
  factory _$$MiddleAreaResponseImplCopyWith(
    _$MiddleAreaResponseImpl value,
    $Res Function(_$MiddleAreaResponseImpl) then,
  ) = __$$MiddleAreaResponseImplCopyWithImpl<$Res>;
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
    @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
    List<MiddleArea> middleAreas,
  });
}

/// @nodoc
class __$$MiddleAreaResponseImplCopyWithImpl<$Res>
    extends _$MiddleAreaResponseCopyWithImpl<$Res, _$MiddleAreaResponseImpl>
    implements _$$MiddleAreaResponseImplCopyWith<$Res> {
  __$$MiddleAreaResponseImplCopyWithImpl(
    _$MiddleAreaResponseImpl _value,
    $Res Function(_$MiddleAreaResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MiddleAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersion = null,
    Object? resultsAvailable = null,
    Object? resultsReturned = null,
    Object? resultsStart = null,
    Object? middleAreas = null,
  }) {
    return _then(
      _$MiddleAreaResponseImpl(
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
        middleAreas:
            null == middleAreas
                ? _value._middleAreas
                : middleAreas // ignore: cast_nullable_to_non_nullable
                    as List<MiddleArea>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MiddleAreaResponseImpl implements _MiddleAreaResponse {
  const _$MiddleAreaResponseImpl({
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
    @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
    required final List<MiddleArea> middleAreas,
  }) : _middleAreas = middleAreas;

  factory _$MiddleAreaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiddleAreaResponseImplFromJson(json);

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
  final List<MiddleArea> _middleAreas;
  @override
  @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
  List<MiddleArea> get middleAreas {
    if (_middleAreas is EqualUnmodifiableListView) return _middleAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_middleAreas);
  }

  @override
  String toString() {
    return 'MiddleAreaResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, middleAreas: $middleAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiddleAreaResponseImpl &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                other.resultsAvailable == resultsAvailable) &&
            (identical(other.resultsReturned, resultsReturned) ||
                other.resultsReturned == resultsReturned) &&
            (identical(other.resultsStart, resultsStart) ||
                other.resultsStart == resultsStart) &&
            const DeepCollectionEquality().equals(
              other._middleAreas,
              _middleAreas,
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
    const DeepCollectionEquality().hash(_middleAreas),
  );

  /// Create a copy of MiddleAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiddleAreaResponseImplCopyWith<_$MiddleAreaResponseImpl> get copyWith =>
      __$$MiddleAreaResponseImplCopyWithImpl<_$MiddleAreaResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MiddleAreaResponseImplToJson(this);
  }
}

abstract class _MiddleAreaResponse implements MiddleAreaResponse {
  const factory _MiddleAreaResponse({
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
    @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
    required final List<MiddleArea> middleAreas,
  }) = _$MiddleAreaResponseImpl;

  factory _MiddleAreaResponse.fromJson(Map<String, dynamic> json) =
      _$MiddleAreaResponseImpl.fromJson;

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
  @JsonKey(name: 'middle_area', defaultValue: <MiddleArea>[])
  List<MiddleArea> get middleAreas;

  /// Create a copy of MiddleAreaResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiddleAreaResponseImplCopyWith<_$MiddleAreaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
