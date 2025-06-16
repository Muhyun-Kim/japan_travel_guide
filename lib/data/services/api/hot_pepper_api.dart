import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:japan_travel_guide/core/constants/api_constants.dart';

class HotPepperApi {
  static String get apiKey => dotenv.env['HOTPEPPER_API_KEY'] ?? '';

  static void testApiKey() {
    try {
      if (apiKey.isEmpty) {
        print('❌ API 키가 설정되지 않았습니다!');
        return;
      }

      String displayKey =
          apiKey.length > 8 ? '${apiKey.substring(0, 8)}...' : apiKey;

      print('✅ API 키 로드 성공: $displayKey');
      print(
        '✅ 기본 URL: ${HotPepperApiConstants.endPoints['gourmet']}',
      );
      print('API 키 길이: ${apiKey.length}글자');
      print('🎯 테스트 완료!');
    } catch (e) {
      print('❌ 에러 발생: $e');
    }
  }
}
