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

Budget _$BudgetFromJson(Map<String, dynamic> json) {
  return _Budget.fromJson(json);
}

/// @nodoc
mixin _$Budget {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Budget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Budget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetCopyWith<Budget> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCopyWith<$Res> {
  factory $BudgetCopyWith(Budget value, $Res Function(Budget) then) =
      _$BudgetCopyWithImpl<$Res, Budget>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
  });
}

/// @nodoc
class _$BudgetCopyWithImpl<$Res, $Val extends Budget>
    implements $BudgetCopyWith<$Res> {
  _$BudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Budget
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
abstract class _$$BudgetImplCopyWith<$Res> implements $BudgetCopyWith<$Res> {
  factory _$$BudgetImplCopyWith(
    _$BudgetImpl value,
    $Res Function(_$BudgetImpl) then,
  ) = __$$BudgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
  });
}

/// @nodoc
class __$$BudgetImplCopyWithImpl<$Res>
    extends _$BudgetCopyWithImpl<$Res, _$BudgetImpl>
    implements _$$BudgetImplCopyWith<$Res> {
  __$$BudgetImplCopyWithImpl(
    _$BudgetImpl _value,
    $Res Function(_$BudgetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Budget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$BudgetImpl(
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
class _$BudgetImpl implements _Budget {
  const _$BudgetImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
  });

  factory _$BudgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetImplFromJson(json);

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
    return 'Budget(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of Budget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetImplCopyWith<_$BudgetImpl> get copyWith =>
      __$$BudgetImplCopyWithImpl<_$BudgetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetImplToJson(this);
  }
}

abstract class _Budget implements Budget {
  const factory _Budget({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
  }) = _$BudgetImpl;

  factory _Budget.fromJson(Map<String, dynamic> json) = _$BudgetImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;

  /// Create a copy of Budget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetImplCopyWith<_$BudgetImpl> get copyWith =>
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
  @JsonKey(name: 'budget', defaultValue: <Budget>[])
  List<Budget> get budgets => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'budget', defaultValue: <Budget>[]) List<Budget> budgets,
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
                        as List<Budget>,
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
    @JsonKey(name: 'budget', defaultValue: <Budget>[]) List<Budget> budgets,
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
                    as List<Budget>,
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
    @JsonKey(name: 'budget', defaultValue: <Budget>[])
    required final List<Budget> budgets,
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
  final List<Budget> _budgets;
  @override
  @JsonKey(name: 'budget', defaultValue: <Budget>[])
  List<Budget> get budgets {
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
    @JsonKey(name: 'budget', defaultValue: <Budget>[])
    required final List<Budget> budgets,
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
  @JsonKey(name: 'budget', defaultValue: <Budget>[])
  List<Budget> get budgets;

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetResponseImplCopyWith<_$BudgetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LargeServiceArea _$LargeServiceAreaFromJson(Map<String, dynamic> json) {
  return _LargeServiceArea.fromJson(json);
}

/// @nodoc
mixin _$LargeServiceArea {
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LargeServiceArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LargeServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LargeServiceAreaCopyWith<LargeServiceArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeServiceAreaCopyWith<$Res> {
  factory $LargeServiceAreaCopyWith(
    LargeServiceArea value,
    $Res Function(LargeServiceArea) then,
  ) = _$LargeServiceAreaCopyWithImpl<$Res, LargeServiceArea>;
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
  });
}

/// @nodoc
class _$LargeServiceAreaCopyWithImpl<$Res, $Val extends LargeServiceArea>
    implements $LargeServiceAreaCopyWith<$Res> {
  _$LargeServiceAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LargeServiceArea
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
abstract class _$$LargeServiceAreaImplCopyWith<$Res>
    implements $LargeServiceAreaCopyWith<$Res> {
  factory _$$LargeServiceAreaImplCopyWith(
    _$LargeServiceAreaImpl value,
    $Res Function(_$LargeServiceAreaImpl) then,
  ) = __$$LargeServiceAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @SafeStringConverter() @JsonKey(name: 'code', defaultValue: '') String code,
    @SafeStringConverter() @JsonKey(name: 'name', defaultValue: '') String name,
  });
}

