// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocalizedServiceAreaMaster _$LocalizedServiceAreaMasterFromJson(
  Map<String, dynamic> json,
) {
  return _LocalizedServiceAreaMaster.fromJson(json);
}

/// @nodoc
mixin _$LocalizedServiceAreaMaster {
  String get code => throw _privateConstructorUsedError;
  String get nameJa => throw _privateConstructorUsedError;
  String get nameKo => throw _privateConstructorUsedError;
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedServiceAreaMaster to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedServiceAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedServiceAreaMasterCopyWith<LocalizedServiceAreaMaster>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedServiceAreaMasterCopyWith<$Res> {
  factory $LocalizedServiceAreaMasterCopyWith(
    LocalizedServiceAreaMaster value,
    $Res Function(LocalizedServiceAreaMaster) then,
  ) =
      _$LocalizedServiceAreaMasterCopyWithImpl<
        $Res,
        LocalizedServiceAreaMaster
      >;
  @useResult
  $Res call({String code, String nameJa, String nameKo, bool isPopular});
}

/// @nodoc
class _$LocalizedServiceAreaMasterCopyWithImpl<
  $Res,
  $Val extends LocalizedServiceAreaMaster
>
    implements $LocalizedServiceAreaMasterCopyWith<$Res> {
  _$LocalizedServiceAreaMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedServiceAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? isPopular = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            nameJa:
                null == nameJa
                    ? _value.nameJa
                    : nameJa // ignore: cast_nullable_to_non_nullable
                        as String,
            nameKo:
                null == nameKo
                    ? _value.nameKo
                    : nameKo // ignore: cast_nullable_to_non_nullable
                        as String,
            isPopular:
                null == isPopular
                    ? _value.isPopular
                    : isPopular // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizedServiceAreaMasterImplCopyWith<$Res>
    implements $LocalizedServiceAreaMasterCopyWith<$Res> {
  factory _$$LocalizedServiceAreaMasterImplCopyWith(
    _$LocalizedServiceAreaMasterImpl value,
    $Res Function(_$LocalizedServiceAreaMasterImpl) then,
  ) = __$$LocalizedServiceAreaMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String nameJa, String nameKo, bool isPopular});
}

/// @nodoc
class __$$LocalizedServiceAreaMasterImplCopyWithImpl<$Res>
    extends
        _$LocalizedServiceAreaMasterCopyWithImpl<
          $Res,
          _$LocalizedServiceAreaMasterImpl
        >
    implements _$$LocalizedServiceAreaMasterImplCopyWith<$Res> {
  __$$LocalizedServiceAreaMasterImplCopyWithImpl(
    _$LocalizedServiceAreaMasterImpl _value,
    $Res Function(_$LocalizedServiceAreaMasterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedServiceAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedServiceAreaMasterImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameJa:
            null == nameJa
                ? _value.nameJa
                : nameJa // ignore: cast_nullable_to_non_nullable
                    as String,
        nameKo:
            null == nameKo
                ? _value.nameKo
                : nameKo // ignore: cast_nullable_to_non_nullable
                    as String,
        isPopular:
            null == isPopular
                ? _value.isPopular
                : isPopular // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedServiceAreaMasterImpl implements _LocalizedServiceAreaMaster {
  const _$LocalizedServiceAreaMasterImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    required this.isPopular,
  });

  factory _$LocalizedServiceAreaMasterImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$LocalizedServiceAreaMasterImplFromJson(json);

  @override
  final String code;
  @override
  final String nameJa;
  @override
  final String nameKo;
  @override
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedServiceAreaMaster(code: $code, nameJa: $nameJa, nameKo: $nameKo, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedServiceAreaMasterImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, nameJa, nameKo, isPopular);

  /// Create a copy of LocalizedServiceAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedServiceAreaMasterImplCopyWith<_$LocalizedServiceAreaMasterImpl>
  get copyWith => __$$LocalizedServiceAreaMasterImplCopyWithImpl<
    _$LocalizedServiceAreaMasterImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedServiceAreaMasterImplToJson(this);
  }
}

