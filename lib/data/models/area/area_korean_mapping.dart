import 'package:japan_travel_guide/data/models/area/localized_area.dart';

/// 일본 지역 한국어 매핑 테이블
/// 
/// HotPepper API의 지역 Master 데이터를 한국어로 매핑
/// 일본 주요 관광지와 맛집 지역을 중심으로 구성
class AreaKoreanMapping {
  
  // ==========================================================================
  // 서비스 지역 (ServiceArea) 매핑
  // ==========================================================================
  
  static const Map<String, LocalizedServiceArea> _serviceAreaMap = {
    'SA11': LocalizedServiceArea(
      code: 'SA11',
      nameJa: '東京',
      nameKo: '도쿄',
      sortOrder: 1,
      isPopular: true,
    ),
    'SA12': LocalizedServiceArea(
      code: 'SA12',
      nameJa: '神奈川',
      nameKo: '가나가와',
      sortOrder: 2,
      isPopular: true,
    ),
    'SA13': LocalizedServiceArea(
      code: 'SA13',
      nameJa: '千葉',
      nameKo: '치바',
      sortOrder: 3,
    ),
    'SA14': LocalizedServiceArea(
      code: 'SA14',
      nameJa: '埼玉',
      nameKo: '사이타마',
      sortOrder: 4,
    ),
    'SA21': LocalizedServiceArea(
      code: 'SA21',
      nameJa: '大阪',
      nameKo: '오사카',
      sortOrder: 5,
      isPopular: true,
    ),
    'SA22': LocalizedServiceArea(
      code: 'SA22',
      nameJa: '京都',
      nameKo: '교토',
      sortOrder: 6,
      isPopular: true,
    ),
    'SA23': LocalizedServiceArea(
      code: 'SA23',
      nameJa: '兵庫',
      nameKo: '효고',
      sortOrder: 7,
    ),
    'SA24': LocalizedServiceArea(
      code: 'SA24',
      nameJa: '奈良',
      nameKo: '나라',
      sortOrder: 8,
      isPopular: true,
    ),
    'SA31': LocalizedServiceArea(
      code: 'SA31',
      nameJa: '愛知',
      nameKo: '아이치',
      sortOrder: 9,
    ),
    'SA41': LocalizedServiceArea(
      code: 'SA41',
      nameJa: '福岡',
      nameKo: '후쿠오카',
      sortOrder: 10,
      isPopular: true,
    ),
    'SA51': LocalizedServiceArea(
      code: 'SA51',
      nameJa: '北海道',
      nameKo: '홋카이도',
      sortOrder: 11,
      isPopular: true,
    ),
  };

  // ==========================================================================
  // 대지역 (LargeArea) 매핑 - 도쿄 중심
  // ==========================================================================
  
  static const Map<String, LocalizedLargeArea> _largeAreaMap = {
    // 도쿄 (SA11)
    'Z011': LocalizedLargeArea(
      code: 'Z011',
      nameJa: '東京23区',
      nameKo: '도쿄 23구',
      serviceAreaCode: 'SA11',
      sortOrder: 1,
      isPopular: true,
    ),
    'Z012': LocalizedLargeArea(
      code: 'Z012',
      nameJa: '多摩',
      nameKo: '타마',
      serviceAreaCode: 'SA11',
      sortOrder: 2,
    ),
    
    // 가나가와 (SA12)
    'Z021': LocalizedLargeArea(
      code: 'Z021',
      nameJa: '横浜',
      nameKo: '요코하마',
      serviceAreaCode: 'SA12',
      sortOrder: 3,
      isPopular: true,
    ),
    'Z022': LocalizedLargeArea(
      code: 'Z022',
      nameJa: '川崎',
      nameKo: '가와사키',
      serviceAreaCode: 'SA12',
      sortOrder: 4,
    ),
    'Z023': LocalizedLargeArea(
      code: 'Z023',
      nameJa: '鎌倉・湘南',
      nameKo: '가마쿠라·쇼난',
      serviceAreaCode: 'SA12',
      sortOrder: 5,
      isPopular: true,
    ),
    
    // 오사카 (SA21)
    'Z111': LocalizedLargeArea(
      code: 'Z111',
      nameJa: '大阪市',
      nameKo: '오사카시',
      serviceAreaCode: 'SA21',
      sortOrder: 6,
      isPopular: true,
    ),
    'Z112': LocalizedLargeArea(
      code: 'Z112',
      nameJa: '北摂',
      nameKo: '호쿠세츠',
      serviceAreaCode: 'SA21',
      sortOrder: 7,
    ),
    
    // 교토 (SA22)
    'Z121': LocalizedLargeArea(
      code: 'Z121',
      nameJa: '京都市',
      nameKo: '교토시',
      serviceAreaCode: 'SA22',
      sortOrder: 8,
      isPopular: true,
    ),
    
    // 효고 (SA23)
    'Z131': LocalizedLargeArea(
      code: 'Z131',
      nameJa: '神戸',
      nameKo: '고베',
      serviceAreaCode: 'SA23',
      sortOrder: 9,
      isPopular: true,
    ),
  };

