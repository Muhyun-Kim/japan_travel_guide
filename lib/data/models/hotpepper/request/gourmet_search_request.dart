import 'package:freezed_annotation/freezed_annotation.dart';

part 'gourmet_search_request.freezed.dart';
part 'gourmet_search_request.g.dart';

// ============================================================================
// Gourmet Search API Request 모델
// ============================================================================

/// Gourmet Search API 요청 파라미터
///
/// 일본 음식점을 검색하기 위한 파라미터들입니다.
/// 현재는 service_area 기반 검색과 무한스크롤을 지원합니다.
@freezed
class GourmetSearchRequest with _$GourmetSearchRequest {
  const factory GourmetSearchRequest({
    /// 서비스 에리어 코드 (필수)
    /// 예: "SA11" (도쿄), "SA12" (가나가와) 등
    /// 최대 3개까지 지정 가능
    @JsonKey(name: 'service_area') required String serviceArea,

    /// 검색 시작 위치
    /// 무한스크롤을 위한 페이징 처리에 사용
    /// 기본값: 1
    int? start,

    /// 1페이지당 출력할 데이터 수
    /// 기본값: 100 (최대값)
    /// 최소값: 1, 최대값: 100
    int? count,

    /// 키워드 검색 (향후 확장용)
    /// 가게명, 주소, 역명, 장르 등에서 부분일치 검색
    /// 공백으로 구분하여 AND 검색 가능
    String? keyword,

    /// 정렬 순서 (향후 확장용)
    /// 1: 가게명 가나순
    /// 2: 장르 코드순
    /// 3: 소지역 코드순
    /// 4: 추천순 (기본값)
    int? order,

    /// 중지역 코드 (V2 지역 필터링)
    /// 예: "Y055" (신주쿠), "Y030" (시부야) 등
    /// service_area 내에서 더 세분화된 검색 가능
    @JsonKey(name: 'middle_area') String? middleArea,

    /// 소지역 코드 (기존 지역 필터링, 하위 호환성)
    /// 예: "X050" (신주쿠), "X051" (시부야) 등
    /// service_area 내에서 더 세분화된 검색 가능
    @JsonKey(name: 'small_area') String? smallArea,

    /// 장르 코드 (음식 장르 필터링)
    /// 예: "G001" (이자카야), "G004" (이탈리안) 등
    /// HotPepper의 Genre Master에서 제공하는 코드 사용
    String? genre,
  }) = _GourmetSearchRequest;

  factory GourmetSearchRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$GourmetSearchRequestFromJson(json);
}

// ============================================================================
// GourmetSearchRequest Extension - 유틸리티 메소드들
// ============================================================================

/// GourmetSearchRequest 확장 메소드들
///
/// Freezed 클래스에 직접 추가할 수 없는 커스텀 메소드들을
/// extension으로 제공합니다.
extension GourmetSearchRequestExtension on GourmetSearchRequest {
  /// Request 객체를 URL 쿼리 파라미터 Map으로 변환
  /// null인 파라미터들은 제외됩니다.
  ///
  /// 사용 예시:
  /// ```dart
  /// final request = GourmetSearchRequest(
  ///   serviceArea: 'SA11',
  ///   start: 1,
  ///   count: 100,
  /// );
  /// final params = request.toQueryParams();
  /// // 결과: {'service_area': 'SA11', 'start': '1', 'count': '100'}
  /// ```
  Map<String, String> toQueryParams() {
    final params = <String, String>{};

    // 필수 파라미터
    params['service_area'] = serviceArea;

    // 선택적 파라미터들
    if (start != null) {
      params['start'] = start.toString();
    }
    if (count != null) {
      params['count'] = count.toString();
    }
    if (keyword != null && keyword!.isNotEmpty) {
      params['keyword'] = keyword!;
    }
    if (order != null) {
      params['order'] = order.toString();
    }
    if (middleArea != null && middleArea!.isNotEmpty) {
      params['middle_area'] = middleArea!;
    }
    if (smallArea != null && smallArea!.isNotEmpty) {
      params['small_area'] = smallArea!;
    }
    if (genre != null && genre!.isNotEmpty) {
      params['genre'] = genre!;
    }

    return params;
  }

  /// 무한스크롤을 위한 다음 페이지 요청 생성
  ///
  /// 현재 요청에서 start 값을 증가시켜 다음 페이지 요청을 생성합니다.
  ///
  /// 사용 예시:
  /// ```dart
  /// final currentRequest = GourmetSearchRequest(serviceArea: 'SA11', start: 1);
  /// final nextRequest = currentRequest.nextPage(count: 100);
  /// // 다음 요청의 start는 101이 됩니다.
  /// ```
  GourmetSearchRequest nextPage({int count = 100}) {
    final currentStart = start ?? 1;
    return copyWith(
      start: currentStart + count,
      count: count,
    );
  }

  /// 첫 페이지로 리셋
  ///
  /// start를 1로 초기화하여 첫 페이지 요청을 생성합니다.
  ///
  /// 사용 예시:
  /// ```dart
  /// final resetRequest = currentRequest.firstPage(count: 100);
  /// ```
  GourmetSearchRequest firstPage({int count = 100}) {
    return copyWith(
      start: 1,
      count: count,
    );
  }
}
