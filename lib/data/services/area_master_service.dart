import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:japan_travel_guide/data/models/area/localized_area.dart';
import 'package:japan_travel_guide/data/models/area/area_korean_mapping.dart';
import 'package:japan_travel_guide/data/models/hotpepper/request/master_requests.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/master_response.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';

/// 지역 마스터 데이터 관리 서비스
/// 
/// - 하드코딩된 한국어 매핑을 우선 사용
/// - API 데이터와 매핑 데이터를 결합
/// - 로컬 캐싱으로 성능 최적화
/// - 오프라인 지원 (매핑 데이터 기반)
class AreaMasterService {
  static const String _serviceAreaCacheKey = 'service_area_cache';
  static const String _largeAreaCacheKey = 'large_area_cache';
  static const String _middleAreaCacheKey = 'middle_area_cache';
  static const String _smallAreaCacheKey = 'small_area_cache';
  static const String _lastUpdateKey = 'area_last_update';
  
  // 캐시 유효 기간: 30일 (지역 데이터는 거의 변경되지 않음)
  static const Duration _cacheValidDuration = Duration(days: 30);
  
  final HotPepperApi _api;
  
  // 메모리 캐시
  List<ServiceArea>? _rawServiceAreas;
  List<LargeArea>? _rawLargeAreas;
  Map<String, List<MiddleArea>> _rawMiddleAreas = {};
  Map<String, List<SmallArea>> _rawSmallAreas = {};
  
  // 현지화된 데이터
  List<LocalizedServiceArea>? _localizedServiceAreas;
  List<LocalizedLargeArea>? _localizedLargeAreas;
  Map<String, List<LocalizedMiddleArea>> _localizedMiddleAreas = {};
  Map<String, List<LocalizedSmallArea>> _localizedSmallAreas = {};
  
  DateTime? _lastCacheTime;

  AreaMasterService({HotPepperApi? api}) : _api = api ?? HotPepperApi();

  /// 지역 데이터 초기화 (앱 시작 시 호출)
  Future<void> initialize() async {
    print('AreaMasterService 초기화 시작');
    
    // 먼저 하드코딩된 데이터로 기본 제공
    _loadHardcodedData();
    
    // 로컬 캐시에서 로드 시도
    await _loadFromCache();
    
    // 캐시가 만료되었거나 없으면 API에서 새로 로드
    if (_shouldRefreshCache()) {
      await _refreshFromApi();
    }
    
    // 현지화된 데이터 구성
    _buildLocalizedData();
    
    print('AreaMasterService 초기화 완료');
  }

  /// 현지화된 서비스 지역 목록 가져오기
  List<LocalizedServiceArea> getLocalizedServiceAreas() {
    return _localizedServiceAreas ?? AreaKoreanMapping.getAllServiceAreas();
  }

  /// 인기 서비스 지역 목록 가져오기
  List<LocalizedServiceArea> getPopularServiceAreas() {
    if (_localizedServiceAreas == null) {
      return AreaKoreanMapping.getPopularServiceAreas();
    }
    return _localizedServiceAreas!.where((area) => area.isPopular).toList();
  }

  /// 특정 서비스 지역의 현지화된 대지역 목록 가져오기
  List<LocalizedLargeArea> getLocalizedLargeAreas(String serviceAreaCode) {
    if (_localizedLargeAreas == null) {
      return AreaKoreanMapping.getLargeAreasByServiceArea(serviceAreaCode);
    }
    return _localizedLargeAreas!
        .where((area) => area.serviceAreaCode == serviceAreaCode)
        .toList();
  }

  /// 특정 대지역의 현지화된 중지역 목록 가져오기
  Future<List<LocalizedMiddleArea>> getLocalizedMiddleAreas(String largeAreaCode) async {
    // 캐시된 데이터가 있으면 사용
    if (_localizedMiddleAreas.containsKey(largeAreaCode)) {
      return _localizedMiddleAreas[largeAreaCode]!;
    }
    
    // API에서 로드 시도
    if (!_rawMiddleAreas.containsKey(largeAreaCode)) {
      await _loadMiddleAreasFromApi(largeAreaCode);
    }
    
    // 현지화 적용
    if (_rawMiddleAreas.containsKey(largeAreaCode)) {
      final localizedAreas = _rawMiddleAreas[largeAreaCode]!
          .map((raw) => _localizeMiddleArea(raw))
          .toList();
      
      _localizedMiddleAreas[largeAreaCode] = localizedAreas;
      return localizedAreas;
    }
    
    // Fallback: 하드코딩된 데이터
    return AreaKoreanMapping.getMiddleAreasByLargeArea(largeAreaCode);
  }