abstract class _LocalizedServiceAreaMaster
    implements LocalizedServiceAreaMaster {
  const factory _LocalizedServiceAreaMaster({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    required final bool isPopular,
  }) = _$LocalizedServiceAreaMasterImpl;

  factory _LocalizedServiceAreaMaster.fromJson(Map<String, dynamic> json) =
      _$LocalizedServiceAreaMasterImpl.fromJson;

  @override
  String get code;
  @override
  String get nameJa;
  @override
  String get nameKo;
  @override
  bool get isPopular;

  /// Create a copy of LocalizedServiceAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedServiceAreaMasterImplCopyWith<_$LocalizedServiceAreaMasterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LocalizedLargeAreaMaster _$LocalizedLargeAreaMasterFromJson(
  Map<String, dynamic> json,
) {
  return _LocalizedLargeAreaMaster.fromJson(json);
}

/// @nodoc
mixin _$LocalizedLargeAreaMaster {
  String get code => throw _privateConstructorUsedError;
  String get nameJa => throw _privateConstructorUsedError;
  String get nameKo => throw _privateConstructorUsedError;
  String get serviceAreaCode => throw _privateConstructorUsedError;

  /// Serializes this LocalizedLargeAreaMaster to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedLargeAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedLargeAreaMasterCopyWith<LocalizedLargeAreaMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedLargeAreaMasterCopyWith<$Res> {
  factory $LocalizedLargeAreaMasterCopyWith(
    LocalizedLargeAreaMaster value,
    $Res Function(LocalizedLargeAreaMaster) then,
  ) = _$LocalizedLargeAreaMasterCopyWithImpl<$Res, LocalizedLargeAreaMaster>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String serviceAreaCode,
  });
}

/// @nodoc
class _$LocalizedLargeAreaMasterCopyWithImpl<
  $Res,
  $Val extends LocalizedLargeAreaMaster
>
    implements $LocalizedLargeAreaMasterCopyWith<$Res> {
  _$LocalizedLargeAreaMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedLargeAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? serviceAreaCode = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            nameJa:
                null == nameJa
                    ? _value.nameJa
                    : nameJa // ignore: cast_nullable_to_non_nullable
                        as String,
            nameKo:
                null == nameKo
                    ? _value.nameKo
                    : nameKo // ignore: cast_nullable_to_non_nullable
                        as String,
            serviceAreaCode:
                null == serviceAreaCode
                    ? _value.serviceAreaCode
                    : serviceAreaCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizedLargeAreaMasterImplCopyWith<$Res>
    implements $LocalizedLargeAreaMasterCopyWith<$Res> {
  factory _$$LocalizedLargeAreaMasterImplCopyWith(
    _$LocalizedLargeAreaMasterImpl value,
    $Res Function(_$LocalizedLargeAreaMasterImpl) then,
  ) = __$$LocalizedLargeAreaMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String serviceAreaCode,
  });
}

/// @nodoc
class __$$LocalizedLargeAreaMasterImplCopyWithImpl<$Res>
    extends
        _$LocalizedLargeAreaMasterCopyWithImpl<
          $Res,
          _$LocalizedLargeAreaMasterImpl
        >
    implements _$$LocalizedLargeAreaMasterImplCopyWith<$Res> {
  __$$LocalizedLargeAreaMasterImplCopyWithImpl(
    _$LocalizedLargeAreaMasterImpl _value,
    $Res Function(_$LocalizedLargeAreaMasterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedLargeAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? serviceAreaCode = null,
  }) {
    return _then(
      _$LocalizedLargeAreaMasterImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameJa:
            null == nameJa
                ? _value.nameJa
                : nameJa // ignore: cast_nullable_to_non_nullable
                    as String,
        nameKo:
            null == nameKo
                ? _value.nameKo
                : nameKo // ignore: cast_nullable_to_non_nullable
                    as String,
        serviceAreaCode:
            null == serviceAreaCode
                ? _value.serviceAreaCode
                : serviceAreaCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedLargeAreaMasterImpl implements _LocalizedLargeAreaMaster {
  const _$LocalizedLargeAreaMasterImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    required this.serviceAreaCode,
  });

  factory _$LocalizedLargeAreaMasterImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedLargeAreaMasterImplFromJson(json);

  @override
  final String code;
  @override
  final String nameJa;
  @override
  final String nameKo;
  @override
  final String serviceAreaCode;

  @override
  String toString() {
    return 'LocalizedLargeAreaMaster(code: $code, nameJa: $nameJa, nameKo: $nameKo, serviceAreaCode: $serviceAreaCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedLargeAreaMasterImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.serviceAreaCode, serviceAreaCode) ||
                other.serviceAreaCode == serviceAreaCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameJa, nameKo, serviceAreaCode);

  /// Create a copy of LocalizedLargeAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedLargeAreaMasterImplCopyWith<_$LocalizedLargeAreaMasterImpl>
  get copyWith => __$$LocalizedLargeAreaMasterImplCopyWithImpl<
    _$LocalizedLargeAreaMasterImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedLargeAreaMasterImplToJson(this);
  }
}

