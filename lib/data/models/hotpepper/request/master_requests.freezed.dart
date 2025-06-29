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

MiddleAreaMasterRequest _$MiddleAreaMasterRequestFromJson(
  Map<String, dynamic> json,
) {
  return _MiddleAreaMasterRequest.fromJson(json);
}

/// @nodoc
mixin _$MiddleAreaMasterRequest {
  /// 중분류 지역 코드
  /// 예: "Y005", "Y010" 등
  /// 특정 중분류 지역의 정보만 조회할 때 사용
  @JsonKey(name: 'middle_area')
  String? get middleAreaCode => throw _privateConstructorUsedError;

  /// 대분류 지역 코드
  /// 예: "Z011" (도쿄), "Z012" (가나가와) 등
  @JsonKey(name: 'large_area')
  String? get largeAreaCode => throw _privateConstructorUsedError;

  /// 중분류 지역명 키워드
  /// 예: "新宿", "渋谷" 등
  String? get keyword => throw _privateConstructorUsedError;

  /// 기본값: 1
  /// 페이징 처리에 사용
  int? get start => throw _privateConstructorUsedError;

  /// 1페이지당 출력할 데이터 수
  /// 기본값: API의 기본값 사용
  /// 최대값: API 제한에 따름
  int? get count => throw _privateConstructorUsedError;

  /// Serializes this MiddleAreaMasterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiddleAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiddleAreaMasterRequestCopyWith<MiddleAreaMasterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiddleAreaMasterRequestCopyWith<$Res> {
  factory $MiddleAreaMasterRequestCopyWith(
    MiddleAreaMasterRequest value,
    $Res Function(MiddleAreaMasterRequest) then,
  ) = _$MiddleAreaMasterRequestCopyWithImpl<$Res, MiddleAreaMasterRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'middle_area') String? middleAreaCode,
    @JsonKey(name: 'large_area') String? largeAreaCode,
    String? keyword,
    int? start,
    int? count,
  });
}

/// @nodoc
class _$MiddleAreaMasterRequestCopyWithImpl<
  $Res,
  $Val extends MiddleAreaMasterRequest
>
    implements $MiddleAreaMasterRequestCopyWith<$Res> {
  _$MiddleAreaMasterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiddleAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? middleAreaCode = freezed,
    Object? largeAreaCode = freezed,
    Object? keyword = freezed,
    Object? start = freezed,
    Object? count = freezed,
  }) {
    return _then(
      _value.copyWith(
            middleAreaCode:
                freezed == middleAreaCode
                    ? _value.middleAreaCode
                    : middleAreaCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            largeAreaCode:
                freezed == largeAreaCode
                    ? _value.largeAreaCode
                    : largeAreaCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            keyword:
                freezed == keyword
                    ? _value.keyword
                    : keyword // ignore: cast_nullable_to_non_nullable
                        as String?,
            start:
                freezed == start
                    ? _value.start
                    : start // ignore: cast_nullable_to_non_nullable
                        as int?,
            count:
                freezed == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MiddleAreaMasterRequestImplCopyWith<$Res>
    implements $MiddleAreaMasterRequestCopyWith<$Res> {
  factory _$$MiddleAreaMasterRequestImplCopyWith(
    _$MiddleAreaMasterRequestImpl value,
    $Res Function(_$MiddleAreaMasterRequestImpl) then,
  ) = __$$MiddleAreaMasterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'middle_area') String? middleAreaCode,
    @JsonKey(name: 'large_area') String? largeAreaCode,
    String? keyword,
    int? start,
    int? count,
  });
}

