// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocalizedAreaBase _$LocalizedAreaBaseFromJson(Map<String, dynamic> json) {
  return _LocalizedAreaBase.fromJson(json);
}

/// @nodoc
mixin _$LocalizedAreaBase {
  /// 지역 코드 (예: SA11, Z011, Y055, X050)
  String get code => throw _privateConstructorUsedError;

  /// 일본어 원문
  String get nameJa => throw _privateConstructorUsedError;

  /// 한국어 번역
  String get nameKo => throw _privateConstructorUsedError;

  /// 정렬 순서
  int get sortOrder => throw _privateConstructorUsedError;

  /// 인기 지역 여부 (주요 관광지)
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedAreaBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedAreaBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedAreaBaseCopyWith<LocalizedAreaBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedAreaBaseCopyWith<$Res> {
  factory $LocalizedAreaBaseCopyWith(
    LocalizedAreaBase value,
    $Res Function(LocalizedAreaBase) then,
  ) = _$LocalizedAreaBaseCopyWithImpl<$Res, LocalizedAreaBase>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class _$LocalizedAreaBaseCopyWithImpl<$Res, $Val extends LocalizedAreaBase>
    implements $LocalizedAreaBaseCopyWith<$Res> {
  _$LocalizedAreaBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedAreaBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? sortOrder = null,
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
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$LocalizedAreaBaseImplCopyWith<$Res>
    implements $LocalizedAreaBaseCopyWith<$Res> {
  factory _$$LocalizedAreaBaseImplCopyWith(
    _$LocalizedAreaBaseImpl value,
    $Res Function(_$LocalizedAreaBaseImpl) then,
  ) = __$$LocalizedAreaBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class __$$LocalizedAreaBaseImplCopyWithImpl<$Res>
    extends _$LocalizedAreaBaseCopyWithImpl<$Res, _$LocalizedAreaBaseImpl>
    implements _$$LocalizedAreaBaseImplCopyWith<$Res> {
  __$$LocalizedAreaBaseImplCopyWithImpl(
    _$LocalizedAreaBaseImpl _value,
    $Res Function(_$LocalizedAreaBaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedAreaBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? sortOrder = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedAreaBaseImpl(
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
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$LocalizedAreaBaseImpl implements _LocalizedAreaBase {
  const _$LocalizedAreaBaseImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    this.sortOrder = 0,
    this.isPopular = false,
  });

  factory _$LocalizedAreaBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedAreaBaseImplFromJson(json);

  /// 지역 코드 (예: SA11, Z011, Y055, X050)
  @override
  final String code;

  /// 일본어 원문
  @override
  final String nameJa;

  /// 한국어 번역
  @override
  final String nameKo;

  /// 정렬 순서
  @override
  @JsonKey()
  final int sortOrder;

  /// 인기 지역 여부 (주요 관광지)
  @override
  @JsonKey()
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedAreaBase(code: $code, nameJa: $nameJa, nameKo: $nameKo, sortOrder: $sortOrder, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedAreaBaseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameJa, nameKo, sortOrder, isPopular);

  /// Create a copy of LocalizedAreaBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedAreaBaseImplCopyWith<_$LocalizedAreaBaseImpl> get copyWith =>
      __$$LocalizedAreaBaseImplCopyWithImpl<_$LocalizedAreaBaseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedAreaBaseImplToJson(this);
  }
}

abstract class _LocalizedAreaBase implements LocalizedAreaBase {
  const factory _LocalizedAreaBase({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    final int sortOrder,
    final bool isPopular,
  }) = _$LocalizedAreaBaseImpl;

  factory _LocalizedAreaBase.fromJson(Map<String, dynamic> json) =
      _$LocalizedAreaBaseImpl.fromJson;

  /// 지역 코드 (예: SA11, Z011, Y055, X050)
  @override
  String get code;

  /// 일본어 원문
  @override
  String get nameJa;

  /// 한국어 번역
  @override
  String get nameKo;

  /// 정렬 순서
  @override
  int get sortOrder;

  /// 인기 지역 여부 (주요 관광지)
  @override
  bool get isPopular;

  /// Create a copy of LocalizedAreaBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedAreaBaseImplCopyWith<_$LocalizedAreaBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalizedServiceArea _$LocalizedServiceAreaFromJson(Map<String, dynamic> json) {
  return _LocalizedServiceArea.fromJson(json);
}

/// @nodoc
mixin _$LocalizedServiceArea {
  /// 서비스 지역 코드 (예: SA11, SA12)
  String get code => throw _privateConstructorUsedError;

  /// 일본어 원문
  String get nameJa => throw _privateConstructorUsedError;

  /// 한국어 번역
  String get nameKo => throw _privateConstructorUsedError;

  /// 정렬 순서
  int get sortOrder => throw _privateConstructorUsedError;

  /// 인기 지역 여부
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedServiceArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedServiceAreaCopyWith<LocalizedServiceArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedServiceAreaCopyWith<$Res> {
  factory $LocalizedServiceAreaCopyWith(
    LocalizedServiceArea value,
    $Res Function(LocalizedServiceArea) then,
  ) = _$LocalizedServiceAreaCopyWithImpl<$Res, LocalizedServiceArea>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class _$LocalizedServiceAreaCopyWithImpl<
  $Res,
  $Val extends LocalizedServiceArea
>
    implements $LocalizedServiceAreaCopyWith<$Res> {
  _$LocalizedServiceAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? sortOrder = null,
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
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$LocalizedServiceAreaImplCopyWith<$Res>
    implements $LocalizedServiceAreaCopyWith<$Res> {
  factory _$$LocalizedServiceAreaImplCopyWith(
    _$LocalizedServiceAreaImpl value,
    $Res Function(_$LocalizedServiceAreaImpl) then,
  ) = __$$LocalizedServiceAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class __$$LocalizedServiceAreaImplCopyWithImpl<$Res>
    extends _$LocalizedServiceAreaCopyWithImpl<$Res, _$LocalizedServiceAreaImpl>
    implements _$$LocalizedServiceAreaImplCopyWith<$Res> {
  __$$LocalizedServiceAreaImplCopyWithImpl(
    _$LocalizedServiceAreaImpl _value,
    $Res Function(_$LocalizedServiceAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? sortOrder = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedServiceAreaImpl(
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
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$LocalizedServiceAreaImpl implements _LocalizedServiceArea {
  const _$LocalizedServiceAreaImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    this.sortOrder = 0,
    this.isPopular = false,
  });

  factory _$LocalizedServiceAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedServiceAreaImplFromJson(json);

  /// 서비스 지역 코드 (예: SA11, SA12)
  @override
  final String code;

  /// 일본어 원문
  @override
  final String nameJa;

  /// 한국어 번역
  @override
  final String nameKo;

  /// 정렬 순서
  @override
  @JsonKey()
  final int sortOrder;

  /// 인기 지역 여부
  @override
  @JsonKey()
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedServiceArea(code: $code, nameJa: $nameJa, nameKo: $nameKo, sortOrder: $sortOrder, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedServiceAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameJa, nameKo, sortOrder, isPopular);

  /// Create a copy of LocalizedServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedServiceAreaImplCopyWith<_$LocalizedServiceAreaImpl>
  get copyWith =>
      __$$LocalizedServiceAreaImplCopyWithImpl<_$LocalizedServiceAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedServiceAreaImplToJson(this);
  }
}

abstract class _LocalizedServiceArea implements LocalizedServiceArea {
  const factory _LocalizedServiceArea({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    final int sortOrder,
    final bool isPopular,
  }) = _$LocalizedServiceAreaImpl;

  factory _LocalizedServiceArea.fromJson(Map<String, dynamic> json) =
      _$LocalizedServiceAreaImpl.fromJson;

  /// 서비스 지역 코드 (예: SA11, SA12)
  @override
  String get code;

  /// 일본어 원문
  @override
  String get nameJa;

  /// 한국어 번역
  @override
  String get nameKo;

  /// 정렬 순서
  @override
  int get sortOrder;

  /// 인기 지역 여부
  @override
  bool get isPopular;

  /// Create a copy of LocalizedServiceArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedServiceAreaImplCopyWith<_$LocalizedServiceAreaImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LocalizedLargeArea _$LocalizedLargeAreaFromJson(Map<String, dynamic> json) {
  return _LocalizedLargeArea.fromJson(json);
}

/// @nodoc
mixin _$LocalizedLargeArea {
  /// 대지역 코드 (예: Z011, Z012)
  String get code => throw _privateConstructorUsedError;

  /// 일본어 원문
  String get nameJa => throw _privateConstructorUsedError;

  /// 한국어 번역
  String get nameKo => throw _privateConstructorUsedError;

  /// 소속 서비스 지역 코드
  String get serviceAreaCode => throw _privateConstructorUsedError;

  /// 정렬 순서
  int get sortOrder => throw _privateConstructorUsedError;

  /// 인기 지역 여부
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedLargeArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedLargeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedLargeAreaCopyWith<LocalizedLargeArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedLargeAreaCopyWith<$Res> {
  factory $LocalizedLargeAreaCopyWith(
    LocalizedLargeArea value,
    $Res Function(LocalizedLargeArea) then,
  ) = _$LocalizedLargeAreaCopyWithImpl<$Res, LocalizedLargeArea>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String serviceAreaCode,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class _$LocalizedLargeAreaCopyWithImpl<$Res, $Val extends LocalizedLargeArea>
    implements $LocalizedLargeAreaCopyWith<$Res> {
  _$LocalizedLargeAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedLargeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? serviceAreaCode = null,
    Object? sortOrder = null,
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
            serviceAreaCode:
                null == serviceAreaCode
                    ? _value.serviceAreaCode
                    : serviceAreaCode // ignore: cast_nullable_to_non_nullable
                        as String,
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$LocalizedLargeAreaImplCopyWith<$Res>
    implements $LocalizedLargeAreaCopyWith<$Res> {
  factory _$$LocalizedLargeAreaImplCopyWith(
    _$LocalizedLargeAreaImpl value,
    $Res Function(_$LocalizedLargeAreaImpl) then,
  ) = __$$LocalizedLargeAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String serviceAreaCode,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class __$$LocalizedLargeAreaImplCopyWithImpl<$Res>
    extends _$LocalizedLargeAreaCopyWithImpl<$Res, _$LocalizedLargeAreaImpl>
    implements _$$LocalizedLargeAreaImplCopyWith<$Res> {
  __$$LocalizedLargeAreaImplCopyWithImpl(
    _$LocalizedLargeAreaImpl _value,
    $Res Function(_$LocalizedLargeAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedLargeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? serviceAreaCode = null,
    Object? sortOrder = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedLargeAreaImpl(
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
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$LocalizedLargeAreaImpl implements _LocalizedLargeArea {
  const _$LocalizedLargeAreaImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    required this.serviceAreaCode,
    this.sortOrder = 0,
    this.isPopular = false,
  });

  factory _$LocalizedLargeAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedLargeAreaImplFromJson(json);

  /// 대지역 코드 (예: Z011, Z012)
  @override
  final String code;

  /// 일본어 원문
  @override
  final String nameJa;

  /// 한국어 번역
  @override
  final String nameKo;

  /// 소속 서비스 지역 코드
  @override
  final String serviceAreaCode;

  /// 정렬 순서
  @override
  @JsonKey()
  final int sortOrder;

  /// 인기 지역 여부
  @override
  @JsonKey()
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedLargeArea(code: $code, nameJa: $nameJa, nameKo: $nameKo, serviceAreaCode: $serviceAreaCode, sortOrder: $sortOrder, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedLargeAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.serviceAreaCode, serviceAreaCode) ||
                other.serviceAreaCode == serviceAreaCode) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
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
    serviceAreaCode,
    sortOrder,
    isPopular,
  );

  /// Create a copy of LocalizedLargeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedLargeAreaImplCopyWith<_$LocalizedLargeAreaImpl> get copyWith =>
      __$$LocalizedLargeAreaImplCopyWithImpl<_$LocalizedLargeAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedLargeAreaImplToJson(this);
  }
}

abstract class _LocalizedLargeArea implements LocalizedLargeArea {
  const factory _LocalizedLargeArea({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    required final String serviceAreaCode,
    final int sortOrder,
    final bool isPopular,
  }) = _$LocalizedLargeAreaImpl;

  factory _LocalizedLargeArea.fromJson(Map<String, dynamic> json) =
      _$LocalizedLargeAreaImpl.fromJson;

  /// 대지역 코드 (예: Z011, Z012)
  @override
  String get code;

  /// 일본어 원문
  @override
  String get nameJa;

  /// 한국어 번역
  @override
  String get nameKo;

  /// 소속 서비스 지역 코드
  @override
  String get serviceAreaCode;

  /// 정렬 순서
  @override
  int get sortOrder;

  /// 인기 지역 여부
  @override
  bool get isPopular;

  /// Create a copy of LocalizedLargeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedLargeAreaImplCopyWith<_$LocalizedLargeAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalizedMiddleArea _$LocalizedMiddleAreaFromJson(Map<String, dynamic> json) {
  return _LocalizedMiddleArea.fromJson(json);
}

/// @nodoc
mixin _$LocalizedMiddleArea {
  /// 중지역 코드 (예: Y055, Y010)
  String get code => throw _privateConstructorUsedError;

  /// 일본어 원문
  String get nameJa => throw _privateConstructorUsedError;

  /// 한국어 번역
  String get nameKo => throw _privateConstructorUsedError;

  /// 소속 대지역 코드
  String get largeAreaCode => throw _privateConstructorUsedError;

  /// 소속 서비스 지역 코드
  String get serviceAreaCode => throw _privateConstructorUsedError;

  /// 정렬 순서
  int get sortOrder => throw _privateConstructorUsedError;

  /// 인기 지역 여부 (주요 관광지)
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedMiddleArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedMiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedMiddleAreaCopyWith<LocalizedMiddleArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedMiddleAreaCopyWith<$Res> {
  factory $LocalizedMiddleAreaCopyWith(
    LocalizedMiddleArea value,
    $Res Function(LocalizedMiddleArea) then,
  ) = _$LocalizedMiddleAreaCopyWithImpl<$Res, LocalizedMiddleArea>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String largeAreaCode,
    String serviceAreaCode,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class _$LocalizedMiddleAreaCopyWithImpl<$Res, $Val extends LocalizedMiddleArea>
    implements $LocalizedMiddleAreaCopyWith<$Res> {
  _$LocalizedMiddleAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedMiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? largeAreaCode = null,
    Object? serviceAreaCode = null,
    Object? sortOrder = null,
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
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$LocalizedMiddleAreaImplCopyWith<$Res>
    implements $LocalizedMiddleAreaCopyWith<$Res> {
  factory _$$LocalizedMiddleAreaImplCopyWith(
    _$LocalizedMiddleAreaImpl value,
    $Res Function(_$LocalizedMiddleAreaImpl) then,
  ) = __$$LocalizedMiddleAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String largeAreaCode,
    String serviceAreaCode,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class __$$LocalizedMiddleAreaImplCopyWithImpl<$Res>
    extends _$LocalizedMiddleAreaCopyWithImpl<$Res, _$LocalizedMiddleAreaImpl>
    implements _$$LocalizedMiddleAreaImplCopyWith<$Res> {
  __$$LocalizedMiddleAreaImplCopyWithImpl(
    _$LocalizedMiddleAreaImpl _value,
    $Res Function(_$LocalizedMiddleAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedMiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? largeAreaCode = null,
    Object? serviceAreaCode = null,
    Object? sortOrder = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedMiddleAreaImpl(
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
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$LocalizedMiddleAreaImpl implements _LocalizedMiddleArea {
  const _$LocalizedMiddleAreaImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    required this.largeAreaCode,
    required this.serviceAreaCode,
    this.sortOrder = 0,
    this.isPopular = false,
  });

  factory _$LocalizedMiddleAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedMiddleAreaImplFromJson(json);

  /// 중지역 코드 (예: Y055, Y010)
  @override
  final String code;

  /// 일본어 원문
  @override
  final String nameJa;

  /// 한국어 번역
  @override
  final String nameKo;

  /// 소속 대지역 코드
  @override
  final String largeAreaCode;

  /// 소속 서비스 지역 코드
  @override
  final String serviceAreaCode;

  /// 정렬 순서
  @override
  @JsonKey()
  final int sortOrder;

  /// 인기 지역 여부 (주요 관광지)
  @override
  @JsonKey()
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedMiddleArea(code: $code, nameJa: $nameJa, nameKo: $nameKo, largeAreaCode: $largeAreaCode, serviceAreaCode: $serviceAreaCode, sortOrder: $sortOrder, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedMiddleAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.largeAreaCode, largeAreaCode) ||
                other.largeAreaCode == largeAreaCode) &&
            (identical(other.serviceAreaCode, serviceAreaCode) ||
                other.serviceAreaCode == serviceAreaCode) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
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
    sortOrder,
    isPopular,
  );

  /// Create a copy of LocalizedMiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedMiddleAreaImplCopyWith<_$LocalizedMiddleAreaImpl> get copyWith =>
      __$$LocalizedMiddleAreaImplCopyWithImpl<_$LocalizedMiddleAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedMiddleAreaImplToJson(this);
  }
}

abstract class _LocalizedMiddleArea implements LocalizedMiddleArea {
  const factory _LocalizedMiddleArea({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    required final String largeAreaCode,
    required final String serviceAreaCode,
    final int sortOrder,
    final bool isPopular,
  }) = _$LocalizedMiddleAreaImpl;

  factory _LocalizedMiddleArea.fromJson(Map<String, dynamic> json) =
      _$LocalizedMiddleAreaImpl.fromJson;

  /// 중지역 코드 (예: Y055, Y010)
  @override
  String get code;

  /// 일본어 원문
  @override
  String get nameJa;

  /// 한국어 번역
  @override
  String get nameKo;

  /// 소속 대지역 코드
  @override
  String get largeAreaCode;

  /// 소속 서비스 지역 코드
  @override
  String get serviceAreaCode;

  /// 정렬 순서
  @override
  int get sortOrder;

  /// 인기 지역 여부 (주요 관광지)
  @override
  bool get isPopular;

  /// Create a copy of LocalizedMiddleArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedMiddleAreaImplCopyWith<_$LocalizedMiddleAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalizedSmallArea _$LocalizedSmallAreaFromJson(Map<String, dynamic> json) {
  return _LocalizedSmallArea.fromJson(json);
}

/// @nodoc
mixin _$LocalizedSmallArea {
  /// 소지역 코드 (예: X050, X051)
  String get code => throw _privateConstructorUsedError;

  /// 일본어 원문
  String get nameJa => throw _privateConstructorUsedError;

  /// 한국어 번역
  String get nameKo => throw _privateConstructorUsedError;

  /// 소속 중지역 코드
  String get middleAreaCode => throw _privateConstructorUsedError;

  /// 소속 대지역 코드
  String get largeAreaCode => throw _privateConstructorUsedError;

  /// 소속 서비스 지역 코드
  String get serviceAreaCode => throw _privateConstructorUsedError;

  /// 정렬 순서
  int get sortOrder => throw _privateConstructorUsedError;

  /// 인기 지역 여부 (핫스팟)
  bool get isPopular => throw _privateConstructorUsedError;

  /// Serializes this LocalizedSmallArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedSmallArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedSmallAreaCopyWith<LocalizedSmallArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedSmallAreaCopyWith<$Res> {
  factory $LocalizedSmallAreaCopyWith(
    LocalizedSmallArea value,
    $Res Function(LocalizedSmallArea) then,
  ) = _$LocalizedSmallAreaCopyWithImpl<$Res, LocalizedSmallArea>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String middleAreaCode,
    String largeAreaCode,
    String serviceAreaCode,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class _$LocalizedSmallAreaCopyWithImpl<$Res, $Val extends LocalizedSmallArea>
    implements $LocalizedSmallAreaCopyWith<$Res> {
  _$LocalizedSmallAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedSmallArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? middleAreaCode = null,
    Object? largeAreaCode = null,
    Object? serviceAreaCode = null,
    Object? sortOrder = null,
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
            middleAreaCode:
                null == middleAreaCode
                    ? _value.middleAreaCode
                    : middleAreaCode // ignore: cast_nullable_to_non_nullable
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
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$LocalizedSmallAreaImplCopyWith<$Res>
    implements $LocalizedSmallAreaCopyWith<$Res> {
  factory _$$LocalizedSmallAreaImplCopyWith(
    _$LocalizedSmallAreaImpl value,
    $Res Function(_$LocalizedSmallAreaImpl) then,
  ) = __$$LocalizedSmallAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    String middleAreaCode,
    String largeAreaCode,
    String serviceAreaCode,
    int sortOrder,
    bool isPopular,
  });
}

/// @nodoc
class __$$LocalizedSmallAreaImplCopyWithImpl<$Res>
    extends _$LocalizedSmallAreaCopyWithImpl<$Res, _$LocalizedSmallAreaImpl>
    implements _$$LocalizedSmallAreaImplCopyWith<$Res> {
  __$$LocalizedSmallAreaImplCopyWithImpl(
    _$LocalizedSmallAreaImpl _value,
    $Res Function(_$LocalizedSmallAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedSmallArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? middleAreaCode = null,
    Object? largeAreaCode = null,
    Object? serviceAreaCode = null,
    Object? sortOrder = null,
    Object? isPopular = null,
  }) {
    return _then(
      _$LocalizedSmallAreaImpl(
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
        middleAreaCode:
            null == middleAreaCode
                ? _value.middleAreaCode
                : middleAreaCode // ignore: cast_nullable_to_non_nullable
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
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$LocalizedSmallAreaImpl implements _LocalizedSmallArea {
  const _$LocalizedSmallAreaImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    required this.middleAreaCode,
    required this.largeAreaCode,
    required this.serviceAreaCode,
    this.sortOrder = 0,
    this.isPopular = false,
  });

  factory _$LocalizedSmallAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedSmallAreaImplFromJson(json);

  /// 소지역 코드 (예: X050, X051)
  @override
  final String code;

  /// 일본어 원문
  @override
  final String nameJa;

  /// 한국어 번역
  @override
  final String nameKo;

  /// 소속 중지역 코드
  @override
  final String middleAreaCode;

  /// 소속 대지역 코드
  @override
  final String largeAreaCode;

  /// 소속 서비스 지역 코드
  @override
  final String serviceAreaCode;

  /// 정렬 순서
  @override
  @JsonKey()
  final int sortOrder;

  /// 인기 지역 여부 (핫스팟)
  @override
  @JsonKey()
  final bool isPopular;

  @override
  String toString() {
    return 'LocalizedSmallArea(code: $code, nameJa: $nameJa, nameKo: $nameKo, middleAreaCode: $middleAreaCode, largeAreaCode: $largeAreaCode, serviceAreaCode: $serviceAreaCode, sortOrder: $sortOrder, isPopular: $isPopular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedSmallAreaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.middleAreaCode, middleAreaCode) ||
                other.middleAreaCode == middleAreaCode) &&
            (identical(other.largeAreaCode, largeAreaCode) ||
                other.largeAreaCode == largeAreaCode) &&
            (identical(other.serviceAreaCode, serviceAreaCode) ||
                other.serviceAreaCode == serviceAreaCode) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
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
    middleAreaCode,
    largeAreaCode,
    serviceAreaCode,
    sortOrder,
    isPopular,
  );

  /// Create a copy of LocalizedSmallArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedSmallAreaImplCopyWith<_$LocalizedSmallAreaImpl> get copyWith =>
      __$$LocalizedSmallAreaImplCopyWithImpl<_$LocalizedSmallAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedSmallAreaImplToJson(this);
  }
}

abstract class _LocalizedSmallArea implements LocalizedSmallArea {
  const factory _LocalizedSmallArea({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    required final String middleAreaCode,
    required final String largeAreaCode,
    required final String serviceAreaCode,
    final int sortOrder,
    final bool isPopular,
  }) = _$LocalizedSmallAreaImpl;

  factory _LocalizedSmallArea.fromJson(Map<String, dynamic> json) =
      _$LocalizedSmallAreaImpl.fromJson;

  /// 소지역 코드 (예: X050, X051)
  @override
  String get code;

  /// 일본어 원문
  @override
  String get nameJa;

  /// 한국어 번역
  @override
  String get nameKo;

  /// 소속 중지역 코드
  @override
  String get middleAreaCode;

  /// 소속 대지역 코드
  @override
  String get largeAreaCode;

  /// 소속 서비스 지역 코드
  @override
  String get serviceAreaCode;

  /// 정렬 순서
  @override
  int get sortOrder;

  /// 인기 지역 여부 (핫스팟)
  @override
  bool get isPopular;

  /// Create a copy of LocalizedSmallArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedSmallAreaImplCopyWith<_$LocalizedSmallAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalizedAreaSelection _$LocalizedAreaSelectionFromJson(
  Map<String, dynamic> json,
) {
  return _LocalizedAreaSelection.fromJson(json);
}

/// @nodoc
mixin _$LocalizedAreaSelection {
  /// 선택된 서비스 지역 (필수)
  LocalizedServiceArea get serviceArea => throw _privateConstructorUsedError;

  /// 선택된 대지역 (선택사항)
  LocalizedLargeArea? get selectedLargeArea =>
      throw _privateConstructorUsedError;

  /// 선택된 중지역 (선택사항)
  LocalizedMiddleArea? get selectedMiddleArea =>
      throw _privateConstructorUsedError;

  /// 선택된 소지역 (선택사항)
  LocalizedSmallArea? get selectedSmallArea =>
      throw _privateConstructorUsedError;

  /// Serializes this LocalizedAreaSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedAreaSelectionCopyWith<LocalizedAreaSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedAreaSelectionCopyWith<$Res> {
  factory $LocalizedAreaSelectionCopyWith(
    LocalizedAreaSelection value,
    $Res Function(LocalizedAreaSelection) then,
  ) = _$LocalizedAreaSelectionCopyWithImpl<$Res, LocalizedAreaSelection>;
  @useResult
  $Res call({
    LocalizedServiceArea serviceArea,
    LocalizedLargeArea? selectedLargeArea,
    LocalizedMiddleArea? selectedMiddleArea,
    LocalizedSmallArea? selectedSmallArea,
  });

  $LocalizedServiceAreaCopyWith<$Res> get serviceArea;
  $LocalizedLargeAreaCopyWith<$Res>? get selectedLargeArea;
  $LocalizedMiddleAreaCopyWith<$Res>? get selectedMiddleArea;
  $LocalizedSmallAreaCopyWith<$Res>? get selectedSmallArea;
}

/// @nodoc
class _$LocalizedAreaSelectionCopyWithImpl<
  $Res,
  $Val extends LocalizedAreaSelection
>
    implements $LocalizedAreaSelectionCopyWith<$Res> {
  _$LocalizedAreaSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? selectedLargeArea = freezed,
    Object? selectedMiddleArea = freezed,
    Object? selectedSmallArea = freezed,
  }) {
    return _then(
      _value.copyWith(
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedServiceArea,
            selectedLargeArea:
                freezed == selectedLargeArea
                    ? _value.selectedLargeArea
                    : selectedLargeArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedLargeArea?,
            selectedMiddleArea:
                freezed == selectedMiddleArea
                    ? _value.selectedMiddleArea
                    : selectedMiddleArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedMiddleArea?,
            selectedSmallArea:
                freezed == selectedSmallArea
                    ? _value.selectedSmallArea
                    : selectedSmallArea // ignore: cast_nullable_to_non_nullable
                        as LocalizedSmallArea?,
          )
          as $Val,
    );
  }

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedServiceAreaCopyWith<$Res> get serviceArea {
    return $LocalizedServiceAreaCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedLargeAreaCopyWith<$Res>? get selectedLargeArea {
    if (_value.selectedLargeArea == null) {
      return null;
    }

    return $LocalizedLargeAreaCopyWith<$Res>(_value.selectedLargeArea!, (
      value,
    ) {
      return _then(_value.copyWith(selectedLargeArea: value) as $Val);
    });
  }

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedMiddleAreaCopyWith<$Res>? get selectedMiddleArea {
    if (_value.selectedMiddleArea == null) {
      return null;
    }

    return $LocalizedMiddleAreaCopyWith<$Res>(_value.selectedMiddleArea!, (
      value,
    ) {
      return _then(_value.copyWith(selectedMiddleArea: value) as $Val);
    });
  }

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedSmallAreaCopyWith<$Res>? get selectedSmallArea {
    if (_value.selectedSmallArea == null) {
      return null;
    }

    return $LocalizedSmallAreaCopyWith<$Res>(_value.selectedSmallArea!, (
      value,
    ) {
      return _then(_value.copyWith(selectedSmallArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalizedAreaSelectionImplCopyWith<$Res>
    implements $LocalizedAreaSelectionCopyWith<$Res> {
  factory _$$LocalizedAreaSelectionImplCopyWith(
    _$LocalizedAreaSelectionImpl value,
    $Res Function(_$LocalizedAreaSelectionImpl) then,
  ) = __$$LocalizedAreaSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedServiceArea serviceArea,
    LocalizedLargeArea? selectedLargeArea,
    LocalizedMiddleArea? selectedMiddleArea,
    LocalizedSmallArea? selectedSmallArea,
  });

  @override
  $LocalizedServiceAreaCopyWith<$Res> get serviceArea;
  @override
  $LocalizedLargeAreaCopyWith<$Res>? get selectedLargeArea;
  @override
  $LocalizedMiddleAreaCopyWith<$Res>? get selectedMiddleArea;
  @override
  $LocalizedSmallAreaCopyWith<$Res>? get selectedSmallArea;
}

/// @nodoc
class __$$LocalizedAreaSelectionImplCopyWithImpl<$Res>
    extends
        _$LocalizedAreaSelectionCopyWithImpl<$Res, _$LocalizedAreaSelectionImpl>
    implements _$$LocalizedAreaSelectionImplCopyWith<$Res> {
  __$$LocalizedAreaSelectionImplCopyWithImpl(
    _$LocalizedAreaSelectionImpl _value,
    $Res Function(_$LocalizedAreaSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? selectedLargeArea = freezed,
    Object? selectedMiddleArea = freezed,
    Object? selectedSmallArea = freezed,
  }) {
    return _then(
      _$LocalizedAreaSelectionImpl(
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedServiceArea,
        selectedLargeArea:
            freezed == selectedLargeArea
                ? _value.selectedLargeArea
                : selectedLargeArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedLargeArea?,
        selectedMiddleArea:
            freezed == selectedMiddleArea
                ? _value.selectedMiddleArea
                : selectedMiddleArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedMiddleArea?,
        selectedSmallArea:
            freezed == selectedSmallArea
                ? _value.selectedSmallArea
                : selectedSmallArea // ignore: cast_nullable_to_non_nullable
                    as LocalizedSmallArea?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedAreaSelectionImpl implements _LocalizedAreaSelection {
  const _$LocalizedAreaSelectionImpl({
    required this.serviceArea,
    this.selectedLargeArea,
    this.selectedMiddleArea,
    this.selectedSmallArea,
  });

  factory _$LocalizedAreaSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedAreaSelectionImplFromJson(json);

  /// 선택된 서비스 지역 (필수)
  @override
  final LocalizedServiceArea serviceArea;

  /// 선택된 대지역 (선택사항)
  @override
  final LocalizedLargeArea? selectedLargeArea;

  /// 선택된 중지역 (선택사항)
  @override
  final LocalizedMiddleArea? selectedMiddleArea;

  /// 선택된 소지역 (선택사항)
  @override
  final LocalizedSmallArea? selectedSmallArea;

  @override
  String toString() {
    return 'LocalizedAreaSelection(serviceArea: $serviceArea, selectedLargeArea: $selectedLargeArea, selectedMiddleArea: $selectedMiddleArea, selectedSmallArea: $selectedSmallArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedAreaSelectionImpl &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.selectedLargeArea, selectedLargeArea) ||
                other.selectedLargeArea == selectedLargeArea) &&
            (identical(other.selectedMiddleArea, selectedMiddleArea) ||
                other.selectedMiddleArea == selectedMiddleArea) &&
            (identical(other.selectedSmallArea, selectedSmallArea) ||
                other.selectedSmallArea == selectedSmallArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    serviceArea,
    selectedLargeArea,
    selectedMiddleArea,
    selectedSmallArea,
  );

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedAreaSelectionImplCopyWith<_$LocalizedAreaSelectionImpl>
  get copyWith =>
      __$$LocalizedAreaSelectionImplCopyWithImpl<_$LocalizedAreaSelectionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedAreaSelectionImplToJson(this);
  }
}

abstract class _LocalizedAreaSelection implements LocalizedAreaSelection {
  const factory _LocalizedAreaSelection({
    required final LocalizedServiceArea serviceArea,
    final LocalizedLargeArea? selectedLargeArea,
    final LocalizedMiddleArea? selectedMiddleArea,
    final LocalizedSmallArea? selectedSmallArea,
  }) = _$LocalizedAreaSelectionImpl;

  factory _LocalizedAreaSelection.fromJson(Map<String, dynamic> json) =
      _$LocalizedAreaSelectionImpl.fromJson;

  /// 선택된 서비스 지역 (필수)
  @override
  LocalizedServiceArea get serviceArea;

  /// 선택된 대지역 (선택사항)
  @override
  LocalizedLargeArea? get selectedLargeArea;

  /// 선택된 중지역 (선택사항)
  @override
  LocalizedMiddleArea? get selectedMiddleArea;

  /// 선택된 소지역 (선택사항)
  @override
  LocalizedSmallArea? get selectedSmallArea;

  /// Create a copy of LocalizedAreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedAreaSelectionImplCopyWith<_$LocalizedAreaSelectionImpl>
  get copyWith => throw _privateConstructorUsedError;
}
