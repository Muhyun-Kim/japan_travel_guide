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
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get average => throw _privateConstructorUsedError;

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
  $Res call({String code, String name, String? average});
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
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? average = freezed,
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
            average:
                freezed == average
                    ? _value.average
                    : average // ignore: cast_nullable_to_non_nullable
                        as String?,
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
  $Res call({String code, String name, String? average});
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
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? average = freezed,
  }) {
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
        average:
            freezed == average
                ? _value.average
                : average // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetImpl implements _Budget {
  const _$BudgetImpl({required this.code, required this.name, this.average});

  factory _$BudgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetImplFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final String? average;

  @override
  String toString() {
    return 'Budget(code: $code, name: $name, average: $average)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, average);

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
    required final String code,
    required final String name,
    final String? average,
  }) = _$BudgetImpl;

  factory _Budget.fromJson(Map<String, dynamic> json) = _$BudgetImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  String? get average;

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
  String get apiVersion => throw _privateConstructorUsedError;
  int get resultsAvailable => throw _privateConstructorUsedError;
  int get resultsReturned => throw _privateConstructorUsedError;
  int get resultsStart => throw _privateConstructorUsedError;
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
    String apiVersion,
    int resultsAvailable,
    int resultsReturned,
    int resultsStart,
    List<Budget> budgets,
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
    String apiVersion,
    int resultsAvailable,
    int resultsReturned,
    int resultsStart,
    List<Budget> budgets,
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
    required this.apiVersion,
    required this.resultsAvailable,
    required this.resultsReturned,
    required this.resultsStart,
    required final List<Budget> budgets,
  }) : _budgets = budgets;

  factory _$BudgetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetResponseImplFromJson(json);

  @override
  final String apiVersion;
  @override
  final int resultsAvailable;
  @override
  final int resultsReturned;
  @override
  final int resultsStart;
  final List<Budget> _budgets;
  @override
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
    required final String apiVersion,
    required final int resultsAvailable,
    required final int resultsReturned,
    required final int resultsStart,
    required final List<Budget> budgets,
  }) = _$BudgetResponseImpl;

  factory _BudgetResponse.fromJson(Map<String, dynamic> json) =
      _$BudgetResponseImpl.fromJson;

  @override
  String get apiVersion;
  @override
  int get resultsAvailable;
  @override
  int get resultsReturned;
  @override
  int get resultsStart;
  @override
  List<Budget> get budgets;

  /// Create a copy of BudgetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetResponseImplCopyWith<_$BudgetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
