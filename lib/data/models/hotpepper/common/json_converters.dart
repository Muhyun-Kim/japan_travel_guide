import 'package:freezed_annotation/freezed_annotation.dart';

// ============================================================================
// HotPepper API 전용 JSON 변환기들
// ============================================================================
//
// HotPepper API는 일관성 없는 응답 형태를 보이는 경우가 있습니다:
// - 숫자 필드를 문자열로 반환: "47" instead of 47
// - null 값이나 예상과 다른 타입
// 
// 이 변환기들은 json_serializable과 함께 사용되어 안전한 타입 변환을 제공합니다.
//
// 사용법:
// ```dart
// @freezed
// class MyResponse with _$MyResponse {
//   const factory MyResponse({
//     @SafeIntConverter()
//     @JsonKey(name: 'count', defaultValue: 0)
//     required int count,
//     @SafeStringConverter()  
//     @JsonKey(name: 'name', defaultValue: '')
//     required String name,
//   }) = _MyResponse;
// }
// ```

// ============================================================================
// SafeIntConverter - 안전한 정수 변환
// ============================================================================

/// 다양한 타입을 안전하게 int로 변환하는 JsonConverter
/// 
/// HotPepper API에서 숫자 필드가 문자열로 오는 경우를 처리합니다.
/// 
/// 변환 규칙:
/// - `null` → `0`
/// - `int` → `int` (그대로)
/// - `double` → `int` (소수점 제거)
/// - `String` → `int` (파싱 시도, 실패시 0)
/// - 기타 → `0`
/// 
/// 예시:
/// ```dart
/// SafeIntConverter().fromJson(null)     → 0
/// SafeIntConverter().fromJson(42)       → 42
/// SafeIntConverter().fromJson("42")     → 42
/// SafeIntConverter().fromJson("abc")    → 0
/// SafeIntConverter().fromJson(42.7)     → 42
/// ```
class SafeIntConverter implements JsonConverter<int, dynamic> {
  const SafeIntConverter();

  @override
  int fromJson(dynamic json) {
    if (json == null) return 0;
    if (json is int) return json;
    if (json is double) return json.toInt();
    if (json is String) return int.tryParse(json) ?? 0;
    return 0;
  }

  @override
  dynamic toJson(int object) => object;
}

// ============================================================================
// SafeStringConverter - 안전한 문자열 변환
// ============================================================================

/// 다양한 타입을 안전하게 String으로 변환하는 JsonConverter
/// 
/// 모든 타입을 문자열로 변환하며, null 안전성을 보장합니다.
/// 
/// 변환 규칙:
/// - `null` → `""` (빈 문자열)
/// - 모든 타입 → `toString()` 결과
/// 
/// 예시:
/// ```dart
/// SafeStringConverter().fromJson(null)      → ""
/// SafeStringConverter().fromJson("Tokyo")   → "Tokyo"
/// SafeStringConverter().fromJson(123)       → "123"
/// SafeStringConverter().fromJson(true)      → "true"
/// SafeStringConverter().fromJson(45.67)     → "45.67"
/// ```
class SafeStringConverter implements JsonConverter<String, dynamic> {
  const SafeStringConverter();

  @override
  String fromJson(dynamic json) {
    if (json == null) return '';
    return json.toString();
  }

  @override
  dynamic toJson(String object) => object;
}

// ============================================================================
// SafeDoubleConverter - 안전한 실수 변환  
// ============================================================================

/// 다양한 타입을 안전하게 double로 변환하는 JsonConverter
/// 
/// HotPepper API에서 실수 필드가 문자열로 오는 경우를 처리합니다.
/// 
/// 변환 규칙:
/// - `null` → `0.0`
/// - `double` → `double` (그대로)
/// - `int` → `double` (형변환)
/// - `String` → `double` (파싱 시도, 실패시 0.0)
/// - 기타 → `0.0`
/// 
/// 예시:
/// ```dart
/// SafeDoubleConverter().fromJson(null)       → 0.0
/// SafeDoubleConverter().fromJson(42.5)       → 42.5
/// SafeDoubleConverter().fromJson("42.5")     → 42.5
/// SafeDoubleConverter().fromJson(42)         → 42.0
/// SafeDoubleConverter().fromJson("abc")      → 0.0
/// ```
class SafeDoubleConverter implements JsonConverter<double, dynamic> {
  const SafeDoubleConverter();

  @override
  double fromJson(dynamic json) {
    if (json == null) return 0.0;
    if (json is double) return json;
    if (json is int) return json.toDouble();
    if (json is String) return double.tryParse(json) ?? 0.0;
    return 0.0;
  }

  @override
  dynamic toJson(double object) => object;
}

// ============================================================================
// SafeBoolConverter - 안전한 불린 변환
// ============================================================================

/// 다양한 타입을 안전하게 bool로 변환하는 JsonConverter
/// 
/// HotPepper API에서 불린 필드가 다양한 형태로 오는 경우를 처리합니다.
/// 
/// 변환 규칙:
/// - `null` → `false`
/// - `bool` → `bool` (그대로)
/// - `int` → `0이 아니면 true, 0이면 false`
/// - `String` → `"true", "1", "yes", "on"이면 true, 나머지 false`
/// - 기타 → `false`
/// 
/// 예시:
/// ```dart
/// SafeBoolConverter().fromJson(null)         → false
/// SafeBoolConverter().fromJson(true)         → true
/// SafeBoolConverter().fromJson(1)            → true
/// SafeBoolConverter().fromJson(0)            → false
/// SafeBoolConverter().fromJson("true")       → true
/// SafeBoolConverter().fromJson("false")      → false
/// SafeBoolConverter().fromJson("1")          → true
/// ```
class SafeBoolConverter implements JsonConverter<bool, dynamic> {
  const SafeBoolConverter();

  @override
  bool fromJson(dynamic json) {
    if (json == null) return false;
    if (json is bool) return json;
    if (json is int) return json != 0;
    if (json is String) {
      final lower = json.toLowerCase().trim();
      return lower == 'true' || 
             lower == '1' || 
             lower == 'yes' || 
             lower == 'on';
    }
    return false;
  }

  @override
  dynamic toJson(bool object) => object;
}

// ============================================================================
// 향후 확장 가능한 변환기들
// ============================================================================

// TODO: 필요시 추가할 수 있는 변환기들:
// - SafeDateTimeConverter: 문자열 날짜를 DateTime으로 변환
// - SafeListConverter<T>: 안전한 리스트 변환
// - SafeMapConverter<K, V>: 안전한 맵 변환
// - SafeEnumConverter<T>: enum 안전 변환