abstract class _LocalizedLargeAreaMaster implements LocalizedLargeAreaMaster {
  const factory _LocalizedLargeAreaMaster({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    required final String serviceAreaCode,
  }) = _$LocalizedLargeAreaMasterImpl;

  factory _LocalizedLargeAreaMaster.fromJson(Map<String, dynamic> json) =
      _$LocalizedLargeAreaMasterImpl.fromJson;

  @override
  String get code;
  @override
  String get nameJa;
  @override
  String get nameKo;
  @override
  String get serviceAreaCode;

  /// Create a copy of LocalizedLargeAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedLargeAreaMasterImplCopyWith<_$LocalizedLargeAreaMasterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LocalizedMiddleAreaMaster _$LocalizedMiddleAreaMasterFromJson(
  Map<String, dynamic> json,
) {
  return _LocalizedMiddleAreaMaster.fromJson(json);
}

/// @nodoc
mixin _$LocalizedMiddleAreaMaster {
  String get code => throw _privateConstructorUsedError;
  String get nameJa => throw _privateConstructorUsedError;
  String get nameKo => throw _privateConstructorUsedError;
  String get largeAreaCode => throw _privateConstructorUsedError;
  String get serviceAreaCode => throw _privateConstructorUsedError;
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedMiddleAreaMaster to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedMiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedMiddleAreaMasterCopyWith<LocalizedMiddleAreaMaster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedMiddleAreaMasterCopyWith<$Res> {
  factory $LocalizedMiddleAreaMasterCopyWith(
    LocalizedMiddleAreaMaster value,
    $Res Function(LocalizedMiddleAreaMaster) then,
  ) = _$LocalizedMiddleAreaMasterCopyWithImpl<$Res, LocalizedMiddleAreaMaster>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String largeAreaCode,
    String serviceAreaCode,
    bool isPopular,
  });
}

/// @nodoc
class _$LocalizedMiddleAreaMasterCopyWithImpl<
  $Res,
  $Val extends LocalizedMiddleAreaMaster
>
    implements $LocalizedMiddleAreaMasterCopyWith<$Res> {
  _$LocalizedMiddleAreaMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedMiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? largeAreaCode = null,
    Object? serviceAreaCode = null,
    Object? isPopular = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            nameJa:
                null == nameJa
                    ? _value.nameJa
                    : nameJa // ignore: cast_nullable_to_non_nullable
                        as String,
            nameKo:
                null == nameKo
                    ? _value.nameKo
                    : nameKo // ignore: cast_nullable_to_non_nullable
                        as String,
            largeAreaCode:
                null == largeAreaCode
                    ? _value.largeAreaCode
                    : largeAreaCode // ignore: cast_nullable_to_non_nullable
                        as String,
            serviceAreaCode:
                null == serviceAreaCode
                    ? _value.serviceAreaCode
                    : serviceAreaCode // ignore: cast_nullable_to_non_nullable
                        as String,
            isPopular:
                null == isPopular
                    ? _value.isPopular
                    : isPopular // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizedMiddleAreaMasterImplCopyWith<$Res>
    implements $LocalizedMiddleAreaMasterCopyWith<$Res> {
  factory _$$LocalizedMiddleAreaMasterImplCopyWith(
    _$LocalizedMiddleAreaMasterImpl value,
    $Res Function(_$LocalizedMiddleAreaMasterImpl) then,
  ) = __$$LocalizedMiddleAreaMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String largeAreaCode,
    String serviceAreaCode,
    bool isPopular,
  });
}