  // ==========================================================================
  // 중지역 (MiddleArea) 매핑 - 주요 관광지 중심
  // ==========================================================================
  
  static const Map<String, LocalizedMiddleArea> _middleAreaMap = {
    // 도쿄 23구 내 주요 지역
    'Y055': LocalizedMiddleArea(
      code: 'Y055',
      nameJa: '新宿',
      nameKo: '신주쿠',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 1,
      isPopular: true,
    ),
    'Y056': LocalizedMiddleArea(
      code: 'Y056',
      nameJa: '渋谷',
      nameKo: '시부야',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 2,
      isPopular: true,
    ),
    'Y010': LocalizedMiddleArea(
      code: 'Y010',
      nameJa: '銀座・有楽町・築地',
      nameKo: '긴자·유라쿠초·츠키지',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 3,
      isPopular: true,
    ),
    'Y020': LocalizedMiddleArea(
      code: 'Y020',
      nameJa: '上野・浅草・日暮里',
      nameKo: '우에노·아사쿠사·니프포리',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 4,
      isPopular: true,
    ),
    'Y030': LocalizedMiddleArea(
      code: 'Y030',
      nameJa: '六本木・麻布・赤坂',
      nameKo: '롯폰기·아자부·아카사카',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 5,
      isPopular: true,
    ),
    'Y040': LocalizedMiddleArea(
      code: 'Y040',
      nameJa: '恵比寿・代官山・中目黒',
      nameKo: '에비스·다이칸야마·나카메구로',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 6,
      isPopular: true,
    ),
    'Y060': LocalizedMiddleArea(
      code: 'Y060',
      nameJa: '原宿・表参道・青山',
      nameKo: '하라주쿠·오모테산도·아오야마',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 7,
      isPopular: true,
    ),
    'Y070': LocalizedMiddleArea(
      code: 'Y070',
      nameJa: '池袋',
      nameKo: '이케부쿠로',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 8,
      isPopular: true,
    ),
    'Y080': LocalizedMiddleArea(
      code: 'Y080',
      nameJa: '品川・五反田・大崎',
      nameKo: '시나가와·고탄다·오사키',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 9,
    ),
    'Y090': LocalizedMiddleArea(
      code: 'Y090',
      nameJa: '秋葉原・神田・水道橋',
      nameKo: '아키하바라·간다·스이도바시',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 10,
      isPopular: true,
    ),
    
    // 요코하마
    'Y310': LocalizedMiddleArea(
      code: 'Y310',
      nameJa: 'みなとみらい・桜木町',
      nameKo: '미나토미라이·사쿠라기초',
      largeAreaCode: 'Z021',
      serviceAreaCode: 'SA12',
      sortOrder: 11,
      isPopular: true,
    ),
    'Y320': LocalizedMiddleArea(
      code: 'Y320',
      nameJa: '中華街・関内・馬車道',
      nameKo: '차이나타운·간나이·바샤미치',
      largeAreaCode: 'Z021',
      serviceAreaCode: 'SA12',
      sortOrder: 12,
      isPopular: true,
    ),
    
    // 오사카
    'Y510': LocalizedMiddleArea(
      code: 'Y510',
      nameJa: '梅田・大阪駅',
      nameKo: '우메다·오사카역',
      largeAreaCode: 'Z111',
      serviceAreaCode: 'SA21',
      sortOrder: 13,
      isPopular: true,
    ),
    'Y520': LocalizedMiddleArea(
      code: 'Y520',
      nameJa: '難波・道頓堀',
      nameKo: '난바·도톤보리',
      largeAreaCode: 'Z111',
      serviceAreaCode: 'SA21',
      sortOrder: 14,
      isPopular: true,
    ),
    'Y530': LocalizedMiddleArea(
      code: 'Y530',
      nameJa: '心斎橋・本町',
      nameKo: '신사이바시·혼마치',
      largeAreaCode: 'Z111',
      serviceAreaCode: 'SA21',
      sortOrder: 15,
      isPopular: true,
    ),
    
    // 교토
    'Y610': LocalizedMiddleArea(
      code: 'Y610',
      nameJa: '祇園・清水寺',
      nameKo: '기온·기요미즈데라',
      largeAreaCode: 'Z121',
      serviceAreaCode: 'SA22',
      sortOrder: 16,
      isPopular: true,
    ),
    'Y620': LocalizedMiddleArea(
      code: 'Y620',
      nameJa: '京都駅',
      nameKo: '교토역',
      largeAreaCode: 'Z121',
      serviceAreaCode: 'SA22',
      sortOrder: 17,
      isPopular: true,
    ),
    'Y630': LocalizedMiddleArea(
      code: 'Y630',
      nameJa: '河原町・烏丸',
      nameKo: '가와라마치·가라스마',
      largeAreaCode: 'Z121',
      serviceAreaCode: 'SA22',
      sortOrder: 18,
      isPopular: true,
    ),
  };

