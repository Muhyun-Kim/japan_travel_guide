import 'package:shared_preferences/shared_preferences.dart';

class RegionStorage {
  static const String _key = 'regions';

  // 저장
  static Future<void> saveRegions(List<String> regions) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, regions);
  }

  // 불러오기
  static Future<List<String>> loadRegions() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }
}
