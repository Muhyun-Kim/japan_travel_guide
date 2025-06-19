import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class HotPepperEndpoints {
  static String get apiKey => dotenv.env['HOTPEPPER_API_KEY']!;
  static const String _baseUrl =
      'http://webservice.recruit.co.jp/hotpepper';

  // Endpoints
  static final master = (
    largeArea: '$_baseUrl/large_area/v1/?key=$apiKey',
  );
  static final gourmet = '$_baseUrl/gourmet/v1/?key=$apiKey';
}
