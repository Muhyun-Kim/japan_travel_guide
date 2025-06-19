import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:japan_travel_guide/core/constants/api_constants.dart';

class HotPepperApi {
  static Future<Map<String, dynamic>> getRestaurantWithRegion(
    String region,
  ) async {
    try {
      final url =
          '${HotPepperEndpoints.master.largeArea}&format=json&address=$region';
      print(url);
      final response = await http.get(Uri.parse(url));
      final res = jsonDecode(response.body);
      print(res);
      return res;
    } catch (e) {
      throw Exception(e);
    }
  }
}
