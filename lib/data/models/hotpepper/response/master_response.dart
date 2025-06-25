import 'package:freezed_annotation/freezed_annotation.dart';

// HotPepper API 전용 안전한 JSON 변환기들
import '../common/json_converters.dart';

part 'master_response.freezed.dart';
part 'master_response.g.dart';

// ============================================================================
// Budget 모델
// ============================================================================

@freezed
class Budget with _$Budget {
  const factory Budget({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
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
    @JsonKey(name: 'budget', defaultValue: <Budget>[])
    required List<Budget> budgets,
  }) = _BudgetResponse;

  /// 표준 JSON 직렬화 (freezed 자동 생성)
  factory BudgetResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetResponseFromJson(json);

  /// Hot Pepper API 응답 전용 파싱
  /// 
  /// HotPepper API의 특수한 응답 구조를 처리합니다.
  /// - 'results' 래퍼 제거
  /// - 에러 응답 체크
  /// - json_serializable의 기본 파싱 활용
  factory BudgetResponse.fromHotPepperApi(Map<String, dynamic> json) {
    final results = json['results'] as Map<String, dynamic>;

    // 에러 응답 체크
    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    // json_serializable의 기본 파싱 사용
    // @JsonKey의 defaultValue와 name 매핑이 자동으로 처리됨
    return BudgetResponse.fromJson(results);
  }
}

// ============================================================================
// LargeServiceArea 모델 (대서비스 지역 - SS10, SS20 등)
// ============================================================================

@freezed
class LargeServiceArea with _$LargeServiceArea {
  const factory LargeServiceArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
  }) = _LargeServiceArea;

  factory LargeServiceArea.fromJson(Map<String, dynamic> json) =>
      _$LargeServiceAreaFromJson(json);
}

// ============================================================================
// LargeServiceAreaResponse 모델
// ============================================================================

@freezed
class LargeServiceAreaResponse with _$LargeServiceAreaResponse {
  const factory LargeServiceAreaResponse({
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
    @JsonKey(name: 'large_service_area', defaultValue: <LargeServiceArea>[])
    required List<LargeServiceArea> largeServiceAreas,
  }) = _LargeServiceAreaResponse;

  factory LargeServiceAreaResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$LargeServiceAreaResponseFromJson(json);

  /// Hot Pepper API 응답 전용 파싱
  factory LargeServiceAreaResponse.fromHotPepperApi(
    Map<String, dynamic> json,
  ) {
    final results = json['results'] as Map<String, dynamic>;

    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    return LargeServiceAreaResponse.fromJson(results);
  }
}

// ============================================================================
// ServiceArea 모델 (서비스 지역 - SA11, SA12 등)
// ============================================================================

@freezed
class ServiceArea with _$ServiceArea {
  const factory ServiceArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
    @JsonKey(name: 'large_service_area')
    required LargeServiceArea largeServiceArea,
  }) = _ServiceArea;

  factory ServiceArea.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreaFromJson(json);
}

// ============================================================================
// ServiceAreaResponse 모델
// ============================================================================

@freezed
class ServiceAreaResponse with _$ServiceAreaResponse {
  const factory ServiceAreaResponse({
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
    @JsonKey(name: 'service_area', defaultValue: <ServiceArea>[])
    required List<ServiceArea> serviceAreas,
  }) = _ServiceAreaResponse;

  factory ServiceAreaResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreaResponseFromJson(json);

  /// Hot Pepper API 응답 전용 파싱
  factory ServiceAreaResponse.fromHotPepperApi(
    Map<String, dynamic> json,
  ) {
    final results = json['results'] as Map<String, dynamic>;

    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    return ServiceAreaResponse.fromJson(results);
  }
}

// ============================================================================
// LargeArea 모델 (대지역 - Z011, Z012 등)
// ============================================================================

@freezed
class LargeArea with _$LargeArea {
  const factory LargeArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
    @JsonKey(name: 'service_area')
    required ServiceArea serviceArea,
    @JsonKey(name: 'large_service_area')
    required LargeServiceArea largeServiceArea,
  }) = _LargeArea;

  factory LargeArea.fromJson(Map<String, dynamic> json) =>
      _$LargeAreaFromJson(json);
}

// ============================================================================
// LargeAreaResponse 모델
// ============================================================================

@freezed
class LargeAreaResponse with _$LargeAreaResponse {
  const factory LargeAreaResponse({
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
    @JsonKey(name: 'large_area', defaultValue: <LargeArea>[])
    required List<LargeArea> largeAreas,
  }) = _LargeAreaResponse;

  factory LargeAreaResponse.fromJson(Map<String, dynamic> json) =>
      _$LargeAreaResponseFromJson(json);

  /// Hot Pepper API 응답 전용 파싱
  factory LargeAreaResponse.fromHotPepperApi(
    Map<String, dynamic> json,
  ) {
    final results = json['results'] as Map<String, dynamic>;

    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    return LargeAreaResponse.fromJson(results);
  }
}
