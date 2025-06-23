import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_response.freezed.dart';
part 'master_response.g.dart';

// ============================================================================
// Budget 모델
// ============================================================================

@freezed
class Budget with _$Budget {
  const factory Budget({
    required String code,
    required String name,
    String? average,
  }) = _Budget;

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

  // freezed 표준 factory constructor
  factory BudgetResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetResponseFromJson(json);

  // 커스텀 파싱 로직은 별도 메서드로 분리
  factory BudgetResponse.fromHotPepperApi(Map<String, dynamic> json) {
    final results = json['results'] as Map<String, dynamic>;

    // 에러 체크
    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    final budgetList = results['budget'] as List<dynamic>? ?? [];

    return BudgetResponse(
      apiVersion: results['api_version'] as String? ?? 'unknown',
      resultsAvailable: results['results_available'] as int? ?? 0,
      resultsReturned: results['results_returned'] as int? ?? 0,
      resultsStart: results['results_start'] as int? ?? 1,
      budgets: budgetList
          .map((item) => Budget.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}
