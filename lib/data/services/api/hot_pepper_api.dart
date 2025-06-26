import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:japan_travel_guide/core/constants/api_constants.dart';

// Request 모델들
import '../../models/hotpepper/request/master_requests.dart';
// Response 모델들
import '../../models/hotpepper/response/master_response.dart';

/// Hot Pepper API 서비스 클래스
///
/// Hot Pepper의 Master API들을 제공합니다:
/// - Budget Master API (예산 구간 마스터)
/// - 향후 Genre Master, Credit Card Master 등 추가 예정
class HotPepperApi {
  final http.Client _client;

  /// HTTP 클라이언트를 주입받는 생성자
  /// 테스트 시 mock client를 주입할 수 있습니다.
  HotPepperApi({http.Client? client})
    : _client = client ?? http.Client();

  /// 리소스 정리
  void dispose() {
    _client.close();
  }

  // ==========================================================================
  // Private 헬퍼 메서드들 (향후 파라미터가 있는 API를 위해 유지)
  // ==========================================================================

  /// URL과 쿼리 파라미터를 조합하여 최종 URL을 생성
  ///
  /// [baseUrl] - 기본 URL (이미 API key와 format이 포함됨)
  /// [params] - 추가 쿼리 파라미터
  String _buildUrl(String baseUrl, Map<String, String> params) {
    if (params.isEmpty) return baseUrl;

    final queryString = params.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');

    return '$baseUrl&$queryString';
  }

  // ==========================================================================
  // Master APIs
  // ==========================================================================

  /// Budget Master API - 예산 구간 마스터 데이터 조회
  ///
  /// Hot Pepper에서 제공하는 예산 구간 정보를 가져옵니다.
  /// 예: "~1000엔", "1001~1500엔", "1501~2000엔" 등
  ///
  /// 추가 파라미터가 필요하지 않은 단순한 마스터 데이터 조회입니다.
  ///
  /// 사용 예시:
  /// ```dart
  /// final api = HotPepperApi();
  /// final budgets = await api.getBudgetMaster();
  ///
  /// for (final budget in budgets.budgets) {
  ///   print('${budget.name}: ${budget.code}');
  /// }
  /// ```
  Future<BudgetResponse> getBudgetMaster() async {
    try {
      // URL은 이미 필요한 모든 파라미터(API key, format)를 포함
      final url = HotPepperEndpoints.master.budget;

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;

      final res = BudgetResponse.fromHotPepperApi(
        jsonData,
        'budget',
        (json) => json.map((e) => CodeName.fromJson(e)).toList(),
      );
      return res;
    } catch (e) {
      throw Exception('Budget Master API 호출 실패: $e');
    }
  }

  Future<LargeServiceAreaResponse> getLargeServiceAreaMaster() async {
    try {
      final url = HotPepperEndpoints.master.largeServiceArea;

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;

      final res = LargeServiceAreaResponse.fromHotPepperApi(
        jsonData,
        'large_service_area',
        (json) => json.map((e) => CodeName.fromJson(e)).toList(),
      );
      print(res);
      return res;
    } catch (e) {
      throw Exception('Large Service Area Master API 호출 실패: $e');
    }
  }

  Future<ServiceAreaResponse> getServiceAreaMaster() async {
    try {
      final url = HotPepperEndpoints.master.serviceArea;

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonData);

      final res = ServiceAreaResponse.fromHotPepperApi(
        jsonData,
        'service_area',
        (json) => json.map((e) => ServiceArea.fromJson(e)).toList(),
      );
      print(res);
      return res;
    } catch (e) {
      throw Exception('Service Area Master API 호출 실패: $e');
    }
  }

  Future<LargeAreaResponse> getLargeAreaMaster() async {
    try {
      final url = HotPepperEndpoints.master.largeArea;

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonData);

      final res = LargeAreaResponse.fromHotPepperApi(
        jsonData,
        'large_area',
        (json) => json.map((e) => LargeArea.fromJson(e)).toList(),
      );
      print(res);
      return res;
    } catch (e) {
      throw Exception('Large Area Master API 호출 실패: $e');
    }
  }

  /// Middle Area Master API - 중분류 지역 마스터 데이터 조회
  ///
  /// Hot Pepper에서 제공하는 중분류 지역 정보를 가져옵니다.
  /// 예: "신주쿠", "시부야", "우에노" 등
  ///
  /// 이 API는 다양한 필터링 옵션을 제공합니다:
  /// - 특정 중분류 지역 코드로 조회
  /// - 특정 대분류 지역에 속한 중분류 지역들 조회
  /// - 지역명 키워드로 부분 검색
  /// - 페이징 처리
  ///
  /// 사용 예시:
  /// ```dart
  /// final api = HotPepperApi();
  ///
  /// // 모든 중분류 지역 조회
  /// final allAreas = await api.getMiddleAreaMaster();
  ///
  /// // 특정 대지역에 속한 중분류 지역들 조회
  /// final tokyoAreas = await api.getMiddleAreaMaster(
  ///   MiddleAreaMasterRequest(largeAreaCode: 'Z011')
  /// );
  ///
  /// // 키워드로 검색
  /// final shinjukuAreas = await api.getMiddleAreaMaster(
  ///   MiddleAreaMasterRequest(keyword: '신주쿠')
  /// );
  ///
  /// for (final area in tokyoAreas.middleAreas) {
  ///   print('중분류 지역: ${area.name} (${area.code})');
  ///   print('대지역: ${area.largeArea.name}');
  ///   print('서비스지역: ${area.serviceArea.name}');
  ///   print('대서비스지역: ${area.largeServiceArea.name}');
  /// }
  /// ```
  Future<MiddleAreaResponse> getMiddleAreaMaster([
    MiddleAreaMasterRequest? request,
  ]) async {
    try {
      // 기본 URL에 요청 파라미터 추가
      final baseUrl = HotPepperEndpoints.master.middleArea;
      final queryParams =
          request?.toQueryParams() ?? <String, String>{};
      final url = _buildUrl(baseUrl, queryParams);

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;

      final res = MiddleAreaResponse.fromHotPepperApi(
        jsonData,
        'middle_area',
        (json) => json.map((e) => MiddleArea.fromJson(e)).toList(),
      );
      return res;
    } catch (e) {
      throw Exception('Middle Area Master API 호출 실패: $e');
    }
  }

  Future<SmallAreaResponse> getSmallAreaMaster([
    SmallAreaMasterRequest? request,
  ]) async {
    try {
      // 기본 URL에 요청 파라미터 추가
      final baseUrl = HotPepperEndpoints.master.smallArea;
      final queryParams =
          request?.toQueryParams() ?? <String, String>{};
      final url = _buildUrl(baseUrl, queryParams);

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonData);

      final res = SmallAreaResponse.fromHotPepperApi(
        jsonData,
        'small_area',
        (json) => json.map((e) => SmallArea.fromJson(e)).toList(),
      );
      return res;
    } catch (e) {
      throw Exception('Small Area Master API 호출 실패: $e');
    }
  }
}
