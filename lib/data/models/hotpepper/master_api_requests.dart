import 'common_enums.dart';

/// Budget Master API Request (검색용 디너 예산 마스터)
class BudgetMasterRequest {
  final ResponseFormat? format;

  const BudgetMasterRequest({
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    if (format != null) params['format'] = format!.value;
    return params;
  }

  BudgetMasterRequest copyWith({
    ResponseFormat? format,
  }) {
    return BudgetMasterRequest(
      format: format ?? this.format,
    );
  }
}

/// Large Service Area Master API Request (대서비스지역 마스터)
class LargeServiceAreaMasterRequest {
  final ResponseFormat? format;

  const LargeServiceAreaMasterRequest({
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    if (format != null) params['format'] = format!.value;
    return params;
  }

  LargeServiceAreaMasterRequest copyWith({
    ResponseFormat? format,
  }) {
    return LargeServiceAreaMasterRequest(
      format: format ?? this.format,
    );
  }
}

/// Service Area Master API Request (서비스지역 마스터)
class ServiceAreaMasterRequest {
  final ResponseFormat? format;

  const ServiceAreaMasterRequest({
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    if (format != null) params['format'] = format!.value;
    return params;
  }

  ServiceAreaMasterRequest copyWith({
    ResponseFormat? format,
  }) {
    return ServiceAreaMasterRequest(
      format: format ?? this.format,
    );
  }
}

/// Large Area Master API Request (대지역 마스터)
class LargeAreaMasterRequest {
  final List<String>? largeArea; // 大エリアコード (최대 3개)
  final String? keyword; // 大エリア名
  final ResponseFormat? format;

  const LargeAreaMasterRequest({
    this.largeArea,
    this.keyword,
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    
    if (largeArea != null && largeArea!.isNotEmpty) {
      params['large_area'] = largeArea!.take(3).join(','); // 최대 3개
    }
    if (keyword != null) params['keyword'] = keyword!;
    if (format != null) params['format'] = format!.value;
    
    return params;
  }

  LargeAreaMasterRequest copyWith({
    List<String>? largeArea,
    String? keyword,
    ResponseFormat? format,
  }) {
    return LargeAreaMasterRequest(
      largeArea: largeArea ?? this.largeArea,
      keyword: keyword ?? this.keyword,
      format: format ?? this.format,
    );
  }
}

/// Middle Area Master API Request (중지역 마스터)
class MiddleAreaMasterRequest {
  final List<String>? middleArea; // 中エリアコード (최대 5개)
  final List<String>? largeArea; // 大エリアコード (최대 3개)
  final String? keyword; // 中エリア名
  final int? start; // 검색 시작 위치
  final int? count; // 페이지당 취득 수
  final ResponseFormat? format;

  const MiddleAreaMasterRequest({
    this.middleArea,
    this.largeArea,
    this.keyword,
    this.start,
    this.count,
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    
    if (middleArea != null && middleArea!.isNotEmpty) {
      params['middle_area'] = middleArea!.take(5).join(','); // 최대 5개
    }
    if (largeArea != null && largeArea!.isNotEmpty) {
      params['large_area'] = largeArea!.take(3).join(','); // 최대 3개
    }
    if (keyword != null) params['keyword'] = keyword!;
    if (start != null) params['start'] = start!.toString();
    if (count != null) params['count'] = count!.toString();
    if (format != null) params['format'] = format!.value;
    
    return params;
  }

  MiddleAreaMasterRequest copyWith({
    List<String>? middleArea,
    List<String>? largeArea,
    String? keyword,
    int? start,
    int? count,
    ResponseFormat? format,
  }) {
    return MiddleAreaMasterRequest(
      middleArea: middleArea ?? this.middleArea,
      largeArea: largeArea ?? this.largeArea,
      keyword: keyword ?? this.keyword,
      start: start ?? this.start,
      count: count ?? this.count,
      format: format ?? this.format,
    );
  }
}

/// Small Area Master API Request (소지역 마스터)
class SmallAreaMasterRequest {
  final List<String>? smallArea; // 小エリアコード (최대 5개)
  final List<String>? middleArea; // 中エリアコード (최대 5개)
  final String? keyword; // 小エリア名
  final int? start; // 검색 시작 위치
  final int? count; // 페이지당 취득 수
  final ResponseFormat? format;