/// @nodoc
class __$$LocalizedMiddleAreaMasterImplCopyWithImpl<$Res>
    extends
        _$LocalizedMiddleAreaMasterCopyWithImpl<
          $Res,
          _$LocalizedMiddleAreaMasterImpl
        >
    implements _$$LocalizedMiddleAreaMasterImplCopyWith<$Res> {
  __$$LocalizedMiddleAreaMasterImplCopyWithImpl(
    _$LocalizedMiddleAreaMasterImpl _value,
    $Res Function(_$LocalizedMiddleAreaMasterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedMiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? largeAreaCode = null,
    Object? serviceAreaCode = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedMiddleAreaMasterImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameJa:
            null == nameJa
                ? _value.nameJa
                : nameJa // ignore: cast_nullable_to_non_nullable
                    as String,
        nameKo:
            null == nameKo
                ? _value.nameKo
                : nameKo // ignore: cast_nullable_to_non_nullable
                    as String,
        largeAreaCode:
            null == largeAreaCode
                ? _value.largeAreaCode
                : largeAreaCode // ignore: cast_nullable_to_non_nullable
                    as String,
        serviceAreaCode:
            null == serviceAreaCode
                ? _value.serviceAreaCode
                : serviceAreaCode // ignore: cast_nullable_to_non_nullable
                    as String,
        isPopular:
            null == isPopular
                ? _value.isPopular
                : isPopular // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedMiddleAreaMasterImpl implements _LocalizedMiddleAreaMaster {
  const _$LocalizedMiddleAreaMasterImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    required this.largeAreaCode,
    required this.serviceAreaCode,
    required this.isPopular,
  });

  factory _$LocalizedMiddleAreaMasterImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedMiddleAreaMasterImplFromJson(json);

  @override
  final String code;
  @override
  final String nameJa;
  @override
  final String nameKo;
  @override
  final String largeAreaCode;
  @override
  final String serviceAreaCode;
  @override
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedMiddleAreaMaster(code: $code, nameJa: $nameJa, nameKo: $nameKo, largeAreaCode: $largeAreaCode, serviceAreaCode: $serviceAreaCode, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedMiddleAreaMasterImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.largeAreaCode, largeAreaCode) ||
                other.largeAreaCode == largeAreaCode) &&
            (identical(other.serviceAreaCode, serviceAreaCode) ||
                other.serviceAreaCode == serviceAreaCode) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    nameJa,
    nameKo,
    largeAreaCode,
    serviceAreaCode,
    isPopular,
  );

  /// Create a copy of LocalizedMiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedMiddleAreaMasterImplCopyWith<_$LocalizedMiddleAreaMasterImpl>
  get copyWith => __$$LocalizedMiddleAreaMasterImplCopyWithImpl<
    _$LocalizedMiddleAreaMasterImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedMiddleAreaMasterImplToJson(this);
  }
}

abstract class _LocalizedMiddleAreaMaster implements LocalizedMiddleAreaMaster {
  const factory _LocalizedMiddleAreaMaster({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    required final String largeAreaCode,
    required final String serviceAreaCode,
    required final bool isPopular,
  }) = _$LocalizedMiddleAreaMasterImpl;

  factory _LocalizedMiddleAreaMaster.fromJson(Map<String, dynamic> json) =
      _$LocalizedMiddleAreaMasterImpl.fromJson;

  @override
  String get code;
  @override
  String get nameJa;
  @override
  String get nameKo;
  @override
  String get largeAreaCode;
  @override
  String get serviceAreaCode;
  @override
  bool get isPopular;