/// @nodoc
class __$$MiddleAreaMasterRequestImplCopyWithImpl<$Res>
    extends
        _$MiddleAreaMasterRequestCopyWithImpl<
          $Res,
          _$MiddleAreaMasterRequestImpl
        >
    implements _$$MiddleAreaMasterRequestImplCopyWith<$Res> {
  __$$MiddleAreaMasterRequestImplCopyWithImpl(
    _$MiddleAreaMasterRequestImpl _value,
    $Res Function(_$MiddleAreaMasterRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MiddleAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? middleAreaCode = freezed,
    Object? largeAreaCode = freezed,
    Object? keyword = freezed,
    Object? start = freezed,
    Object? count = freezed,
  }) {
    return _then(
      _$MiddleAreaMasterRequestImpl(
        middleAreaCode:
            freezed == middleAreaCode
                ? _value.middleAreaCode
                : middleAreaCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        largeAreaCode:
            freezed == largeAreaCode
                ? _value.largeAreaCode
                : largeAreaCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        keyword:
            freezed == keyword
                ? _value.keyword
                : keyword // ignore: cast_nullable_to_non_nullable
                    as String?,
        start:
            freezed == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                    as int?,
        count:
            freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MiddleAreaMasterRequestImpl implements _MiddleAreaMasterRequest {
  const _$MiddleAreaMasterRequestImpl({
    @JsonKey(name: 'middle_area') this.middleAreaCode,
    @JsonKey(name: 'large_area') this.largeAreaCode,
    this.keyword,
    this.start,
    this.count,
  });

  factory _$MiddleAreaMasterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiddleAreaMasterRequestImplFromJson(json);

  /// 중분류 지역 코드
  /// 예: "Y005", "Y010" 등
  /// 특정 중분류 지역의 정보만 조회할 때 사용
  @override
  @JsonKey(name: 'middle_area')
  final String? middleAreaCode;

  /// 대분류 지역 코드
  /// 예: "Z011" (도쿄), "Z012" (가나가와) 등
  @override
  @JsonKey(name: 'large_area')
  final String? largeAreaCode;

  /// 중분류 지역명 키워드
  /// 예: "新宿", "渋谷" 등
  @override
  final String? keyword;

  /// 기본값: 1
  /// 페이징 처리에 사용
  @override
  final int? start;

  /// 1페이지당 출력할 데이터 수
  /// 기본값: API의 기본값 사용
  /// 최대값: API 제한에 따름
  @override
  final int? count;

  @override
  String toString() {
    return 'MiddleAreaMasterRequest(middleAreaCode: $middleAreaCode, largeAreaCode: $largeAreaCode, keyword: $keyword, start: $start, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiddleAreaMasterRequestImpl &&
            (identical(other.middleAreaCode, middleAreaCode) ||
                other.middleAreaCode == middleAreaCode) &&
            (identical(other.largeAreaCode, largeAreaCode) ||
                other.largeAreaCode == largeAreaCode) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    middleAreaCode,
    largeAreaCode,
    keyword,
    start,
    count,
  );

  /// Create a copy of MiddleAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiddleAreaMasterRequestImplCopyWith<_$MiddleAreaMasterRequestImpl>
  get copyWith => __$$MiddleAreaMasterRequestImplCopyWithImpl<
    _$MiddleAreaMasterRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiddleAreaMasterRequestImplToJson(this);
  }
}

abstract class _MiddleAreaMasterRequest implements MiddleAreaMasterRequest {
  const factory _MiddleAreaMasterRequest({
    @JsonKey(name: 'middle_area') final String? middleAreaCode,
    @JsonKey(name: 'large_area') final String? largeAreaCode,
    final String? keyword,
    final int? start,
    final int? count,
  }) = _$MiddleAreaMasterRequestImpl;

  factory _MiddleAreaMasterRequest.fromJson(Map<String, dynamic> json) =
      _$MiddleAreaMasterRequestImpl.fromJson;

  /// 중분류 지역 코드
  /// 예: "Y005", "Y010" 등
  /// 특정 중분류 지역의 정보만 조회할 때 사용
  @override
  @JsonKey(name: 'middle_area')
  String? get middleAreaCode;

  /// 대분류 지역 코드
  /// 예: "Z011" (도쿄), "Z012" (가나가와) 등
  @override
  @JsonKey(name: 'large_area')
  String? get largeAreaCode;

  /// 중분류 지역명 키워드
  /// 예: "新宿", "渋谷" 등
  @override
  String? get keyword;

  /// 기본값: 1
  /// 페이징 처리에 사용
  @override
  int? get start;

  /// 1페이지당 출력할 데이터 수
  /// 기본값: API의 기본값 사용
  /// 최대값: API 제한에 따름
  @override
  int? get count;

  /// Create a copy of MiddleAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiddleAreaMasterRequestImplCopyWith<_$MiddleAreaMasterRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

SmallAreaMasterRequest _$SmallAreaMasterRequestFromJson(
  Map<String, dynamic> json,
) {
  return _SmallAreaMasterRequest.fromJson(json);
}

/// @nodoc
mixin _$SmallAreaMasterRequest {
  @JsonKey(name: 'small_area')
  String? get smallAreaCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_area')
  String? get middleAreaCode => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  /// Serializes this SmallAreaMasterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SmallAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmallAreaMasterRequestCopyWith<SmallAreaMasterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmallAreaMasterRequestCopyWith<$Res> {
  factory $SmallAreaMasterRequestCopyWith(
    SmallAreaMasterRequest value,
    $Res Function(SmallAreaMasterRequest) then,
  ) = _$SmallAreaMasterRequestCopyWithImpl<$Res, SmallAreaMasterRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'small_area') String? smallAreaCode,
    @JsonKey(name: 'middle_area') String? middleAreaCode,
    String? keyword,
    int? start,
    int? count,
  });
}

/// @nodoc
class _$SmallAreaMasterRequestCopyWithImpl<
  $Res,
  $Val extends SmallAreaMasterRequest
>
    implements $SmallAreaMasterRequestCopyWith<$Res> {
  _$SmallAreaMasterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmallAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallAreaCode = freezed,
    Object? middleAreaCode = freezed,
    Object? keyword = freezed,
    Object? start = freezed,
    Object? count = freezed,
  }) {
    return _then(
      _value.copyWith(
            smallAreaCode:
                freezed == smallAreaCode
                    ? _value.smallAreaCode
                    : smallAreaCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            middleAreaCode:
                freezed == middleAreaCode
                    ? _value.middleAreaCode
                    : middleAreaCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            keyword:
                freezed == keyword
                    ? _value.keyword
                    : keyword // ignore: cast_nullable_to_non_nullable
                        as String?,
            start:
                freezed == start
                    ? _value.start
                    : start // ignore: cast_nullable_to_non_nullable
                        as int?,
            count:
                freezed == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SmallAreaMasterRequestImplCopyWith<$Res>
    implements $SmallAreaMasterRequestCopyWith<$Res> {
  factory _$$SmallAreaMasterRequestImplCopyWith(
    _$SmallAreaMasterRequestImpl value,
    $Res Function(_$SmallAreaMasterRequestImpl) then,
  ) = __$$SmallAreaMasterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'small_area') String? smallAreaCode,
    @JsonKey(name: 'middle_area') String? middleAreaCode,
    String? keyword,
    int? start,
    int? count,
  });
}

