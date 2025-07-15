import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/area/area_master_data.dart';
import 'package:japan_travel_guide/data/models/area/area_master_model.dart';
import 'package:japan_travel_guide/data/models/area/area_translations.dart';

/// 지역 마스터 데이터 서비스 V2
/// area_master.json 파일을 기반으로 하는 새로운 버전
class AreaMasterServiceV2 {
  AreaMasterResponse? _masterData;
  
  // 캐시된 데이터
  Map<String, LocalizedServiceAreaMaster> _serviceAreaCache = {};
  Map<String, LocalizedLargeAreaMaster> _largeAreaCache = {};
  Map<String, LocalizedMiddleAreaMaster> _middleAreaCache = {};
  Map<String, List<LocalizedMiddleAreaMaster>> _middleAreasByServiceCache = {};
  Map<String, List<LocalizedMiddleAreaMaster>> _middleAreasByLargeCache = {};

  /// 서비스 초기화
  Future<void> initialize() async {
    if (_masterData != null) return;
    
    try {
      _masterData = await AreaMasterDataLoader.loadFromAsset();
      _buildCaches();
      print('Area master V2 initialized with ${_masterData!.results.middleArea.length} middle areas');
    } catch (e) {
      print('Failed to initialize area master V2: $e');
      rethrow;
    }
  }

  /// 캐시 구축
  void _buildCaches() {
    if (_masterData == null) return;

    for (final middleArea in _masterData!.results.middleArea) {
      // 서비스 지역 캐시
      final serviceCode = middleArea.serviceArea.code;
      if (!_serviceAreaCache.containsKey(serviceCode)) {
        _serviceAreaCache[serviceCode] = LocalizedServiceAreaMaster(
          code: serviceCode,
          nameJa: middleArea.serviceArea.name,
          nameKo: AreaTranslations.translateServiceArea(
            serviceCode, 
            middleArea.serviceArea.name
          ),
          isPopular: AreaTranslations.isPopularServiceArea(serviceCode),
        );
      }

      // 대지역 캐시
      final largeCode = middleArea.largeArea.code;
      if (!_largeAreaCache.containsKey(largeCode)) {
        _largeAreaCache[largeCode] = LocalizedLargeAreaMaster(
          code: largeCode,
          nameJa: middleArea.largeArea.name,
          nameKo: AreaTranslations.translateServiceArea(
            serviceCode, 
            middleArea.largeArea.name
          ),
          serviceAreaCode: serviceCode,
        );
      }

      // 중지역 캐시
      final localizedMiddleArea = LocalizedMiddleAreaMaster(
        code: middleArea.code,
        nameJa: middleArea.name,
        nameKo: AreaTranslations.translateMiddleArea(
          middleArea.code, 
          middleArea.name
        ),
        largeAreaCode: largeCode,
        serviceAreaCode: serviceCode,
        isPopular: AreaTranslations.isPopularMiddleArea(middleArea.code),
      );
      _middleAreaCache[middleArea.code] = localizedMiddleArea;

      // 서비스별 중지역 캐시
      _middleAreasByServiceCache.putIfAbsent(serviceCode, () => [])
        .add(localizedMiddleArea);

      // 대지역별 중지역 캐시
      _middleAreasByLargeCache.putIfAbsent(largeCode, () => [])
        .add(localizedMiddleArea);
    }
  }

  /// 모든 서비스 지역 가져오기
  List<LocalizedServiceAreaMaster> getAllServiceAreas() {
    final areas = _serviceAreaCache.values.toList();
    areas.sort((a, b) {
      // 인기 지역 우선
      if (a.isPopular != b.isPopular) {
        return b.isPopular ? 1 : -1;
      }
      // 그 다음 코드 순
      return a.code.compareTo(b.code);
    });
    return areas;
  }

  /// 인기 서비스 지역만 가져오기
  List<LocalizedServiceAreaMaster> getPopularServiceAreas() {
    return _serviceAreaCache.values
        .where((area) => area.isPopular)
        .toList()
      ..sort((a, b) => a.code.compareTo(b.code));
  }

  /// 서비스 지역 코드로 가져오기
  LocalizedServiceAreaMaster? getServiceAreaByCode(String code) {
    return _serviceAreaCache[code];
  }

  /// 대지역 코드로 가져오기
  LocalizedLargeAreaMaster? getLargeAreaByCode(String code) {
    return _largeAreaCache[code];
  }