  const SmallAreaMasterRequest({
    this.smallArea,
    this.middleArea,
    this.keyword,
    this.start,
    this.count,
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    
    if (smallArea != null && smallArea!.isNotEmpty) {
      params['small_area'] = smallArea!.take(5).join(','); // 최대 5개
    }
    if (middleArea != null && middleArea!.isNotEmpty) {
      params['middle_area'] = middleArea!.take(5).join(','); // 최대 5개
    }
    if (keyword != null) params['keyword'] = keyword!;
    if (start != null) params['start'] = start!.toString();
    if (count != null) params['count'] = count!.toString();
    if (format != null) params['format'] = format!.value;
    
    return params;
  }

  SmallAreaMasterRequest copyWith({
    List<String>? smallArea,
    List<String>? middleArea,
    String? keyword,
    int? start,
    int? count,
    ResponseFormat? format,
  }) {
    return SmallAreaMasterRequest(
      smallArea: smallArea ?? this.smallArea,
      middleArea: middleArea ?? this.middleArea,
      keyword: keyword ?? this.keyword,
      start: start ?? this.start,
      count: count ?? this.count,
      format: format ?? this.format,
    );
  }
}

/// Genre Master API Request (장르 마스터)
class GenreMasterRequest {
  final List<String>? code; // ジャンルコード (최대 2개)
  final String? keyword; // ジャンル名
  final ResponseFormat? format;

  const GenreMasterRequest({
    this.code,
    this.keyword,
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    
    if (code != null && code!.isNotEmpty) {
      params['code'] = code!.take(2).join(','); // 최대 2개
    }
    if (keyword != null) params['keyword'] = keyword!;
    if (format != null) params['format'] = format!.value;
    
    return params;
  }

  GenreMasterRequest copyWith({
    List<String>? code,
    String? keyword,
    ResponseFormat? format,
  }) {
    return GenreMasterRequest(
      code: code ?? this.code,
      keyword: keyword ?? this.keyword,
      format: format ?? this.format,
    );
  }
}

/// Credit Card Master API Request (신용카드 마스터)
class CreditCardMasterRequest {
  final ResponseFormat? format;

  const CreditCardMasterRequest({
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    if (format != null) params['format'] = format!.value;
    return params;
  }

  CreditCardMasterRequest copyWith({
    ResponseFormat? format,
  }) {
    return CreditCardMasterRequest(
      format: format ?? this.format,
    );
  }
}

/// Special Master API Request (특집 마스터)
class SpecialMasterRequest {
  final List<String>? special; // 特集コード
  final List<String>? specialCategory; // 特集カテゴリコード
  final ResponseFormat? format;

  const SpecialMasterRequest({
    this.special,
    this.specialCategory,
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    
    if (special != null && special!.isNotEmpty) {
      params['special'] = special!.join(',');
    }
    if (specialCategory != null && specialCategory!.isNotEmpty) {
      params['special_category'] = specialCategory!.join(',');
    }
    if (format != null) params['format'] = format!.value;
    
    return params;
  }

  SpecialMasterRequest copyWith({
    List<String>? special,
    List<String>? specialCategory,
    ResponseFormat? format,
  }) {
    return SpecialMasterRequest(
      special: special ?? this.special,
      specialCategory: specialCategory ?? this.specialCategory,
      format: format ?? this.format,
    );
  }
}

/// Special Category Master API Request (특집 카테고리 마스터)
class SpecialCategoryMasterRequest {
  final List<String>? specialCategory; // 特集カテゴリコード
  final ResponseFormat? format;

  const SpecialCategoryMasterRequest({
    this.specialCategory,
    this.format,
  });

  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};
    
    if (specialCategory != null && specialCategory!.isNotEmpty) {
      params['special_category'] = specialCategory!.join(',');
    }
    if (format != null) params['format'] = format!.value;
    
    return params;
  }

  SpecialCategoryMasterRequest copyWith({
    List<String>? specialCategory,
    ResponseFormat? format,
  }) {
    return SpecialCategoryMasterRequest(
      specialCategory: specialCategory ?? this.specialCategory,
      format: format ?? this.format,
    );
  }
}