  // ==========================================================================
  // 소지역 (SmallArea) 매핑 - 핫스팟 중심
  // ==========================================================================
  
  static const Map<String, LocalizedSmallArea> _smallAreaMap = {
    // 신주쿠 세부
    'X050': LocalizedSmallArea(
      code: 'X050',
      nameJa: '新宿東口',
      nameKo: '신주쿠 동쪽 출구',
      middleAreaCode: 'Y055',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 1,
      isPopular: true,
    ),
    'X051': LocalizedSmallArea(
      code: 'X051',
      nameJa: '新宿西口',
      nameKo: '신주쿠 서쪽 출구',
      middleAreaCode: 'Y055',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 2,
      isPopular: true,
    ),
    'X052': LocalizedSmallArea(
      code: 'X052',
      nameJa: '新宿南口',
      nameKo: '신주쿠 남쪽 출구',
      middleAreaCode: 'Y055',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 3,
    ),
    
    // 시부야 세부
    'X060': LocalizedSmallArea(
      code: 'X060',
      nameJa: '渋谷センター街',
      nameKo: '시부야 센터가이',
      middleAreaCode: 'Y056',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 4,
      isPopular: true,
    ),
    'X061': LocalizedSmallArea(
      code: 'X061',
      nameJa: '渋谷道玄坂',
      nameKo: '시부야 도겐자카',
      middleAreaCode: 'Y056',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 5,
      isPopular: true,
    ),
    
    // 긴자 세부
    'X010': LocalizedSmallArea(
      code: 'X010',
      nameJa: '銀座',
      nameKo: '긴자',
      middleAreaCode: 'Y010',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 6,
      isPopular: true,
    ),
    'X011': LocalizedSmallArea(
      code: 'X011',
      nameJa: '有楽町',
      nameKo: '유라쿠초',
      middleAreaCode: 'Y010',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 7,
      isPopular: true,
    ),
    'X012': LocalizedSmallArea(
      code: 'X012',
      nameJa: '築地',
      nameKo: '츠키지',
      middleAreaCode: 'Y010',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 8,
      isPopular: true,
    ),
    
    // 하라주쿠 세부
    'X070': LocalizedSmallArea(
      code: 'X070',
      nameJa: '原宿',
      nameKo: '하라주쿠',
      middleAreaCode: 'Y060',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 9,
      isPopular: true,
    ),
    'X071': LocalizedSmallArea(
      code: 'X071',
      nameJa: '表参道',
      nameKo: '오모테산도',
      middleAreaCode: 'Y060',
      largeAreaCode: 'Z011',
      serviceAreaCode: 'SA11',
      sortOrder: 10,
      isPopular: true,
    ),
    
    // 오사카 난바 세부
    'X520': LocalizedSmallArea(
      code: 'X520',
      nameJa: '道頓堀',
      nameKo: '도톤보리',
      middleAreaCode: 'Y520',
      largeAreaCode: 'Z111',
      serviceAreaCode: 'SA21',
      sortOrder: 11,
      isPopular: true,
    ),
    'X521': LocalizedSmallArea(
      code: 'X521',
      nameJa: '難波',
      nameKo: '난바',
      middleAreaCode: 'Y520',
      largeAreaCode: 'Z111',
      serviceAreaCode: 'SA21',
      sortOrder: 12,
      isPopular: true,
    ),
  };

