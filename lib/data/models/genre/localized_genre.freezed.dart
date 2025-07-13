// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocalizedGenre _$LocalizedGenreFromJson(Map<String, dynamic> json) {
  return _LocalizedGenre.fromJson(json);
}

/// @nodoc
mixin _$LocalizedGenre {
  /// 장르 코드 (예: G001, G002)
  String get code => throw _privateConstructorUsedError;

  /// 일본어 원문
  String get nameJa => throw _privateConstructorUsedError;

  /// 한국어 번역
  String get nameKo => throw _privateConstructorUsedError;

  /// 인기 장르 여부
  bool get isPopular => throw _privateConstructorUsedError;

  /// 정렬 순서
  int get sortOrder => throw _privateConstructorUsedError;

  /// Serializes this LocalizedGenre to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedGenre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedGenreCopyWith<LocalizedGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedGenreCopyWith<$Res> {
  factory $LocalizedGenreCopyWith(
    LocalizedGenre value,
    $Res Function(LocalizedGenre) then,
  ) = _$LocalizedGenreCopyWithImpl<$Res, LocalizedGenre>;
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    bool isPopular,
    int sortOrder,
  });
}

/// @nodoc
class _$LocalizedGenreCopyWithImpl<$Res, $Val extends LocalizedGenre>
    implements $LocalizedGenreCopyWith<$Res> {
  _$LocalizedGenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedGenre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? isPopular = null,
    Object? sortOrder = null,
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
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizedGenreImplCopyWith<$Res>
    implements $LocalizedGenreCopyWith<$Res> {
  factory _$$LocalizedGenreImplCopyWith(
    _$LocalizedGenreImpl value,
    $Res Function(_$LocalizedGenreImpl) then,
  ) = __$$LocalizedGenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameJa,
    String nameKo,
    bool isPopular,
    int sortOrder,
  });
}

/// @nodoc
class __$$LocalizedGenreImplCopyWithImpl<$Res>
    extends _$LocalizedGenreCopyWithImpl<$Res, _$LocalizedGenreImpl>
    implements _$$LocalizedGenreImplCopyWith<$Res> {
  __$$LocalizedGenreImplCopyWithImpl(
    _$LocalizedGenreImpl _value,
    $Res Function(_$LocalizedGenreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizedGenre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameJa = null,
    Object? nameKo = null,
    Object? isPopular = null,
    Object? sortOrder = null,
  }) {
    return _then(
      _$LocalizedGenreImpl(
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
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedGenreImpl implements _LocalizedGenre {
  const _$LocalizedGenreImpl({
    required this.code,
    required this.nameJa,
    required this.nameKo,
    this.isPopular = false,
    this.sortOrder = 0,
  });

  factory _$LocalizedGenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedGenreImplFromJson(json);

  /// 장르 코드 (예: G001, G002)
  @override
  final String code;

  /// 일본어 원문
  @override
  final String nameJa;

  /// 한국어 번역
  @override
  final String nameKo;

  /// 인기 장르 여부
  @override
  @JsonKey()
  final bool isPopular;

  /// 정렬 순서
  @override
  @JsonKey()
  final int sortOrder;

  @override
  String toString() {
    return 'LocalizedGenre(code: $code, nameJa: $nameJa, nameKo: $nameKo, isPopular: $isPopular, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedGenreImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameJa, nameJa) || other.nameJa == nameJa) &&
            (identical(other.nameKo, nameKo) || other.nameKo == nameKo) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameJa, nameKo, isPopular, sortOrder);

  /// Create a copy of LocalizedGenre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedGenreImplCopyWith<_$LocalizedGenreImpl> get copyWith =>
      __$$LocalizedGenreImplCopyWithImpl<_$LocalizedGenreImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedGenreImplToJson(this);
  }
}

abstract class _LocalizedGenre implements LocalizedGenre {
  const factory _LocalizedGenre({
    required final String code,
    required final String nameJa,
    required final String nameKo,
    final bool isPopular,
    final int sortOrder,
  }) = _$LocalizedGenreImpl;

  factory _LocalizedGenre.fromJson(Map<String, dynamic> json) =
      _$LocalizedGenreImpl.fromJson;

  /// 장르 코드 (예: G001, G002)
  @override
  String get code;

  /// 일본어 원문
  @override
  String get nameJa;

  /// 한국어 번역
  @override
  String get nameKo;

  /// 인기 장르 여부
  @override
  bool get isPopular;

  /// 정렬 순서
  @override
  int get sortOrder;

  /// Create a copy of LocalizedGenre
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedGenreImplCopyWith<_$LocalizedGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
