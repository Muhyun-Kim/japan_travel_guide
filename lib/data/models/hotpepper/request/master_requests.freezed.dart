// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BudgetMasterRequest _$BudgetMasterRequestFromJson(Map<String, dynamic> json) {
  return _BudgetMasterRequest.fromJson(json);
}

/// @nodoc
mixin _$BudgetMasterRequest {
  /// Serializes this BudgetMasterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetMasterRequestCopyWith<$Res> {
  factory $BudgetMasterRequestCopyWith(
    BudgetMasterRequest value,
    $Res Function(BudgetMasterRequest) then,
  ) = _$BudgetMasterRequestCopyWithImpl<$Res, BudgetMasterRequest>;
}

/// @nodoc
class _$BudgetMasterRequestCopyWithImpl<$Res, $Val extends BudgetMasterRequest>
    implements $BudgetMasterRequestCopyWith<$Res> {
  _$BudgetMasterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetMasterRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BudgetMasterRequestImplCopyWith<$Res> {
  factory _$$BudgetMasterRequestImplCopyWith(
    _$BudgetMasterRequestImpl value,
    $Res Function(_$BudgetMasterRequestImpl) then,
  ) = __$$BudgetMasterRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BudgetMasterRequestImplCopyWithImpl<$Res>
    extends _$BudgetMasterRequestCopyWithImpl<$Res, _$BudgetMasterRequestImpl>
    implements _$$BudgetMasterRequestImplCopyWith<$Res> {
  __$$BudgetMasterRequestImplCopyWithImpl(
    _$BudgetMasterRequestImpl _value,
    $Res Function(_$BudgetMasterRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BudgetMasterRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BudgetMasterRequestImpl implements _BudgetMasterRequest {
  const _$BudgetMasterRequestImpl();

  factory _$BudgetMasterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetMasterRequestImplFromJson(json);

  @override
  String toString() {
    return 'BudgetMasterRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetMasterRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetMasterRequestImplToJson(this);
  }
}

abstract class _BudgetMasterRequest implements BudgetMasterRequest {
  const factory _BudgetMasterRequest() = _$BudgetMasterRequestImpl;

  factory _BudgetMasterRequest.fromJson(Map<String, dynamic> json) =
      _$BudgetMasterRequestImpl.fromJson;
}