/// @nodoc
class __$$SmallAreaMasterRequestImplCopyWithImpl<$Res>
    extends
        _$SmallAreaMasterRequestCopyWithImpl<$Res, _$SmallAreaMasterRequestImpl>
    implements _$$SmallAreaMasterRequestImplCopyWith<$Res> {
  __$$SmallAreaMasterRequestImplCopyWithImpl(
    _$SmallAreaMasterRequestImpl _value,
    $Res Function(_$SmallAreaMasterRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SmallAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallAreaCode = freezed,
    Object? middleAreaCode = freezed,
    Object? keyword = freezed,
    Object? start = freezed,
    Object? count = freezed,
  }) {
    return _then(
      _$SmallAreaMasterRequestImpl(
        smallAreaCode:
            freezed == smallAreaCode
                ? _value.smallAreaCode
                : smallAreaCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        middleAreaCode:
            freezed == middleAreaCode
                ? _value.middleAreaCode
                : middleAreaCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        keyword:
            freezed == keyword
                ? _value.keyword
                : keyword // ignore: cast_nullable_to_non_nullable
                    as String?,
        start:
            freezed == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                    as int?,
        count:
            freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SmallAreaMasterRequestImpl implements _SmallAreaMasterRequest {
  const _$SmallAreaMasterRequestImpl({
    @JsonKey(name: 'small_area') this.smallAreaCode,
    @JsonKey(name: 'middle_area') this.middleAreaCode,
    this.keyword,
    this.start,
    this.count,
  });

  factory _$SmallAreaMasterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmallAreaMasterRequestImplFromJson(json);

  @override
  @JsonKey(name: 'small_area')
  final String? smallAreaCode;
  @override
  @JsonKey(name: 'middle_area')
  final String? middleAreaCode;
  @override
  final String? keyword;
  @override
  final int? start;
  @override
  final int? count;

  @override
  String toString() {
    return 'SmallAreaMasterRequest(smallAreaCode: $smallAreaCode, middleAreaCode: $middleAreaCode, keyword: $keyword, start: $start, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmallAreaMasterRequestImpl &&
            (identical(other.smallAreaCode, smallAreaCode) ||
                other.smallAreaCode == smallAreaCode) &&
            (identical(other.middleAreaCode, middleAreaCode) ||
                other.middleAreaCode == middleAreaCode) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    smallAreaCode,
    middleAreaCode,
    keyword,
    start,
    count,
  );

  /// Create a copy of SmallAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmallAreaMasterRequestImplCopyWith<_$SmallAreaMasterRequestImpl>
  get copyWith =>
      __$$SmallAreaMasterRequestImplCopyWithImpl<_$SmallAreaMasterRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SmallAreaMasterRequestImplToJson(this);
  }
}

abstract class _SmallAreaMasterRequest implements SmallAreaMasterRequest {
  const factory _SmallAreaMasterRequest({
    @JsonKey(name: 'small_area') final String? smallAreaCode,
    @JsonKey(name: 'middle_area') final String? middleAreaCode,
    final String? keyword,
    final int? start,
    final int? count,
  }) = _$SmallAreaMasterRequestImpl;

  factory _SmallAreaMasterRequest.fromJson(Map<String, dynamic> json) =
      _$SmallAreaMasterRequestImpl.fromJson;

  @override
  @JsonKey(name: 'small_area')
  String? get smallAreaCode;
  @override
  @JsonKey(name: 'middle_area')
  String? get middleAreaCode;
  @override
  String? get keyword;
  @override
  int? get start;
  @override
  int? get count;

  /// Create a copy of SmallAreaMasterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmallAreaMasterRequestImplCopyWith<_$SmallAreaMasterRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
