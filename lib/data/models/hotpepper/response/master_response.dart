import 'package:freezed_annotation/freezed_annotation.dart';

// HotPepper API 전용 안전한 JSON 변환기들
import '../common/json_converters.dart';

part 'master_response.freezed.dart';
part 'master_response.g.dart';

// ============================================================================
// 공통 모델
// ============================================================================
@freezed
class MasterBaseResponse<T> with _$MasterBaseResponse<T> {
  const factory MasterBaseResponse({
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
    required T data,
  }) = _MasterBaseResponse<T>;

  // fromJson 메서드 제거하고 fromHotPepperApi만 사용
  factory MasterBaseResponse.fromHotPepperApi(
    Map<String, dynamic> json,
    String dataKey,
    T Function(List<dynamic>) dataParser,
  ) {
    final results = json['results'] as Map<String, dynamic>;

    if (results.containsKey('error')) {
      final error = results['error'] as Map<String, dynamic>;
      throw Exception('API Error: ${error['message']}');
    }

    // SafeIntConverter 로직 수동 적용
    int parseIntSafely(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is String) {
        return int.tryParse(value) ?? 0;
      }
      return 0;
    }

    String parseStringSafely(dynamic value) {
      if (value == null) return 'unknown';
      return value.toString();
    }

    return MasterBaseResponse<T>(
      apiVersion: parseStringSafely(results['api_version']),
      resultsAvailable: parseIntSafely(results['results_available']),
      resultsReturned: parseIntSafely(results['results_returned']),
      resultsStart: parseIntSafely(results['results_start']),
      data: dataParser(results[dataKey] as List<dynamic>? ?? []),
    );
  }
}

// ============================================================================
// Budget 모델
// ============================================================================

@freezed
class CodeName with _$CodeName {
  const factory CodeName({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
  }) = _CodeName;

  factory CodeName.fromJson(Map<String, dynamic> json) =>
      _$CodeNameFromJson(json);
}

typedef BudgetResponse = MasterBaseResponse<List<CodeName>>;

typedef LargeServiceAreaResponse = MasterBaseResponse<List<CodeName>>;

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
    required CodeName largeServiceArea,
  }) = _ServiceArea;

  factory ServiceArea.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreaFromJson(json);
}

typedef ServiceAreaResponse = MasterBaseResponse<List<ServiceArea>>;

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
    @JsonKey(name: 'service_area') required CodeName serviceArea,
    @JsonKey(name: 'large_service_area')
    required CodeName largeServiceArea,
  }) = _LargeArea;

  factory LargeArea.fromJson(Map<String, dynamic> json) =>
      _$LargeAreaFromJson(json);
}

typedef LargeAreaResponse = MasterBaseResponse<List<LargeArea>>;

// ============================================================================
// MiddleArea 모델 (중분류 지역 - Y055, Y010 등)
// ============================================================================

@freezed
class MiddleArea with _$MiddleArea {
  const factory MiddleArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
    @JsonKey(name: 'large_area') required CodeName largeArea,
    @JsonKey(name: 'service_area') required CodeName serviceArea,
    @JsonKey(name: 'large_service_area')
    required CodeName largeServiceArea,
  }) = _MiddleArea;

  factory MiddleArea.fromJson(Map<String, dynamic> json) =>
      _$MiddleAreaFromJson(json);
}

typedef MiddleAreaResponse = MasterBaseResponse<List<MiddleArea>>;

// ============================================================================
// SmallArea 모델 (소분류 지역 - X001, X002 등)
// ============================================================================

@freezed
class SmallArea with _$SmallArea {
  const factory SmallArea({
    @SafeStringConverter()
    @JsonKey(name: 'code', defaultValue: '')
    required String code,
    @SafeStringConverter()
    @JsonKey(name: 'name', defaultValue: '')
    required String name,
    @JsonKey(name: 'middle_area') required CodeName middleArea,
    @JsonKey(name: 'large_area') required CodeName largeArea,
    @JsonKey(name: 'service_area') required CodeName serviceArea,
    @JsonKey(name: 'large_service_area')
    required CodeName largeServiceArea,
  }) = _SmallArea;

  factory SmallArea.fromJson(Map<String, dynamic> json) =>
      _$SmallAreaFromJson(json);
}

typedef SmallAreaResponse = MasterBaseResponse<List<SmallArea>>;

typedef GenreResponse = MasterBaseResponse<List<CodeName>>;

typedef CreditCardResponse = MasterBaseResponse<List<CodeName>>;
