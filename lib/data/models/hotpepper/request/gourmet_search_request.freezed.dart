// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gourmet_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GourmetSearchRequest _$GourmetSearchRequestFromJson(Map<String, dynamic> json) {
  return _GourmetSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$GourmetSearchRequest {
  /// 서비스 에리어 코드 (필수)
  /// 예: "SA11" (도쿄), "SA12" (가나가와) 등
  /// 최대 3개까지 지정 가능
  @JsonKey(name: 'service_area')
  String get serviceArea => throw _privateConstructorUsedError;

  /// 검색 시작 위치
  /// 무한스크롤을 위한 페이징 처리에 사용
  /// 기본값: 1
  int? get start => throw _privateConstructorUsedError;

  /// 1페이지당 출력할 데이터 수
  /// 기본값: 100 (최대값)
  /// 최소값: 1, 최대값: 100
  int? get count => throw _privateConstructorUsedError;

  /// 키워드 검색 (향후 확장용)
  /// 가게명, 주소, 역명, 장르 등에서 부분일치 검색
  /// 공백으로 구분하여 AND 검색 가능
  String? get keyword => throw _privateConstructorUsedError;

  /// 정렬 순서 (향후 확장용)
  /// 1: 가게명 가나순
  /// 2: 장르 코드순
  /// 3: 소지역 코드순
  /// 4: 추천순 (기본값)
  int? get order => throw _privateConstructorUsedError;

  /// 중지역 코드 (V2 지역 필터링)
  /// 예: "Y055" (신주쿠), "Y030" (시부야) 등
  /// service_area 내에서 더 세분화된 검색 가능
  @JsonKey(name: 'middle_area')
  String? get middleArea => throw _privateConstructorUsedError;

  /// 소지역 코드 (기존 지역 필터링, 하위 호환성)
  /// 예: "X050" (신주쿠), "X051" (시부야) 등
  /// service_area 내에서 더 세분화된 검색 가능
  @JsonKey(name: 'small_area')
  String? get smallArea => throw _privateConstructorUsedError;

  /// 장르 코드 (음식 장르 필터링)
  /// 예: "G001" (이자카야), "G004" (이탈리안) 등
  /// HotPepper의 Genre Master에서 제공하는 코드 사용
  String? get genre => throw _privateConstructorUsedError;

  /// Serializes this GourmetSearchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GourmetSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GourmetSearchRequestCopyWith<GourmetSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GourmetSearchRequestCopyWith<$Res> {
  factory $GourmetSearchRequestCopyWith(
    GourmetSearchRequest value,
    $Res Function(GourmetSearchRequest) then,
  ) = _$GourmetSearchRequestCopyWithImpl<$Res, GourmetSearchRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'service_area') String serviceArea,
    int? start,
    int? count,
    String? keyword,
    int? order,
    @JsonKey(name: 'middle_area') String? middleArea,
    @JsonKey(name: 'small_area') String? smallArea,
    String? genre,
  });
}

/// @nodoc
class _$GourmetSearchRequestCopyWithImpl<
  $Res,
  $Val extends GourmetSearchRequest
>
    implements $GourmetSearchRequestCopyWith<$Res> {
  _$GourmetSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GourmetSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? start = freezed,
    Object? count = freezed,
    Object? keyword = freezed,
    Object? order = freezed,
    Object? middleArea = freezed,
    Object? smallArea = freezed,
    Object? genre = freezed,
  }) {
    return _then(
      _value.copyWith(
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as String,
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
            keyword:
                freezed == keyword
                    ? _value.keyword
                    : keyword // ignore: cast_nullable_to_non_nullable
                        as String?,
            order:
                freezed == order
                    ? _value.order
                    : order // ignore: cast_nullable_to_non_nullable
                        as int?,
            middleArea:
                freezed == middleArea
                    ? _value.middleArea
                    : middleArea // ignore: cast_nullable_to_non_nullable
                        as String?,
            smallArea:
                freezed == smallArea
                    ? _value.smallArea
                    : smallArea // ignore: cast_nullable_to_non_nullable
                        as String?,
            genre:
                freezed == genre
                    ? _value.genre
                    : genre // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GourmetSearchRequestImplCopyWith<$Res>
    implements $GourmetSearchRequestCopyWith<$Res> {
  factory _$$GourmetSearchRequestImplCopyWith(
    _$GourmetSearchRequestImpl value,
    $Res Function(_$GourmetSearchRequestImpl) then,
  ) = __$$GourmetSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'service_area') String serviceArea,
    int? start,
    int? count,
    String? keyword,
    int? order,
    @JsonKey(name: 'middle_area') String? middleArea,
    @JsonKey(name: 'small_area') String? smallArea,
    String? genre,
  });
}

