import 'dart:async';

import 'package:japan_travel_guide/data/models/area/localized_area.dart';
import 'package:japan_travel_guide/data/services/area_master_service.dart';

/// 지역 데이터 관리 서비스 (Deprecated)
///
/// 새로운 AreaMasterService와 LocalizedArea 모델을 사용하는 것을 권장합니다.
/// 현지화된 지역 데이터와 향상된 캐싱 기능을 제공합니다.
@Deprecated('Use AreaMasterService and LocalizedArea models instead')
class AreaService {
  final AreaMasterService _areaMasterService;

  AreaService({AreaMasterService? areaMasterService})
      : _areaMasterService = areaMasterService ?? AreaMasterService();

  /// 현지화된 서비스 지역 목록 가져오기
  Future<List<LocalizedServiceArea>> getLocalizedServiceAreas() async {
    await _areaMasterService.initialize();
    return _areaMasterService.getLocalizedServiceAreas();
  }

  /// 특정 서비스 지역의 현지화된 대지역 목록 가져오기
  Future<List<LocalizedLargeArea>> getLocalizedLargeAreas(
    String serviceAreaCode,
  ) async {
    await _areaMasterService.initialize();
    return _areaMasterService.getLocalizedLargeAreas(serviceAreaCode);
  }

  /// 특정 대지역의 현지화된 중지역 목록 가져오기
  Future<List<LocalizedMiddleArea>> getLocalizedMiddleAreas(
    String largeAreaCode,
  ) async {
    await _areaMasterService.initialize();
    return await _areaMasterService.getLocalizedMiddleAreas(largeAreaCode);
  }

  /// 특정 중지역의 현지화된 소지역 목록 가져오기
  Future<List<LocalizedSmallArea>> getLocalizedSmallAreas(
    String middleAreaCode,
  ) async {
    await _areaMasterService.initialize();
    return await _areaMasterService.getLocalizedSmallAreas(middleAreaCode);
  }

  /// 특정 서비스 지역의 현지화된 지역 선택 생성
  Future<LocalizedAreaSelection> createAreaSelection(
    String serviceAreaCode,
  ) async {
    await _areaMasterService.initialize();
    final serviceArea = _areaMasterService.findServiceAreaByCode(serviceAreaCode);
    if (serviceArea == null) {
      throw Exception('ServiceArea not found: $serviceAreaCode');
    }
    return LocalizedAreaSelection(serviceArea: serviceArea);
  }

  /// 특정 서비스 지역의 소지역 목록 가져오기 (검색용)
  Future<List<LocalizedSmallArea>> getSmallAreasForSearch(
    String serviceAreaCode,
  ) async {
    await _areaMasterService.initialize();
    final largeAreas = _areaMasterService.getLocalizedLargeAreas(serviceAreaCode);
    
    final List<LocalizedSmallArea> allSmallAreas = [];
    for (final largeArea in largeAreas) {
      final middleAreas = await _areaMasterService.getLocalizedMiddleAreas(largeArea.code);
      for (final middleArea in middleAreas) {
        final smallAreas = await _areaMasterService.getLocalizedSmallAreas(middleArea.code);
        allSmallAreas.addAll(smallAreas);
      }
    }
    
    return allSmallAreas;
  }

  /// 캐시 초기화
  void clearCache() {
    _areaMasterService.clearCache();
  }

  /// 리소스 정리
  void dispose() {
    _areaMasterService.dispose();
  }
}