  /// Create a copy of LocalizedMiddleAreaMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedMiddleAreaMasterImplCopyWith<_$LocalizedMiddleAreaMasterImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LocalizedAreaSelectionMaster _$LocalizedAreaSelectionMasterFromJson(
  Map<String, dynamic> json,
) {
  return _LocalizedAreaSelectionMaster.fromJson(json);
}

/// @nodoc
mixin _$LocalizedAreaSelectionMaster {
  LocalizedServiceAreaMaster get serviceArea =>
      throw _privateConstructorUsedError;
  LocalizedLargeAreaMaster? get selectedLargeArea =>
      throw _privateConstructorUsedError;
  LocalizedMiddleAreaMaster? get selectedMiddleArea =>
      throw _privateConstructorUsedError;

  /// Serializes this LocalizedAreaSelectionMaster to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedAreaSelectionMasterCopyWith<LocalizedAreaSelectionMaster>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedAreaSelectionMasterCopyWith<$Res> {
  factory $LocalizedAreaSelectionMasterCopyWith(
    LocalizedAreaSelectionMaster value,
    $Res Function(LocalizedAreaSelectionMaster) then,
  ) =
      _$LocalizedAreaSelectionMasterCopyWithImpl<
        $Res,
        LocalizedAreaSelectionMaster
      >;
  @useResult
  $Res call({
    LocalizedServiceAreaMaster serviceArea,
    LocalizedLargeAreaMaster? selectedLargeArea,
    LocalizedMiddleAreaMaster? selectedMiddleArea,
  });

  $LocalizedServiceAreaMasterCopyWith<$Res> get serviceArea;
  $LocalizedLargeAreaMasterCopyWith<$Res>? get selectedLargeArea;
  $LocalizedMiddleAreaMasterCopyWith<$Res>? get selectedMiddleArea;
}

/// @nodoc
class _$LocalizedAreaSelectionMasterCopyWithImpl<
  $Res,
  $Val extends LocalizedAreaSelectionMaster