  // ==========================================================================
  // 공용 메서드들
  // ==========================================================================

  /// 서비스 지역 코드로 LocalizedServiceArea 가져오기
  static LocalizedServiceArea? getServiceArea(String code) {
    return _serviceAreaMap[code];
  }

  /// 대지역 코드로 LocalizedLargeArea 가져오기
  static LocalizedLargeArea? getLargeArea(String code) {
    return _largeAreaMap[code];
  }

  /// 중지역 코드로 LocalizedMiddleArea 가져오기
  static LocalizedMiddleArea? getMiddleArea(String code) {
    return _middleAreaMap[code];
  }

  /// 소지역 코드로 LocalizedSmallArea 가져오기
  static LocalizedSmallArea? getSmallArea(String code) {
    return _smallAreaMap[code];
  }

  /// 모든 서비스 지역 목록 가져오기 (정렬된 순서)
  static List<LocalizedServiceArea> getAllServiceAreas() {
    final areas = _serviceAreaMap.values.toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 인기 서비스 지역 목록 가져오기
  static List<LocalizedServiceArea> getPopularServiceAreas() {
    final areas = _serviceAreaMap.values.where((area) => area.isPopular).toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 특정 서비스 지역의 대지역 목록 가져오기
  static List<LocalizedLargeArea> getLargeAreasByServiceArea(String serviceAreaCode) {
    final areas = _largeAreaMap.values
        .where((area) => area.serviceAreaCode == serviceAreaCode)
        .toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 특정 대지역의 중지역 목록 가져오기
  static List<LocalizedMiddleArea> getMiddleAreasByLargeArea(String largeAreaCode) {
    final areas = _middleAreaMap.values
        .where((area) => area.largeAreaCode == largeAreaCode)
        .toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 특정 중지역의 소지역 목록 가져오기
  static List<LocalizedSmallArea> getSmallAreasByMiddleArea(String middleAreaCode) {
    final areas = _smallAreaMap.values
        .where((area) => area.middleAreaCode == middleAreaCode)
        .toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 특정 서비스 지역의 모든 소지역 목록 가져오기 (검색용)
  static List<LocalizedSmallArea> getSmallAreasByServiceArea(String serviceAreaCode) {
    final areas = _smallAreaMap.values
        .where((area) => area.serviceAreaCode == serviceAreaCode)
        .toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 인기 중지역 목록 가져오기 (관광명소)
  static List<LocalizedMiddleArea> getPopularMiddleAreas() {
    final areas = _middleAreaMap.values.where((area) => area.isPopular).toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 인기 소지역 목록 가져오기 (핫스팟)
  static List<LocalizedSmallArea> getPopularSmallAreas() {
    final areas = _smallAreaMap.values.where((area) => area.isPopular).toList();
    areas.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return areas;
  }

  /// 한국어 이름으로 서비스 지역 찾기
  static LocalizedServiceArea? findServiceAreaByKoreanName(String koreanName) {
    try {
      return _serviceAreaMap.values.firstWhere(
        (area) => area.nameKo == koreanName,
      );
    } catch (e) {
      return null;
    }
  }
}