/// @nodoc
class __$$LargeServiceAreaImplCopyWithImpl<$Res>
    extends _$LargeServiceAreaCopyWithImpl<$Res, _$LargeServiceAreaImpl>
    implements _$$LargeServiceAreaImplCopyWith<$Res> {
  __$$LargeServiceAreaImplCopyWithImpl(
    _$LargeServiceAreaImpl _value,
    $Res Function(_$LargeServiceAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LargeServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$LargeServiceAreaImpl(
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
class _$LargeServiceAreaImpl implements _LargeServiceArea {
  const _$LargeServiceAreaImpl({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required this.code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required this.name,
  });

  factory _$LargeServiceAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LargeServiceAreaImplFromJson(json);

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
    return 'LargeServiceArea(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LargeServiceAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of LargeServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LargeServiceAreaImplCopyWith<_$LargeServiceAreaImpl> get copyWith =>
      __$$LargeServiceAreaImplCopyWithImpl<_$LargeServiceAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LargeServiceAreaImplToJson(this);
  }
}

abstract class _LargeServiceArea implements LargeServiceArea {
  const factory _LargeServiceArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required final String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required final String name,
  }) = _$LargeServiceAreaImpl;

  factory _LargeServiceArea.fromJson(Map<String, dynamic> json) =
      _$LargeServiceAreaImpl.fromJson;

  @override
  @SafeStringConverter()
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @SafeStringConverter()
  @JsonKey(name: 'name', defaultValue: '')
  String get name;

  /// Create a copy of LargeServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LargeServiceAreaImplCopyWith<_$LargeServiceAreaImpl> get copyWith =>
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
  @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
  List<LargeServiceArea> get largeServiceAreas =>
      throw _privateConstructorUsedError;

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
    @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
    List<LargeServiceArea> largeServiceAreas,
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
                        as List<LargeServiceArea>,
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
    @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
    List<LargeServiceArea> largeServiceAreas,
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
                    as List<LargeServiceArea>,
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
    @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
    required final List<LargeServiceArea> largeServiceAreas,
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
  final List<LargeServiceArea> _largeServiceAreas;
  @override
  @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
  List<LargeServiceArea> get largeServiceAreas {
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
    @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
    required final List<LargeServiceArea> largeServiceAreas,
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
  @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
  List<LargeServiceArea> get largeServiceAreas;

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
  LargeServiceArea get largeServiceArea => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'large_service_area') LargeServiceArea largeServiceArea,
  });

  $LargeServiceAreaCopyWith<$Res> get largeServiceArea;
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
                        as LargeServiceArea,
          )
          as $Val,
    );
  }

  /// Create a copy of ServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LargeServiceAreaCopyWith<$Res> get largeServiceArea {
    return $LargeServiceAreaCopyWith<$Res>(_value.largeServiceArea, (value) {
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
    @JsonKey(name: 'large_service_area') LargeServiceArea largeServiceArea,
  });

  @override
  $LargeServiceAreaCopyWith<$Res> get largeServiceArea;
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
                    as LargeServiceArea,
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
  final LargeServiceArea largeServiceArea;

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
    required final LargeServiceArea largeServiceArea,
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
  LargeServiceArea get largeServiceArea;

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
  ServiceArea get serviceArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_service_area')
  LargeServiceArea get largeServiceArea => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'service_area') ServiceArea serviceArea,
    @JsonKey(name: 'large_service_area') LargeServiceArea largeServiceArea,
  });

  $ServiceAreaCopyWith<$Res> get serviceArea;
  $LargeServiceAreaCopyWith<$Res> get largeServiceArea;
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
                        as ServiceArea,
            largeServiceArea:
                null == largeServiceArea
                    ? _value.largeServiceArea
                    : largeServiceArea // ignore: cast_nullable_to_non_nullable
                        as LargeServiceArea,
          )
          as $Val,
    );
  }

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceAreaCopyWith<$Res> get serviceArea {
    return $ServiceAreaCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of LargeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LargeServiceAreaCopyWith<$Res> get largeServiceArea {
    return $LargeServiceAreaCopyWith<$Res>(_value.largeServiceArea, (value) {
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
    @JsonKey(name: 'service_area') ServiceArea serviceArea,
    @JsonKey(name: 'large_service_area') LargeServiceArea largeServiceArea,
  });

  @override
  $ServiceAreaCopyWith<$Res> get serviceArea;
  @override
  $LargeServiceAreaCopyWith<$Res> get largeServiceArea;
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
                    as ServiceArea,
        largeServiceArea:
            null == largeServiceArea
                ? _value.largeServiceArea
                : largeServiceArea // ignore: cast_nullable_to_non_nullable
                    as LargeServiceArea,
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
  final ServiceArea serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  final LargeServiceArea largeServiceArea;

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
    @JsonKey(name: 'service_area') required final ServiceArea serviceArea,
    @JsonKey(name: 'large_service_area')
    required final LargeServiceArea largeServiceArea,
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
  ServiceArea get serviceArea;
  @override
  @JsonKey(name: 'large_service_area')
  LargeServiceArea get largeServiceArea;

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