>
    implements $LocalizedAreaSelectionMasterCopyWith<$Res> {
  _$LocalizedAreaSelectionMasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? selectedLargeArea = freezed,
    Object? selectedMiddleArea = freezed,
  }) {
    return _then(
      _value.copyWith(
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedServiceAreaMaster,
            selectedLargeArea:
                freezed == selectedLargeArea
                    ? _value.selectedLargeArea
                    : selectedLargeArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedLargeAreaMaster?,
            selectedMiddleArea:
                freezed == selectedMiddleArea
                    ? _value.selectedMiddleArea
                    : selectedMiddleArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedMiddleAreaMaster?,
          )
          as $Val,
    );
  }

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedServiceAreaMasterCopyWith<$Res> get serviceArea {
    return $LocalizedServiceAreaMasterCopyWith<$Res>(_value.serviceArea, (
      value,
    ) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedLargeAreaMasterCopyWith<$Res>? get selectedLargeArea {
    if (_value.selectedLargeArea == null) {
      return null;
    }

    return $LocalizedLargeAreaMasterCopyWith<$Res>(_value.selectedLargeArea!, (
      value,
    ) {
      return _then(_value.copyWith(selectedLargeArea: value) as $Val);
    });
  }

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedMiddleAreaMasterCopyWith<$Res>? get selectedMiddleArea {
    if (_value.selectedMiddleArea == null) {
      return null;
    }

    return $LocalizedMiddleAreaMasterCopyWith<$Res>(
      _value.selectedMiddleArea!,
      (value) {
        return _then(_value.copyWith(selectedMiddleArea: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$LocalizedAreaSelectionMasterImplCopyWith<$Res>
    implements $LocalizedAreaSelectionMasterCopyWith<$Res> {
  factory _$$LocalizedAreaSelectionMasterImplCopyWith(
    _$LocalizedAreaSelectionMasterImpl value,
    $Res Function(_$LocalizedAreaSelectionMasterImpl) then,
  ) = __$$LocalizedAreaSelectionMasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedServiceAreaMaster serviceArea,
    LocalizedLargeAreaMaster? selectedLargeArea,
    LocalizedMiddleAreaMaster? selectedMiddleArea,
  });

  @override
  $LocalizedServiceAreaMasterCopyWith<$Res> get serviceArea;
  @override
  $LocalizedLargeAreaMasterCopyWith<$Res>? get selectedLargeArea;
  @override
  $LocalizedMiddleAreaMasterCopyWith<$Res>? get selectedMiddleArea;
}

/// @nodoc
class __$$LocalizedAreaSelectionMasterImplCopyWithImpl<$Res>
    extends
        _$LocalizedAreaSelectionMasterCopyWithImpl<
          $Res,
          _$LocalizedAreaSelectionMasterImpl
        >
    implements _$$LocalizedAreaSelectionMasterImplCopyWith<$Res> {
  __$$LocalizedAreaSelectionMasterImplCopyWithImpl(
    _$LocalizedAreaSelectionMasterImpl _value,
    $Res Function(_$LocalizedAreaSelectionMasterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? selectedLargeArea = freezed,
    Object? selectedMiddleArea = freezed,
  }) {
    return _then(
      _$LocalizedAreaSelectionMasterImpl(
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedServiceAreaMaster,
        selectedLargeArea:
            freezed == selectedLargeArea
                ? _value.selectedLargeArea
                : selectedLargeArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedLargeAreaMaster?,
        selectedMiddleArea:
            freezed == selectedMiddleArea
                ? _value.selectedMiddleArea
                : selectedMiddleArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedMiddleAreaMaster?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedAreaSelectionMasterImpl
    implements _LocalizedAreaSelectionMaster {
  const _$LocalizedAreaSelectionMasterImpl({
    required this.serviceArea,
    this.selectedLargeArea,
    this.selectedMiddleArea,
  });

  factory _$LocalizedAreaSelectionMasterImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$LocalizedAreaSelectionMasterImplFromJson(json);

  @override
  final LocalizedServiceAreaMaster serviceArea;
  @override
  final LocalizedLargeAreaMaster? selectedLargeArea;
  @override
  final LocalizedMiddleAreaMaster? selectedMiddleArea;

  @override
  String toString() {
    return 'LocalizedAreaSelectionMaster(serviceArea: $serviceArea, selectedLargeArea: $selectedLargeArea, selectedMiddleArea: $selectedMiddleArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedAreaSelectionMasterImpl &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.selectedLargeArea, selectedLargeArea) ||
                other.selectedLargeArea == selectedLargeArea) &&
            (identical(other.selectedMiddleArea, selectedMiddleArea) ||
                other.selectedMiddleArea == selectedMiddleArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    serviceArea,
    selectedLargeArea,
    selectedMiddleArea,
  );

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedAreaSelectionMasterImplCopyWith<
    _$LocalizedAreaSelectionMasterImpl
  >
  get copyWith => __$$LocalizedAreaSelectionMasterImplCopyWithImpl<
    _$LocalizedAreaSelectionMasterImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedAreaSelectionMasterImplToJson(this);
  }
}

abstract class _LocalizedAreaSelectionMaster
    implements LocalizedAreaSelectionMaster {
  const factory _LocalizedAreaSelectionMaster({
    required final LocalizedServiceAreaMaster serviceArea,
    final LocalizedLargeAreaMaster? selectedLargeArea,
    final LocalizedMiddleAreaMaster? selectedMiddleArea,
  }) = _$LocalizedAreaSelectionMasterImpl;

  factory _LocalizedAreaSelectionMaster.fromJson(Map<String, dynamic> json) =
      _$LocalizedAreaSelectionMasterImpl.fromJson;

  @override
  LocalizedServiceAreaMaster get serviceArea;
  @override
  LocalizedLargeAreaMaster? get selectedLargeArea;
  @override
  LocalizedMiddleAreaMaster? get selectedMiddleArea;

  /// Create a copy of LocalizedAreaSelectionMaster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedAreaSelectionMasterImplCopyWith<
    _$LocalizedAreaSelectionMasterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