/// @nodoc
class __$$GourmetSearchRequestImplCopyWithImpl<$Res>
    extends _$GourmetSearchRequestCopyWithImpl<$Res, _$GourmetSearchRequestImpl>
    implements _$$GourmetSearchRequestImplCopyWith<$Res> {
  __$$GourmetSearchRequestImplCopyWithImpl(
    _$GourmetSearchRequestImpl _value,
    $Res Function(_$GourmetSearchRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GourmetSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? start = freezed,
    Object? count = freezed,
    Object? keyword = freezed,
    Object? order = freezed,
    Object? middleArea = freezed,
    Object? smallArea = freezed,
    Object? genre = freezed,
  }) {
    return _then(
      _$GourmetSearchRequestImpl(
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as String,
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
        keyword:
            freezed == keyword
                ? _value.keyword
                : keyword // ignore: cast_nullable_to_non_nullable
                    as String?,
        order:
            freezed == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                    as int?,
        middleArea:
            freezed == middleArea
                ? _value.middleArea
                : middleArea // ignore: cast_nullable_to_non_nullable
                    as String?,
        smallArea:
            freezed == smallArea
                ? _value.smallArea
                : smallArea // ignore: cast_nullable_to_non_nullable
                    as String?,
        genre:
            freezed == genre
                ? _value.genre
                : genre // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GourmetSearchRequestImpl implements _GourmetSearchRequest {
  const _$GourmetSearchRequestImpl({
    @JsonKey(name: 'service_area') required this.serviceArea,
    this.start,
    this.count,
    this.keyword,
    this.order,
    @JsonKey(name: 'middle_area') this.middleArea,
    @JsonKey(name: 'small_area') this.smallArea,
    this.genre,
  });

  factory _$GourmetSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GourmetSearchRequestImplFromJson(json);

  /// 서비스 에리어 코드 (필수)
  /// 예: "SA11" (도쿄), "SA12" (가나가와) 등
  /// 최대 3개까지 지정 가능
  @override
  @JsonKey(name: 'service_area')
  final String serviceArea;

  /// 검색 시작 위치
  /// 무한스크롤을 위한 페이징 처리에 사용
  /// 기본값: 1
  @override
  final int? start;

  /// 1페이지당 출력할 데이터 수
  /// 기본값: 100 (최대값)
  /// 최소값: 1, 최대값: 100
  @override
  final int? count;

  /// 키워드 검색 (향후 확장용)
  /// 가게명, 주소, 역명, 장르 등에서 부분일치 검색
  /// 공백으로 구분하여 AND 검색 가능
  @override
  final String? keyword;

  /// 정렬 순서 (향후 확장용)
  /// 1: 가게명 가나순
  /// 2: 장르 코드순
  /// 3: 소지역 코드순
  /// 4: 추천순 (기본값)
  @override
  final int? order;

  /// 중지역 코드 (V2 지역 필터링)
  /// 예: "Y055" (신주쿠), "Y030" (시부야) 등
  /// service_area 내에서 더 세분화된 검색 가능
  @override
  @JsonKey(name: 'middle_area')
  final String? middleArea;

  /// 소지역 코드 (기존 지역 필터링, 하위 호환성)
  /// 예: "X050" (신주쿠), "X051" (시부야) 등
  /// service_area 내에서 더 세분화된 검색 가능
  @override
  @JsonKey(name: 'small_area')
  final String? smallArea;

  /// 장르 코드 (음식 장르 필터링)
  /// 예: "G001" (이자카야), "G004" (이탈리안) 등
  /// HotPepper의 Genre Master에서 제공하는 코드 사용
  @override
  final String? genre;

  @override
  String toString() {
    return 'GourmetSearchRequest(serviceArea: $serviceArea, start: $start, count: $count, keyword: $keyword, order: $order, middleArea: $middleArea, smallArea: $smallArea, genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GourmetSearchRequestImpl &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.middleArea, middleArea) ||
                other.middleArea == middleArea) &&
            (identical(other.smallArea, smallArea) ||
                other.smallArea == smallArea) &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    serviceArea,
    start,
    count,
    keyword,
    order,
    middleArea,
    smallArea,
    genre,
  );

  /// Create a copy of GourmetSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GourmetSearchRequestImplCopyWith<_$GourmetSearchRequestImpl>
  get copyWith =>
      __$$GourmetSearchRequestImplCopyWithImpl<_$GourmetSearchRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GourmetSearchRequestImplToJson(this);
  }
}

abstract class _GourmetSearchRequest implements GourmetSearchRequest {
  const factory _GourmetSearchRequest({
    @JsonKey(name: 'service_area') required final String serviceArea,
    final int? start,
    final int? count,
    final String? keyword,
    final int? order,
    @JsonKey(name: 'middle_area') final String? middleArea,
    @JsonKey(name: 'small_area') final String? smallArea,
    final String? genre,
  }) = _$GourmetSearchRequestImpl;

  factory _GourmetSearchRequest.fromJson(Map<String, dynamic> json) =
      _$GourmetSearchRequestImpl.fromJson;

  /// 서비스 에리어 코드 (필수)
  /// 예: "SA11" (도쿄), "SA12" (가나가와) 등
  /// 최대 3개까지 지정 가능
  @override
  @JsonKey(name: 'service_area')
  String get serviceArea;

  /// 검색 시작 위치
  /// 무한스크롤을 위한 페이징 처리에 사용
  /// 기본값: 1
  @override
  int? get start;

  /// 1페이지당 출력할 데이터 수
  /// 기본값: 100 (최대값)
  /// 최소값: 1, 최대값: 100
  @override
  int? get count;

  /// 키워드 검색 (향후 확장용)
  /// 가게명, 주소, 역명, 장르 등에서 부분일치 검색
  /// 공백으로 구분하여 AND 검색 가능
  @override
  String? get keyword;

  /// 정렬 순서 (향후 확장용)
  /// 1: 가게명 가나순
  /// 2: 장르 코드순
  /// 3: 소지역 코드순
  /// 4: 추천순 (기본값)
  @override
  int? get order;

  /// 중지역 코드 (V2 지역 필터링)
  /// 예: "Y055" (신주쿠), "Y030" (시부야) 등
  /// service_area 내에서 더 세분화된 검색 가능
  @override
  @JsonKey(name: 'middle_area')
  String? get middleArea;

  /// 소지역 코드 (기존 지역 필터링, 하위 호환성)
  /// 예: "X050" (신주쿠), "X051" (시부야) 등
  /// service_area 내에서 더 세분화된 검색 가능
  @override
  @JsonKey(name: 'small_area')
  String? get smallArea;

  /// 장르 코드 (음식 장르 필터링)
  /// 예: "G001" (이자카야), "G004" (이탈리안) 등
  /// HotPepper의 Genre Master에서 제공하는 코드 사용
  @override
  String? get genre;

  /// Create a copy of GourmetSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GourmetSearchRequestImplCopyWith<_$GourmetSearchRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
