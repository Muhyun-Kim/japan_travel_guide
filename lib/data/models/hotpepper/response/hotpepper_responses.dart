/// Hotpepper API Response Models
/// 
/// 이 파일을 import하면 모든 Hotpepper API response 모델들을 사용할 수 있습니다.
/// 
/// 사용 예시:
/// ```dart
/// import 'package:your_app/data/models/hotpepper/response/hotpepper_responses.dart';
/// 
/// // 성공 응답 처리
/// final response = GourmetSearchResponseHelper.fromJson(jsonData);
/// for (final shop in response.data) {
///   print('${shop.name}: ${shop.address}');
/// }
/// 
/// // 에러 처리 포함 응답 처리
/// final wrappedResponse = HotpepperResponseParser.parseResponse(
///   jsonData,
///   GourmetSearchResponseHelper.fromJson,
/// );
/// 
/// switch (wrappedResponse) {
///   case HotpepperSuccessResponse<Shop> success:
///     // 성공 처리
///     for (final shop in success.data.data) {
///       print(shop.name);
///     }
///   case HotpepperErrorResponseWrapper<Shop> error:
///     // 에러 처리
///     print('Error: ${error.error.message}');
/// }
/// ```

// Common response structures
export 'common_response.dart';

// Base data models
export 'area_models.dart';
export 'base_models.dart';
export 'shop_models.dart';

// Response types and helpers
export 'response_types.dart';
