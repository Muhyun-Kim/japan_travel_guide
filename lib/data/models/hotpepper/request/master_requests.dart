import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_requests.freezed.dart';
part 'master_requests.g.dart';

// ============================================================================
// Middle Area Master API Request 모델
// ============================================================================

/// Middle Area Master API 요청 파라미터
///
/// 중분류 지역 마스터 데이터를 검색하기 위한 파라미터들입니다.
/// 모든 파라미터는 선택사항이며, 조건에 따라 필터링할 수 있습니다.
@freezed
class MiddleAreaMasterRequest with _$MiddleAreaMasterRequest {
  const factory MiddleAreaMasterRequest({
    /// 중분류 지역 코드
    /// 예: "Y005", "Y010" 등
    /// 특정 중분류 지역의 정보만 조회할 때 사용
    @JsonKey(name: 'middle_area') String? middleAreaCode,

    /// 대분류 지역 코드
    /// 예: "Z011" (도쿄), "Z012" (가나가와) 등
    @JsonKey(name: 'large_area') String? largeAreaCode,

    /// 중분류 지역명 키워드
    /// 예: "新宿", "渋谷" 등
    String? keyword,

    /// 기본값: 1
    /// 페이징 처리에 사용
    int? start,

    /// 1페이지당 출력할 데이터 수
    /// 기본값: API의 기본값 사용
    /// 최대값: API 제한에 따름
    int? count,
  }) = _MiddleAreaMasterRequest;

  factory MiddleAreaMasterRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$MiddleAreaMasterRequestFromJson(json);
}

// ============================================================================
// MiddleAreaMasterRequest Extension - 유틸리티 메소드들
// ============================================================================

/// MiddleAreaMasterRequest 확장 메소드들
///
/// Freezed 클래스에 직접 추가할 수 없는 커스텀 메소드들을
/// extension으로 제공합니다.
extension MiddleAreaMasterRequestExtension
    on MiddleAreaMasterRequest {
  /// Request 객체를 URL 쿼리 파라미터 Map으로 변환
  /// null인 파라미터들은 제외됩니다.
  ///
  /// 사용 예시:
  /// ```dart
  /// final request = MiddleAreaMasterRequest(
  ///   largeAreaCode: 'Z011',
  ///   keyword: '신주쿠',
  /// );
  /// final params = request.toQueryParams();
  /// // 결과: {'large_area': 'Z011', 'keyword': '신주쿠'}
  /// ```
  Map<String, String> toQueryParams() {
    final params = <String, String>{};

    if (middleAreaCode != null) {
      params['middle_area'] = middleAreaCode!;
    }
    if (largeAreaCode != null) {
      params['large_area'] = largeAreaCode!;
    }
    if (keyword != null) {
      params['keyword'] = keyword!;
    }
    if (start != null) {
      params['start'] = start.toString();
    }
    if (count != null) {
      params['count'] = count.toString();
    }

    return params;
  }
}

@freezed
class SmallAreaMasterRequest with _$SmallAreaMasterRequest {
  const factory SmallAreaMasterRequest({
    @JsonKey(name: 'small_area') String? smallAreaCode,
    @JsonKey(name: 'middle_area') String? middleAreaCode,
    String? keyword,
    int? start,
    int? count,
  }) = _SmallAreaMasterRequest;

  factory SmallAreaMasterRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$SmallAreaMasterRequestFromJson(json);
}

// ============================================================================
// MiddleAreaMasterRequest Extension - 유틸리티 메소드들
// ============================================================================

/// MiddleAreaMasterRequest 확장 메소드들
///
/// Freezed 클래스에 직접 추가할 수 없는 커스텀 메소드들을
/// extension으로 제공합니다.
extension SmallAreaMasterRequestExtension on SmallAreaMasterRequest {
  /// Request 객체를 URL 쿼리 파라미터 Map으로 변환
  /// null인 파라미터들은 제외됩니다.
  ///
  /// 사용 예시:
  /// ```dart
  /// final request = MiddleAreaMasterRequest(
  ///   largeAreaCode: 'Z011',
  ///   keyword: '신주쿠',
  /// );
  /// final params = request.toQueryParams();
  /// // 결과: {'large_area': 'Z011', 'keyword': '신주쿠'}
  /// ```
  Map<String, String> toQueryParams() {
    final params = <String, String>{};

    if (smallAreaCode != null) {
      params['small_area'] = smallAreaCode!;
    }
    if (middleAreaCode != null) {
      params['middle_area'] = middleAreaCode!;
    }
    if (keyword != null) {
      params['keyword'] = keyword!;
    }
    if (start != null) {
      params['start'] = start.toString();
    }
    if (count != null) {
      params['count'] = count.toString();
    }

    return params;
  }
}