  /// 특정 중지역의 현지화된 소지역 목록 가져오기
  Future<List<LocalizedSmallArea>> getLocalizedSmallAreas(String middleAreaCode) async {
    // 캐시된 데이터가 있으면 사용
    if (_localizedSmallAreas.containsKey(middleAreaCode)) {
      return _localizedSmallAreas[middleAreaCode]!;
    }
    
    // API에서 로드 시도
    if (!_rawSmallAreas.containsKey(middleAreaCode)) {
      await _loadSmallAreasFromApi(middleAreaCode);
    }
    
    // 현지화 적용
    if (_rawSmallAreas.containsKey(middleAreaCode)) {
      final localizedAreas = _rawSmallAreas[middleAreaCode]!
          .map((raw) => _localizeSmallArea(raw))
          .toList();
      
      _localizedSmallAreas[middleAreaCode] = localizedAreas;
      return localizedAreas;
    }
    
    // Fallback: 하드코딩된 데이터
    return AreaKoreanMapping.getSmallAreasByMiddleArea(middleAreaCode);
  }

  /// 지역 코드로 현지화된 서비스 지역 찾기
  LocalizedServiceArea? findServiceAreaByCode(String code) {
    final hardcoded = AreaKoreanMapping.getServiceArea(code);
    if (hardcoded != null) return hardcoded;
    
    if (_localizedServiceAreas != null) {
      try {
        return _localizedServiceAreas!.firstWhere((area) => area.code == code);
      } catch (e) {
        // 찾지 못함
      }
    }
    
    return null;
  }

  /// 백그라운드에서 캐시 갱신
  Future<void> refreshInBackground() async {
    try {
      await _refreshFromApi();
      _buildLocalizedData();
      print('Area cache refreshed in background');
    } catch (e) {
      print('Background area refresh failed: $e');
    }
  }

  /// 강제 새로고침
  Future<void> forceRefresh() async {
    await _refreshFromApi();
    _buildLocalizedData();
  }

  /// 캐시 정리
  void clearCache() {
    _rawServiceAreas = null;
    _rawLargeAreas = null;
    _rawMiddleAreas.clear();
    _rawSmallAreas.clear();
    
    _localizedServiceAreas = null;
    _localizedLargeAreas = null;
    _localizedMiddleAreas.clear();
    _localizedSmallAreas.clear();
    
    _lastCacheTime = null;
  }

  /// 리소스 정리
  void dispose() {
    _api.dispose();
    clearCache();
  }

  // ==========================================================================
  // Private Methods
  // ==========================================================================

  /// 하드코딩된 데이터 로드 (기본 제공)
  void _loadHardcodedData() {
    _localizedServiceAreas = AreaKoreanMapping.getAllServiceAreas();
    _localizedLargeAreas = AreaKoreanMapping.getAllServiceAreas()
        .expand((serviceArea) => AreaKoreanMapping.getLargeAreasByServiceArea(serviceArea.code))
        .toList();
    
    print('하드코딩된 지역 데이터 로드 완료');
  }

  /// 캐시 새로고침이 필요한지 확인
  bool _shouldRefreshCache() {
    return _rawServiceAreas == null || 
           _lastCacheTime == null || 
           DateTime.now().difference(_lastCacheTime!) > _cacheValidDuration;
  }

  /// API에서 새로운 데이터 가져오기
  Future<void> _refreshFromApi() async {
    try {
      print('지역 마스터 데이터 API에서 로드 중...');
      
      // 기본 데이터 로드
      final serviceAreaResponse = await _api.getServiceAreaMaster();
      final largeAreaResponse = await _api.getLargeAreaMaster();
      
      _rawServiceAreas = serviceAreaResponse.data;
      _rawLargeAreas = largeAreaResponse.data;
      _lastCacheTime = DateTime.now();
      
      // 로컬 스토리지에 저장
      await _saveToCache();
      
      print('지역 마스터 로드 완료: ${_rawServiceAreas?.length} 서비스지역, ${_rawLargeAreas?.length} 대지역');
    } catch (e) {
      print('Failed to fetch area master: $e');
      // API 실패 시 하드코딩된 데이터 유지
    }
  }

  /// 특정 대지역의 중지역 API에서 로드
  Future<void> _loadMiddleAreasFromApi(String largeAreaCode) async {
    try {
      final request = MiddleAreaMasterRequest(largeAreaCode: largeAreaCode);
      final response = await _api.getMiddleAreaMaster(request);
      _rawMiddleAreas[largeAreaCode] = response.data;
    } catch (e) {
      print('Failed to load middle areas for $largeAreaCode: $e');
    }
  }

  /// 특정 중지역의 소지역 API에서 로드
  Future<void> _loadSmallAreasFromApi(String middleAreaCode) async {
    try {
      final request = SmallAreaMasterRequest(middleAreaCode: middleAreaCode);
      final response = await _api.getSmallAreaMaster(request);
      _rawSmallAreas[middleAreaCode] = response.data;
    } catch (e) {
      print('Failed to load small areas for $middleAreaCode: $e');
    }
  }

