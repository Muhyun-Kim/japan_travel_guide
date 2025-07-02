import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:japan_travel_guide/core/constants/api_constants.dart';

// API Result Union 타입
import '../../models/common/api_result.dart';
// Error 모델
import '../../models/hotpepper/common/error.dart';
// Request 모델들
import '../../models/hotpepper/request/master_requests.dart';
// Response 모델들
import '../../models/hotpepper/response/master_response.dart';

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

  Future<ApiResult<BudgetResponse>> getBudgetMaster() async {
    try {
      // URL은 이미 필요한 모든 파라미터(API key, format)를 포함
      final url = HotPepperEndpoints.master.budget;

      // HTTP GET 요청
      final response = await _client.get(Uri.parse(url));

      // HTTP 상태 코드 체크
      if (response.statusCode != 200) {
        return ApiResult.httpError(
          response.statusCode,
          response.reasonPhrase ?? 'Unknown HTTP error',
        );
      }

      final jsonData =
          jsonDecode(response.body) as Map<String, dynamic>;
      final results = jsonData['results'] as Map<String, dynamic>;

      // HotPepper API 에러 체크
      if (results.containsKey('error')) {
        final hotPepperError = HotPepperError.fromJson(jsonData);
        return ApiResult.apiError(hotPepperError);
      }

      // 성공 응답 파싱
      final budgetResponse = BudgetResponse.fromJson(results);
      return ApiResult.success(budgetResponse);
    } on FormatException catch (e) {
      return ApiResult.networkError('JSON 파싱 오류: ${e.message}');
    } catch (e) {
      return ApiResult.networkError('네트워크 오류: $e');
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

  Future<GenreResponse> getGenreMaster() async {
    try {
      // URL은 이미 필요한 모든 파라미터(API key, format)를 포함
      final url = HotPepperEndpoints.master.genre;

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

      final res = GenreResponse.fromHotPepperApi(
        jsonData,
        'genre',
        (json) => json.map((e) => CodeName.fromJson(e)).toList(),
      );
      return res;
    } catch (e) {
      throw Exception('Genre Master API 호출 실패: $e');
    }
  }

  Future<CreditCardResponse> getCreditCardMaster() async {
    try {
      // URL은 이미 필요한 모든 파라미터(API key, format)를 포함
      final url = HotPepperEndpoints.master.creditCard;

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

      final res = CreditCardResponse.fromHotPepperApi(
        jsonData,
        'credit_card',
        (json) => json.map((e) => CodeName.fromJson(e)).toList(),
      );
      return res;
    } catch (e) {
      throw Exception('Credit Card Master API 호출 실패: $e');
    }
  }
}