  /// 중지역 코드로 가져오기
  LocalizedMiddleAreaMaster? getMiddleAreaByCode(String code) {
    return _middleAreaCache[code];
  }

  /// 서비스 지역의 모든 중지역 가져오기
  List<LocalizedMiddleAreaMaster> getMiddleAreasByServiceArea(String serviceAreaCode) {
    final areas = _middleAreasByServiceCache[serviceAreaCode] ?? [];
    return List.from(areas)..sort((a, b) {
      // 인기 지역 우선
      if (a.isPopular != b.isPopular) {
        return b.isPopular ? 1 : -1;
      }
      // 그 다음 이름 순
      return a.nameKo.compareTo(b.nameKo);
    });
  }

  /// 대지역의 모든 중지역 가져오기
  List<LocalizedMiddleAreaMaster> getMiddleAreasByLargeArea(String largeAreaCode) {
    final areas = _middleAreasByLargeCache[largeAreaCode] ?? [];
    return List.from(areas)..sort((a, b) {
      // 인기 지역 우선
      if (a.isPopular != b.isPopular) {
        return b.isPopular ? 1 : -1;
      }
      // 그 다음 이름 순
      return a.nameKo.compareTo(b.nameKo);
    });
  }

  /// 키워드로 중지역 검색
  List<LocalizedMiddleAreaMaster> searchMiddleAreas(String keyword) {
    final lowercaseKeyword = keyword.toLowerCase();
    return _middleAreaCache.values.where((area) {
      return area.nameKo.toLowerCase().contains(lowercaseKeyword) ||
             area.nameJa.toLowerCase().contains(lowercaseKeyword);
    }).toList();
  }

  /// 인기 중지역만 가져오기
  List<LocalizedMiddleAreaMaster> getPopularMiddleAreas() {
    return _middleAreaCache.values
        .where((area) => area.isPopular)
        .toList()
      ..sort((a, b) => a.nameKo.compareTo(b.nameKo));
  }

  /// 리소스 정리
  void dispose() {
    _masterData = null;
    _serviceAreaCache.clear();
    _largeAreaCache.clear();
    _middleAreaCache.clear();
    _middleAreasByServiceCache.clear();
    _middleAreasByLargeCache.clear();
  }
}

// ==========================================================================
// Riverpod Providers
// ==========================================================================

/// 지역 마스터 서비스 프로바이더
final areaMasterServiceV2Provider = Provider<AreaMasterServiceV2>((ref) {
  final service = AreaMasterServiceV2();
  ref.onDispose(() => service.dispose());
  return service;
});

/// 서비스 초기화 프로바이더
final areaMasterInitializerV2Provider = FutureProvider<void>((ref) async {
  final service = ref.read(areaMasterServiceV2Provider);
  await service.initialize();
});

/// 모든 서비스 지역 프로바이더
final allServiceAreasV2Provider = Provider<List<LocalizedServiceAreaMaster>>((ref) {
  ref.watch(areaMasterInitializerV2Provider);
  return ref.read(areaMasterServiceV2Provider).getAllServiceAreas();
});

/// 인기 서비스 지역 프로바이더
final popularServiceAreasV2Provider = Provider<List<LocalizedServiceAreaMaster>>((ref) {
  ref.watch(areaMasterInitializerV2Provider);
  return ref.read(areaMasterServiceV2Provider).getPopularServiceAreas();
});

/// 특정 서비스 지역의 중지역 프로바이더
final middleAreasByServiceV2Provider = Provider.family<List<LocalizedMiddleAreaMaster>, String>((ref, serviceAreaCode) {
  ref.watch(areaMasterInitializerV2Provider);
  return ref.read(areaMasterServiceV2Provider).getMiddleAreasByServiceArea(serviceAreaCode);
});

/// 특정 대지역의 중지역 프로바이더
final middleAreasByLargeV2Provider = Provider.family<List<LocalizedMiddleAreaMaster>, String>((ref, largeAreaCode) {
  ref.watch(areaMasterInitializerV2Provider);
  return ref.read(areaMasterServiceV2Provider).getMiddleAreasByLargeArea(largeAreaCode);
});

/// 인기 중지역 프로바이더
final popularMiddleAreasV2Provider = Provider<List<LocalizedMiddleAreaMaster>>((ref) {
  ref.watch(areaMasterInitializerV2Provider);
  return ref.read(areaMasterServiceV2Provider).getPopularMiddleAreas();
});