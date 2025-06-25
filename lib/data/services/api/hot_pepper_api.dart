import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:japan_travel_guide/core/constants/api_constants.dart';

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

      final res = BudgetResponse.fromHotPepperApi(jsonData);
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

      final res = LargeServiceAreaResponse.fromHotPepperApi(jsonData);
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

      final res = ServiceAreaResponse.fromHotPepperApi(jsonData);
      print(res);
      return res;
    } catch (e) {
      throw Exception('Service Area Master API 호출 실패: $e');
    }
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
}
