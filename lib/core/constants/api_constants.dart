import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class HotPepperEndpoints {
  static String get _apiKey => dotenv.env['HOTPEPPER_API_KEY']!;
  static String get _baseParams => '?key=$_apiKey&format=json';
  static const String _baseUrl =
      'http://webservice.recruit.co.jp/hotpepper';

  // Endpoints
  static final master = (
    //検索用ディナー予算マスタAPI
    budget: '$_baseUrl/budget/v1/$_baseParams',
    //大サービスエリアマスタAPI
    area: (
      largeServiceArea:
          '$_baseUrl/large_service_area/v1/$_baseParams',
      //サービスエリアマスタAPI
      serviceArea: '$_baseUrl/service_area/v1/$_baseParams',
      //大エリアマスタAPI
      largeArea: '$_baseUrl/large_area/v1/$_baseParams',
      //中エリアマスタAPI
      middleArea: '$_baseUrl/middle_area/v1/$_baseParams',
      //小エリアマスタAPI
      smallArea: '$_baseUrl/small_area/v1/$_baseParams',
    ),
    //ジャンルマスタAPI
    genre: '$_baseUrl/genre/v1/$_baseParams',
    //クレジットカードマスタAPI
    creditCard: '$_baseUrl/credit_card/v1/$_baseParams',
    //特集マスタAPI
    special: '$_baseUrl/special/v1/$_baseParams',
    //特集カテゴリマスタAPI
    specialCategory: '$_baseUrl/special_category/v1/$_baseParams',
  );
  static final gourmet = '$_baseUrl/gourmet/v1/$_baseParams';
}