  /// 로컬 캐시에서 데이터 로드
  Future<void> _loadFromCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 서비스 지역 로드
      final serviceAreaJson = prefs.getString(_serviceAreaCacheKey);
      if (serviceAreaJson != null) {
        final List<dynamic> list = jsonDecode(serviceAreaJson);
        _rawServiceAreas = list.map((json) => ServiceArea.fromJson(json)).toList();
      }
      
      // 대지역 로드
      final largeAreaJson = prefs.getString(_largeAreaCacheKey);
      if (largeAreaJson != null) {
        final List<dynamic> list = jsonDecode(largeAreaJson);
        _rawLargeAreas = list.map((json) => LargeArea.fromJson(json)).toList();
      }
      
      // 마지막 업데이트 시간 로드
      final lastUpdateMs = prefs.getInt(_lastUpdateKey);
      if (lastUpdateMs != null) {
        _lastCacheTime = DateTime.fromMillisecondsSinceEpoch(lastUpdateMs);
      }
      
      print('지역 캐시 로드 완료');
    } catch (e) {
      print('Failed to load area cache: $e');
    }
  }

  /// 로컬 캐시에 데이터 저장
  Future<void> _saveToCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 서비스 지역 저장
      if (_rawServiceAreas != null) {
        final serviceAreaJson = jsonEncode(_rawServiceAreas!.map((a) => a.toJson()).toList());
        await prefs.setString(_serviceAreaCacheKey, serviceAreaJson);
      }
      
      // 대지역 저장
      if (_rawLargeAreas != null) {
        final largeAreaJson = jsonEncode(_rawLargeAreas!.map((a) => a.toJson()).toList());
        await prefs.setString(_largeAreaCacheKey, largeAreaJson);
      }
      
      // 마지막 업데이트 시간 저장
      if (_lastCacheTime != null) {
        await prefs.setInt(_lastUpdateKey, _lastCacheTime!.millisecondsSinceEpoch);
      }
      
      print('지역 캐시 저장 완료');
    } catch (e) {
      print('Failed to save area cache: $e');
    }
  }

  /// 현지화된 데이터 구성
  void _buildLocalizedData() {
    if (_rawServiceAreas != null) {
      _localizedServiceAreas = _rawServiceAreas!
          .map((raw) => _localizeServiceArea(raw))
          .toList();
    }
    
    if (_rawLargeAreas != null) {
      _localizedLargeAreas = _rawLargeAreas!
          .map((raw) => _localizeLargeArea(raw))
          .toList();
    }
    
    print('현지화된 지역 데이터 구성 완료');
  }

  /// 서비스 지역 현지화
  LocalizedServiceArea _localizeServiceArea(ServiceArea raw) {
    final hardcoded = AreaKoreanMapping.getServiceArea(raw.code);
    if (hardcoded != null) {
      return hardcoded;
    }
    
    // 매핑되지 않은 경우 일본어 그대로
    return LocalizedServiceArea(
      code: raw.code,
      nameJa: raw.name,
      nameKo: raw.name,
      sortOrder: 999,
    );
  }

  /// 대지역 현지화
  LocalizedLargeArea _localizeLargeArea(LargeArea raw) {
    final hardcoded = AreaKoreanMapping.getLargeArea(raw.code);
    if (hardcoded != null) {
      return hardcoded;
    }
    
    // 매핑되지 않은 경우 일본어 그대로
    return LocalizedLargeArea(
      code: raw.code,
      nameJa: raw.name,
      nameKo: raw.name,
      serviceAreaCode: raw.serviceArea.code,
      sortOrder: 999,
    );
  }

  /// 중지역 현지화
  LocalizedMiddleArea _localizeMiddleArea(MiddleArea raw) {
    final hardcoded = AreaKoreanMapping.getMiddleArea(raw.code);
    if (hardcoded != null) {
      return hardcoded;
    }
    
    // 매핑되지 않은 경우 일본어 그대로
    return LocalizedMiddleArea(
      code: raw.code,
      nameJa: raw.name,
      nameKo: raw.name,
      largeAreaCode: raw.largeArea.code,
      serviceAreaCode: raw.serviceArea.code,
      sortOrder: 999,
    );
  }

  /// 소지역 현지화
  LocalizedSmallArea _localizeSmallArea(SmallArea raw) {
    final hardcoded = AreaKoreanMapping.getSmallArea(raw.code);
    if (hardcoded != null) {
      return hardcoded;
    }
    
    // 매핑되지 않은 경우 일본어 그대로
    return LocalizedSmallArea(
      code: raw.code,
      nameJa: raw.name,
      nameKo: raw.name,
      middleAreaCode: raw.middleArea.code,
      largeAreaCode: raw.largeArea.code,
      serviceAreaCode: raw.serviceArea.code,
      sortOrder: 999,
    );
  }
}