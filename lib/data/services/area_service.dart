import 'dart:async';

import 'package:japan_travel_guide/data/models/area/area_hierarchy.dart';
import 'package:japan_travel_guide/data/models/hotpepper/request/master_requests.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/master_response.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';

/// 지역 데이터 관리 서비스
///
/// HotPepper API의 Master 데이터를 활용하여 지역 계층 구조를 관리합니다.
class AreaService {
  final HotPepperApi _api;

  // 캐시된 데이터
  List<ServiceArea>? _cachedServiceAreas;
  List<LargeArea>? _cachedLargeAreas;
  final Map<String, List<MiddleArea>> _cachedMiddleAreas = {};
  final Map<String, List<SmallArea>> _cachedSmallAreas = {};

  AreaService({HotPepperApi? api}) : _api = api ?? HotPepperApi();

  /// 서비스 지역 목록 가져오기
  Future<List<ServiceArea>> getServiceAreas() async {
    _cachedServiceAreas ??= (await _api.getServiceAreaMaster()).data;
    return _cachedServiceAreas!;
  }

  /// 대지역 목록 가져오기
  Future<List<LargeArea>> getLargeAreas() async {
    _cachedLargeAreas ??= (await _api.getLargeAreaMaster()).data;
    return _cachedLargeAreas!;
  }

  /// 특정 대지역의 중지역 목록 가져오기
  Future<List<MiddleArea>> getMiddleAreas(
    String largeAreaCode,
  ) async {
    if (!_cachedMiddleAreas.containsKey(largeAreaCode)) {
      final request = MiddleAreaMasterRequest(
        largeAreaCode: largeAreaCode,
      );
      final response = await _api.getMiddleAreaMaster(request);
      _cachedMiddleAreas[largeAreaCode] = response.data;
    }
    return _cachedMiddleAreas[largeAreaCode]!;
  }

  /// 특정 중지역의 소지역 목록 가져오기
  Future<List<SmallArea>> getSmallAreas(String middleAreaCode) async {
    if (!_cachedSmallAreas.containsKey(middleAreaCode)) {
      final request = SmallAreaMasterRequest(
        middleAreaCode: middleAreaCode,
      );
      final response = await _api.getSmallAreaMaster(request);
      _cachedSmallAreas[middleAreaCode] = response.data;
    }
    return _cachedSmallAreas[middleAreaCode]!;
  }

  /// 특정 서비스 지역의 전체 계층 구조 가져오기
  Future<AreaHierarchy> getAreaHierarchy(
    String serviceAreaCode,
  ) async {
    final serviceAreas = await getServiceAreas();
    final serviceArea = serviceAreas.firstWhere(
      (area) => area.code == serviceAreaCode,
      orElse:
          () =>
              throw Exception(
                'ServiceArea not found: $serviceAreaCode',
              ),
    );

    final largeAreas = await getLargeAreas();
    final relevantLargeAreas =
        largeAreas
            .where(
              (large) => large.serviceArea.code == serviceAreaCode,
            )
            .toList();

    final List<MiddleArea> allMiddleAreas = [];
    final List<SmallArea> allSmallAreas = [];

    // 각 대지역에 대해 중지역과 소지역을 가져오기
    for (final largeArea in relevantLargeAreas) {
      final middleAreas = await getMiddleAreas(largeArea.code);
      allMiddleAreas.addAll(middleAreas);

      for (final middleArea in middleAreas) {
        final smallAreas = await getSmallAreas(middleArea.code);
        allSmallAreas.addAll(smallAreas);
      }
    }

    return AreaHierarchy(
      serviceArea: serviceArea,
      largeAreas: relevantLargeAreas,
      middleAreas: allMiddleAreas,
      smallAreas: allSmallAreas,
    );
  }

  /// 특정 서비스 지역의 소지역 목록 가져오기 (검색용)
  Future<List<SmallArea>> getSmallAreasForSearch(
    String serviceAreaCode,
  ) async {
    final hierarchy = await getAreaHierarchy(serviceAreaCode);
    return hierarchy.smallAreas;
  }

  /// 캐시 초기화
  void clearCache() {
    _cachedServiceAreas = null;
    _cachedLargeAreas = null;
    _cachedMiddleAreas.clear();
    _cachedSmallAreas.clear();
  }

  /// 리소스 정리
  void dispose() {
    _api.dispose();
    clearCache();
  }
}
