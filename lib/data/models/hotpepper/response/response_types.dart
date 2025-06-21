import 'common_response.dart';
import 'shop_models.dart';
import 'area_models.dart';
import 'base_models.dart';

/// Gourmet Search API 응답
typedef GourmetSearchResponse = HotpepperApiResponse<Shop>;

/// Gourmet Search API 응답 생성 헬퍼
class GourmetSearchResponseHelper {
  static GourmetSearchResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (shopJson) => Shop.fromJson(shopJson),
      'shop',
    );
  }
}

/// Shop Name Search API 응답
typedef ShopNameSearchResponse = HotpepperApiResponse<SimpleShop>;

/// Shop Name Search API 응답 생성 헬퍼
class ShopNameSearchResponseHelper {
  static ShopNameSearchResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (shopJson) => SimpleShop.fromJson(shopJson),
      'shop',
    );
  }
}

/// Budget Master API 응답
typedef BudgetMasterResponse = HotpepperApiResponse<Budget>;

/// Budget Master API 응답 생성 헬퍼
class BudgetMasterResponseHelper {
  static BudgetMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (budgetJson) => Budget.fromJson(budgetJson),
      'budget',
    );
  }
}

/// Large Service Area Master API 응답
typedef LargeServiceAreaMasterResponse = HotpepperApiResponse<LargeServiceArea>;

/// Large Service Area Master API 응답 생성 헬퍼
class LargeServiceAreaMasterResponseHelper {
  static LargeServiceAreaMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (areaJson) => LargeServiceArea.fromJson(areaJson),
      'large_service_area',
    );
  }
}

/// Service Area Master API 응답
typedef ServiceAreaMasterResponse = HotpepperApiResponse<ServiceArea>;

/// Service Area Master API 응답 생성 헬퍼
class ServiceAreaMasterResponseHelper {
  static ServiceAreaMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (areaJson) => ServiceArea.fromJson(areaJson),
      'service_area',
    );
  }
}

/// Large Area Master API 응답
typedef LargeAreaMasterResponse = HotpepperApiResponse<LargeAreaMaster>;

/// Large Area Master API 응답 생성 헬퍼
class LargeAreaMasterResponseHelper {
  static LargeAreaMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (areaJson) => LargeAreaMaster.fromJson(areaJson),
      'large_area',
    );
  }
}

/// Middle Area Master API 응답
typedef MiddleAreaMasterResponse = HotpepperApiResponse<MiddleAreaMaster>;

/// Middle Area Master API 응답 생성 헬퍼
class MiddleAreaMasterResponseHelper {
  static MiddleAreaMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (areaJson) => MiddleAreaMaster.fromJson(areaJson),
      'middle_area',
    );
  }
}

/// Small Area Master API 응답
typedef SmallAreaMasterResponse = HotpepperApiResponse<SmallAreaMaster>;

/// Small Area Master API 응답 생성 헬퍼
class SmallAreaMasterResponseHelper {
  static SmallAreaMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (areaJson) => SmallAreaMaster.fromJson(areaJson),
      'small_area',
    );
  }
}

/// Genre Master API 응답
typedef GenreMasterResponse = HotpepperApiResponse<Genre>;

/// Genre Master API 응답 생성 헬퍼
class GenreMasterResponseHelper {
  static GenreMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (genreJson) => Genre.fromJson(genreJson),
      'genre',
    );
  }
}

/// Credit Card Master API 응답
typedef CreditCardMasterResponse = HotpepperApiResponse<CreditCard>;

/// Credit Card Master API 응답 생성 헬퍼
class CreditCardMasterResponseHelper {
  static CreditCardMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (cardJson) => CreditCard.fromJson(cardJson),
      'credit_card',
    );
  }
}

/// Special Master API 응답
typedef SpecialMasterResponse = HotpepperApiResponse<Special>;

/// Special Master API 응답 생성 헬퍼
class SpecialMasterResponseHelper {
  static SpecialMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (specialJson) => Special.fromJson(specialJson),
      'special',
    );
  }
}

/// Special Category Master API 응답
typedef SpecialCategoryMasterResponse = HotpepperApiResponse<SpecialCategory>;

/// Special Category Master API 응답 생성 헬퍼
class SpecialCategoryMasterResponseHelper {
  static SpecialCategoryMasterResponse fromJson(Map<String, dynamic> json) {
    return HotpepperApiResponse.fromJson(
      json,
      (categoryJson) => SpecialCategory.fromJson(categoryJson),
      'special_category',
    );
  }
}

/// 모든 응답 타입을 한 번에 처리할 수 있는 유틸리티 클래스
class HotpepperResponseParser {
  /// JSON이 에러 응답인지 확인
  static bool isErrorResponse(Map<String, dynamic> json) {
    final results = json['results'] as Map<String, dynamic>?;
    return results?.containsKey('error') == true;
  }

  /// 에러 응답 파싱
  static HotpepperErrorResponse parseError(Map<String, dynamic> json) {
    return HotpepperErrorResponse.fromJson(json);
  }

  /// 성공 응답을 HotpepperResponse로 래핑
  static HotpepperResponse<T> wrapSuccess<T>(HotpepperApiResponse<T> response) {
    return HotpepperSuccessResponse<T>(response);
  }

  /// 에러 응답을 HotpepperResponse로 래핑
  static HotpepperResponse<T> wrapError<T>(HotpepperErrorResponse error) {
    return HotpepperErrorResponseWrapper<T>(error);
  }

  /// 통합 응답 파싱 (성공/에러 자동 판별)
  static HotpepperResponse<T> parseResponse<T>(
    Map<String, dynamic> json,
    HotpepperApiResponse<T> Function(Map<String, dynamic>) successParser,
  ) {
    if (isErrorResponse(json)) {
      final error = parseError(json);
      return wrapError<T>(error);
    } else {
      final success = successParser(json);
      return wrapSuccess<T>(success);
    }
  }
}
