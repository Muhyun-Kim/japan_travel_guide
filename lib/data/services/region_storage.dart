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

  // 🎯 로컬 스토리지 초기화 관련 메서드들
  
  /// regions 데이터만 삭제
  static Future<void> clearRegions() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
    print('✅ RegionStorage: regions 데이터 삭제 완료');
  }

  /// 모든 SharedPreferences 데이터 삭제
  static Future<void> clearAllLocalData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    print('✅ RegionStorage: 모든 로컬 데이터 삭제 완료');
  }

  /// regions를 기본값으로 리셋
  static Future<void> resetToDefault() async {
    final defaultRegions = [
      '홋카이도',
      '도쿄',
      '오사카', 
      '교토',
      '후쿠오카',
      '오키나와'
    ];
    await saveRegions(defaultRegions);
    print('✅ RegionStorage: 기본 지역으로 리셋 완료 (${defaultRegions.length}개)');
  }

  /// 개발용: 로컬 데이터 상태 확인
  static Future<void> debugPrintStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final regions = await loadRegions();
    final allKeys = prefs.getKeys();
    
    print('🔍 RegionStorage Debug Info:');
    print('  - 저장된 regions: $regions');
    print('  - regions 개수: ${regions.length}');
    print('  - 전체 SharedPreferences 키: $allKeys');
  }
}
