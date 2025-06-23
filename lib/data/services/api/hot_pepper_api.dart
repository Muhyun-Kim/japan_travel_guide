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
  // Master APIs
  // ==========================================================================

  /// Budget Master API - 예산 구간 마스터 데이터 조회
  ///
  /// Hot Pepper에서 제공하는 예산 구간 정보를 가져옵니다.
  /// 예: "~1000엔", "1001~1500엔", "1501~2000엔" 등
  ///
  /// [request] - API 요청 파라미터 (null인 경우 기본값 사용)
  ///
  /// 사용 예시:
  /// ```dart
  /// final api = HotPepperApi();
  /// final budgets = await api.getBudgetMaster();
  ///
  /// for (final budget in budgets.budgets) {
  ///   print('${budget.name}: ${budget.average}');
  /// }
  /// ```
  Future<BudgetResponse> getBudgetMaster([
    BudgetMasterRequest? request,
  ]) async {
    try {
      // 기본 request 설정
      request ??= const BudgetMasterRequest();

      // URL 구성
      final queryParams = request.toQueryParams();
      final url = _buildUrl(
        HotPepperEndpoints.master.budget,
        queryParams,
      );

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        throw Exception(
          'HTTP ${response.statusCode}: ${response.reasonPhrase}',
        );
      }

      // JSON 파싱
      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;

      print('jsonData: $jsonData');
      // 🎯 Hot Pepper API 전용 파싱 메서드 사용
      return BudgetResponse.fromHotPepperApi(jsonData);
    } catch (e) {
      throw Exception('Budget Master API 호출 실패: $e');
    }
  }

  // ==========================================================================
  // 기존 메서드 (호환성 유지)
  // ==========================================================================

  /// 지역별 레스토랑 조회 (기존 메서드)
  ///
  /// 주의: 이 메서드는 기존 코드와의 호환성을 위해 유지됩니다.
  /// 새로운 코드에서는 다른 Master API 메서드 사용을 권장합니다.
  static Future<Map<String, dynamic>> getRestaurantWithRegion(
    String region,
  ) async {
    try {
      final url =
          '${HotPepperEndpoints.master.largeArea}&format=json&address=$region';
      print(url);
      final response = await http.get(Uri.parse(url));
      final res = jsonDecode(response.body);
      print(res);
      return res;
    } catch (e) {
      throw Exception(e);
    }
  }

  // ==========================================================================
  // Private 헬퍼 메서드들
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
}
