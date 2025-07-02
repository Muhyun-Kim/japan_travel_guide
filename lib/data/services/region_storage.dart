import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:japan_travel_guide/data/models/region/region_data.dart';

class RegionStorage {
  static const String _key = 'regions';
  static const String _legacyKey = 'regions'; // 기존 데이터와 동일한 키

  // 새로운 RegionData 리스트 저장
  static Future<void> saveRegions(List<RegionData> regions) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = regions.map((region) => region.toJson()).toList();
    final jsonString = jsonEncode(jsonList);
    await prefs.setString(_key, jsonString);
  }

  // RegionData 리스트 불러오기 (마이그레이션 지원)
  static Future<List<RegionData>> loadRegions() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 새로운 JSON 형식으로 저장된 데이터 확인
    final jsonString = prefs.getString(_key);
    
    if (jsonString != null) {
      try {
        final jsonList = jsonDecode(jsonString) as List<dynamic>;
        return jsonList
            .map((json) => RegionData.fromJson(json as Map<String, dynamic>))
            .toList();
      } catch (e) {
        print('⚠️ RegionStorage: JSON 파싱 실패, 기본값 반환: $e');
        return [];
      }
    }
    
    // 기존 문자열 리스트 형식 데이터 마이그레이션
    final legacyStringList = prefs.getStringList(_legacyKey);
    if (legacyStringList != null && legacyStringList.isNotEmpty) {
      print('🔄 RegionStorage: 기존 데이터 마이그레이션 시작...');
      final migratedRegions = _migrateLegacyData(legacyStringList);
      
      // 마이그레이션된 데이터를 새 형식으로 저장
      await saveRegions(migratedRegions);
      
      print('✅ RegionStorage: 마이그레이션 완료 (${migratedRegions.length}개)');
      return migratedRegions;
    }
    
    return [];
  }

  /// 기존 문자열 데이터를 RegionData로 마이그레이션
  static List<RegionData> _migrateLegacyData(List<String> legacyRegions) {
    // 기존 영어 키를 임시로 일본어 이름으로 변환 (매핑 테이블 사용)
    final Map<String, String> legacyMapping = {
      'tokyo': '東京',
      'osaka': '大阪', 
      'kyoto': '京都',
      'fukuoka': '福岡',
      'hokkaido': '北海道',
      'kanagawa': '神奈川',
      'saitama': '埼玉',
      'chiba': '千葉',
      'hyogo': '兵庫',
      'aichi': '愛知',
      'hiroshima': '広島',
      'okinawa': '沖縄',
    };
    
    return legacyRegions
        .where((region) => legacyMapping.containsKey(region))
        .map((region) => RegionData(
              code: 'LEGACY_${region.toUpperCase()}', // 임시 코드
              name: legacyMapping[region]!,
            ))
        .toList();
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

  /// regions를 기본값으로 리셋 (새 데이터 구조 사용)
  static Future<void> resetToDefault() async {
    final defaultRegions = [
      RegionData(code: 'SA01', name: '北海道'),
      RegionData(code: 'SA11', name: '東京'),
      RegionData(code: 'SA21', name: '大阪'),
      RegionData(code: 'SA22', name: '京都'),
      RegionData(code: 'SA41', name: '福岡'),
      RegionData(code: 'SA51', name: '沖縄'),
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
    print('  - 저장된 regions: ${regions.map((r) => '${r.code}:${r.name}').join(', ')}');
    print('  - regions 개수: ${regions.length}');
    print('  - 전체 SharedPreferences 키: $allKeys');
  }
}
