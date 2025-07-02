// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegionData _$RegionDataFromJson(Map<String, dynamic> json) {
  return _RegionData.fromJson(json);
}

/// @nodoc
mixin _$RegionData {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RegionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionDataCopyWith<RegionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionDataCopyWith<$Res> {
  factory $RegionDataCopyWith(
    RegionData value,
    $Res Function(RegionData) then,
  ) = _$RegionDataCopyWithImpl<$Res, RegionData>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$RegionDataCopyWithImpl<$Res, $Val extends RegionData>
    implements $RegionDataCopyWith<$Res> {
  _$RegionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionData
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
abstract class _$$RegionDataImplCopyWith<$Res>
    implements $RegionDataCopyWith<$Res> {
  factory _$$RegionDataImplCopyWith(
    _$RegionDataImpl value,
    $Res Function(_$RegionDataImpl) then,
  ) = __$$RegionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$RegionDataImplCopyWithImpl<$Res>
    extends _$RegionDataCopyWithImpl<$Res, _$RegionDataImpl>
    implements _$$RegionDataImplCopyWith<$Res> {
  __$$RegionDataImplCopyWithImpl(
    _$RegionDataImpl _value,
    $Res Function(_$RegionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$RegionDataImpl(
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
class _$RegionDataImpl implements _RegionData {
  const _$RegionDataImpl({required this.code, required this.name});

  factory _$RegionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionDataImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'RegionData(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of RegionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionDataImplCopyWith<_$RegionDataImpl> get copyWith =>
      __$$RegionDataImplCopyWithImpl<_$RegionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionDataImplToJson(this);
  }
}

abstract class _RegionData implements RegionData {
  const factory _RegionData({
    required final String code,
    required final String name,
  }) = _$RegionDataImpl;

  factory _RegionData.fromJson(Map<String, dynamic> json) =
      _$RegionDataImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of RegionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionDataImplCopyWith<_$RegionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
