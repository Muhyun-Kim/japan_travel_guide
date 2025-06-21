/// Hotpepper API Models
/// 
/// 이 파일을 import하면 모든 Hotpepper API 관련 모델들을 사용할 수 있습니다.
/// 
/// Request 사용 예시:
/// ```dart
/// import 'package:your_app/data/models/hotpepper/hotpepper_requests.dart';
/// 
/// final request = GourmetSearchRequest(
///   keyword: ['라멘', '도쿄'],
///   range: SearchRange.range1000m,
///   format: ResponseFormat.json,
/// );
/// ```
/// 
/// Response 사용 예시:
/// ```dart
/// import 'package:your_app/data/models/hotpepper/hotpepper_requests.dart';
/// 
/// final response = GourmetSearchResponseHelper.fromJson(jsonData);
/// for (final shop in response.data) {
///   print('${shop.name}: ${shop.address}');
/// }
/// ```

// Request Models
// Common enums
export 'common_enums.dart';

// Main search APIs
export 'gourmet_search_request.dart';
export 'shop_name_search_request.dart';

// Master APIs
export 'master_api_requests.dart';

// Response Models
export 'response/hotpepper_responses.dart';
