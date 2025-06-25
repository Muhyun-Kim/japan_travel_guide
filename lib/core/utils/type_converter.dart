/// 타입 변환 유틸리티
/// 
/// JSON 파싱 시 안전한 타입 변환을 제공합니다.
/// API 응답에서 예상과 다른 타입이 올 때 안전하게 처리합니다.
class TypeConverter {
  /// 안전한 int 변환
  /// 
  /// [value] - 변환할 값
  /// [defaultValue] - 변환 실패 시 기본값 (기본: 0)
  /// 
  /// 사용 예시:
  /// ```dart
  /// final count = TypeConverter.safeInt(json['count']);
  /// final age = TypeConverter.safeInt(json['age'], defaultValue: -1);
  /// ```
  static int safeInt(dynamic value, {int defaultValue = 0}) {
    if (value == null) return defaultValue;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? defaultValue;
    return defaultValue;
  }

  /// 안전한 double 변환
  /// 
  /// [value] - 변환할 값
  /// [defaultValue] - 변환 실패 시 기본값 (기본: 0.0)
  static double safeDouble(dynamic value, {double defaultValue = 0.0}) {
    if (value == null) return defaultValue;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? defaultValue;
    return defaultValue;
  }

  /// 안전한 String 변환
  /// 
  /// [value] - 변환할 값
  /// [defaultValue] - 변환 실패 시 기본값 (기본: 빈 문자열)
  static String safeString(dynamic value, {String defaultValue = ''}) {
    if (value == null) return defaultValue;
    return value.toString();
  }

  /// 안전한 bool 변환
  /// 
  /// [value] - 변환할 값
  /// [defaultValue] - 변환 실패 시 기본값 (기본: false)
  /// 
  /// 변환 규칙:
  /// - true, "true", "1", 1 → true
  /// - false, "false", "0", 0 → false
  /// - 기타 → defaultValue
  static bool safeBool(dynamic value, {bool defaultValue = false}) {
    if (value == null) return defaultValue;
    if (value is bool) return value;
    if (value is int) return value != 0;
    if (value is String) {
      final lower = value.toLowerCase();
      if (lower == 'true' || lower == '1') return true;
      if (lower == 'false' || lower == '0') return false;
    }
    return defaultValue;
  }

  /// 안전한 List 변환
  /// 
  /// [value] - 변환할 값
  /// [defaultValue] - 변환 실패 시 기본값 (기본: 빈 리스트)
  static List<T> safeList<T>(dynamic value, {List<T>? defaultValue}) {
    defaultValue ??= <T>[];
    if (value == null) return defaultValue;
    if (value is List<T>) return value;
    if (value is List) return value.cast<T>();
    return defaultValue;
  }

  /// 안전한 Map 변환
  /// 
  /// [value] - 변환할 값
  /// [defaultValue] - 변환 실패 시 기본값 (기본: 빈 맵)
  static Map<K, V> safeMap<K, V>(dynamic value, {Map<K, V>? defaultValue}) {
    defaultValue ??= <K, V>{};
    if (value == null) return defaultValue;
    if (value is Map<K, V>) return value;
    if (value is Map) return value.cast<K, V>();
    return defaultValue;
  }
}

/// Dynamic 타입 확장 (선택적 사용)
/// 
/// dynamic 값에 직접 메서드를 호출할 수 있게 해줍니다.
/// 
/// 사용 예시:
/// ```dart
/// final count = json['count'].toSafeInt();
/// final name = json['name'].toSafeString(defaultValue: 'Unknown');
/// ```
extension DynamicTypeConverter on dynamic {
  /// 안전한 int 변환
  int toSafeInt({int defaultValue = 0}) {
    return TypeConverter.safeInt(this, defaultValue: defaultValue);
  }

  /// 안전한 double 변환
  double toSafeDouble({double defaultValue = 0.0}) {
    return TypeConverter.safeDouble(this, defaultValue: defaultValue);
  }

  /// 안전한 String 변환
  String toSafeString({String defaultValue = ''}) {
    return TypeConverter.safeString(this, defaultValue: defaultValue);
  }

  /// 안전한 bool 변환
  bool toSafeBool({bool defaultValue = false}) {
    return TypeConverter.safeBool(this, defaultValue: defaultValue);
  }

  /// 안전한 List 변환
  List<T> toSafeList<T>({List<T>? defaultValue}) {
    return TypeConverter.safeList<T>(this, defaultValue: defaultValue);
  }

  /// 안전한 Map 변환
  Map<K, V> toSafeMap<K, V>({Map<K, V>? defaultValue}) {
    return TypeConverter.safeMap<K, V>(this, defaultValue: defaultValue);
  }
}
