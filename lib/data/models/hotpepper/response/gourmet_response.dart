import 'package:freezed_annotation/freezed_annotation.dart';

// HotPepper API 전용 안전한 JSON 변환기들
import '../common/json_converters.dart';

part 'gourmet_response.freezed.dart';
part 'gourmet_response.g.dart';

// ============================================================================
// Gourmet Search API Response 모델
// ============================================================================

/// Gourmet Search API 응답 모델
///
/// 일람화면에 표시할 최소한의 필드들만 포함합니다.
@freezed
class GourmetResponse with _$GourmetResponse {
  const factory GourmetResponse({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required String apiVersion,
    @SafeIntConverter()
    @JsonKey(name: 'results_available', defaultValue: 0)
    required int resultsAvailable,
    @SafeIntConverter()
    @JsonKey(name: 'results_returned', defaultValue: 0)
    required int resultsReturned,
    @SafeIntConverter()
    @JsonKey(name: 'results_start', defaultValue: 0)
    required int resultsStart,
    @JsonKey(name: 'shop', defaultValue: <Shop>[])
    required List<Shop> shops,
  }) = _GourmetResponse;

  factory GourmetResponse.fromJson(Map<String, dynamic> json) =>
      _$GourmetResponseFromJson(json);

  /// Hot Pepper API 응답 전용 파싱
  factory GourmetResponse.fromHotPepperApi(Map<String, dynamic> json) {
    final results = json['results'] as Map<String, dynamic>;

    // 에러 응답 체크
    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    // json_serializable의 기본 파싱 사용
    return GourmetResponse.fromJson(results);
  }
}

// ============================================================================
// Shop 모델 (음식점 정보)
// ============================================================================

/// 음식점 기본 정보
///
/// 일람화면에서 보여줄 핵심 정보들만 포함합니다.
@freezed
class Shop with _$Shop {
  const factory Shop({
    /// 가게 ID
    @SafeStringConverter()
    @JsonKey(name: 'id', defaultValue: '')
    required String id,

    /// 가게명
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,

    /// 주소
    @SafeStringConverter()
    @JsonKey(name: 'address', defaultValue: '')
    required String address,

    /// 캐치 문구
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    required String catchPhrase,

    /// 교통편
    @SafeStringConverter()
    @JsonKey(name: 'access', defaultValue: '')
    required String access,

    /// 위도
    @SafeDoubleConverter()
    @JsonKey(name: 'lat', defaultValue: 0.0)
    required double latitude,

    /// 경도
    @SafeDoubleConverter()
    @JsonKey(name: 'lng', defaultValue: 0.0)
    required double longitude,

    /// 장르 정보
    @JsonKey(name: 'genre')
    required ShopGenre genre,

    /// 예산 정보
    @JsonKey(name: 'budget')
    required ShopBudget budget,

    /// 사진 정보
    @JsonKey(name: 'photo')
    required ShopPhoto photo,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}

// ============================================================================
// Shop 하위 모델들
// ============================================================================

/// 음식점 장르 정보
@freezed
class ShopGenre with _$ShopGenre {
  const factory ShopGenre({
    /// 장르 코드
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,

    /// 장르명
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,

    /// 장르 캐치 문구
    @SafeStringConverter()
    @JsonKey(name: 'catch', defaultValue: '')
    required String catchPhrase,
  }) = _ShopGenre;

  factory ShopGenre.fromJson(Map<String, dynamic> json) =>
      _$ShopGenreFromJson(json);
}

/// 음식점 예산 정보
@freezed
class ShopBudget with _$ShopBudget {
  const factory ShopBudget({
    /// 예산 코드
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,

    /// 예산 범위
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,

    /// 평균 예산
    @SafeStringConverter()
    @JsonKey(name: 'average', defaultValue: '')
    required String average,
  }) = _ShopBudget;

  factory ShopBudget.fromJson(Map<String, dynamic> json) =>
      _$ShopBudgetFromJson(json);
}

/// 음식점 사진 정보
@freezed
class ShopPhoto with _$ShopPhoto {
  const factory ShopPhoto({
    /// PC용 사진 URL들
    @JsonKey(name: 'pc')
    required ShopPhotoUrls pc,
  }) = _ShopPhoto;

  factory ShopPhoto.fromJson(Map<String, dynamic> json) =>
      _$ShopPhotoFromJson(json);
}

/// 사진 URL 정보
@freezed
class ShopPhotoUrls with _$ShopPhotoUrls {
  const factory ShopPhotoUrls({
    /// 대형 사진 URL
    @SafeStringConverter()
    @JsonKey(name: 'l', defaultValue: '')
    required String large,

    /// 중형 사진 URL
    @SafeStringConverter()
    @JsonKey(name: 'm', defaultValue: '')
    required String medium,

    /// 소형 사진 URL
    @SafeStringConverter()
    @JsonKey(name: 's', defaultValue: '')
    required String small,
  }) = _ShopPhotoUrls;

  factory ShopPhotoUrls.fromJson(Map<String, dynamic> json) =>
      _$ShopPhotoUrlsFromJson(json);
}

// ============================================================================
// GourmetResponse Extension - 유틸리티 메소드들
// ============================================================================

/// GourmetResponse 확장 메소드들
extension GourmetResponseExtension on GourmetResponse {
  /// 더 가져올 데이터가 있는지 확인
  ///
  /// 무한스크롤에서 사용합니다.
  bool get hasMoreData {
    return resultsStart + resultsReturned < resultsAvailable;
  }

  /// 현재 페이지가 비어있는지 확인
  bool get isEmpty => shops.isEmpty;

  /// 전체 결과 개수가 0인지 확인
  bool get hasNoResults => resultsAvailable == 0;

  /// 다음 페이지의 시작 위치 계산
  int get nextStartPosition {
    return resultsStart + resultsReturned;
  }
}

/// Shop 확장 메소드들
extension ShopExtension on Shop {
  /// 표시용 예산 정보
  /// 
  /// average가 있으면 우선 표시, 없으면 name 표시
  String get displayBudget {
    if (budget.average.isNotEmpty) {
      return budget.average;
    }
    return budget.name;
  }

  /// 썸네일 이미지 URL
  /// 
  /// 일람화면에서 사용할 적당한 크기의 이미지 URL
  String get thumbnailImageUrl {
    return photo.pc.medium.isNotEmpty 
        ? photo.pc.medium 
        : photo.pc.small;
  }

  /// 고해상도 이미지 URL
  /// 
  /// 상세화면에서 사용할 큰 이미지 URL
  String get highResImageUrl {
    return photo.pc.large.isNotEmpty 
        ? photo.pc.large 
        : photo.pc.medium;
  }

  /// 유효한 좌표인지 확인
  bool get hasValidCoordinates {
    return latitude != 0.0 && longitude != 0.0;
  }
}
