import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:japan_travel_guide/core/utils/type_converter.dart';

part 'master_response.freezed.dart';
part 'master_response.g.dart';

// ============================================================================
// Budget 모델
// ============================================================================

@freezed
class Budget with _$Budget {
  const factory Budget({required String code, required String name}) =
      _Budget;

  factory Budget.fromJson(Map<String, dynamic> json) =>
      _$BudgetFromJson(json);
}

// ============================================================================
// BudgetResponse 모델
// ============================================================================

@freezed
class BudgetResponse with _$BudgetResponse {
  const factory BudgetResponse({
    required String apiVersion,
    required int resultsAvailable,
    required int resultsReturned,
    required int resultsStart,
    required List<Budget> budgets,
  }) = _BudgetResponse;

  /// 표준 JSON 직렬화 (freezed 자동 생성)
  factory BudgetResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetResponseFromJson(json);

  /// Hot Pepper API 응답 전용 파싱
  factory BudgetResponse.fromHotPepperApi(Map<String, dynamic> json) {
    final results = json['results'] as Map<String, dynamic>;

    // 에러 응답 체크
    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    // 데이터 추출 및 안전한 타입 변환
    final budgetList = results['budget'] as List<dynamic>? ?? [];

    return BudgetResponse(
      apiVersion: TypeConverter.safeString(
        results['api_version'],
        defaultValue: 'unknown',
      ),
      resultsAvailable: TypeConverter.safeInt(
        results['results_available'],
      ),
      resultsReturned: TypeConverter.safeInt(
        results['results_returned'],
      ),
      resultsStart: TypeConverter.safeInt(results['results_start']),
      budgets:
          budgetList
              .map(
                (item) =>
                    Budget.fromJson(item as Map<String, dynamic>),
              )
              .toList(),
    );
  }
}
