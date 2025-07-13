import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/area/localized_area.dart';
import 'package:japan_travel_guide/data/services/area_master_service.dart';

// ==========================================================================
// Service Provider
// ==========================================================================

/// AreaMasterService 싱글톤 프로바이더
final areaMasterServiceProvider = Provider<AreaMasterService>((ref) {
  final service = AreaMasterService();
  
  // 프로바이더가 dispose될 때 서비스도 정리
  ref.onDispose(() {
    service.dispose();
  });
  
  return service;
});

// ==========================================================================
// State Providers
// ==========================================================================

/// 지역 초기화 상태 프로바이더
final areaInitializationProvider = FutureProvider<void>((ref) async {
  final service = ref.read(areaMasterServiceProvider);
  await service.initialize();
});

/// 현재 선택된 지역 프로바이더
final selectedAreaProvider = StateProvider<LocalizedAreaSelection?>((ref) => null);

// ==========================================================================
// Data Providers
// ==========================================================================

/// 모든 현지화된 서비스 지역 목록 프로바이더
final localizedServiceAreasProvider = Provider<List<LocalizedServiceArea>>((ref) {
  // 초기화 상태를 watch하여 초기화 완료 후 데이터 제공
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  return service.getLocalizedServiceAreas();
});

/// 인기 서비스 지역 목록 프로바이더
final popularServiceAreasProvider = Provider<List<LocalizedServiceArea>>((ref) {
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  return service.getPopularServiceAreas();
});

/// 특정 서비스 지역의 대지역 목록 프로바이더
final largeAreasProvider = Provider.family<List<LocalizedLargeArea>, String>((ref, serviceAreaCode) {
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  return service.getLocalizedLargeAreas(serviceAreaCode);
});

/// 특정 대지역의 중지역 목록 프로바이더
final middleAreasProvider = FutureProvider.family<List<LocalizedMiddleArea>, String>((ref, largeAreaCode) async {
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  return await service.getLocalizedMiddleAreas(largeAreaCode);
});

/// 특정 중지역의 소지역 목록 프로바이더
final smallAreasProvider = FutureProvider.family<List<LocalizedSmallArea>, String>((ref, middleAreaCode) async {
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  return await service.getLocalizedSmallAreas(middleAreaCode);
});

// ==========================================================================
// Utility Providers
// ==========================================================================

/// 서비스 지역 코드로 현지화된 서비스 지역 찾기
final serviceAreaByCodeProvider = Provider.family<LocalizedServiceArea?, String>((ref, code) {
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  return service.findServiceAreaByCode(code);
});

/// 선택된 지역의 한국어 표시명
final selectedAreaDisplayNameProvider = Provider<String?>((ref) {
  final selectedArea = ref.watch(selectedAreaProvider);
  return selectedArea?.displayName;
});

/// 선택된 지역의 검색용 서비스 지역 코드
final selectedServiceAreaCodeProvider = Provider<String?>((ref) {
  final selectedArea = ref.watch(selectedAreaProvider);
  return selectedArea?.searchServiceAreaCode;
});

/// 선택된 지역의 검색용 소지역 코드
final selectedSmallAreaCodeProvider = Provider<String?>((ref) {
  final selectedArea = ref.watch(selectedAreaProvider);
  return selectedArea?.searchSmallAreaCode;
});

// ==========================================================================
// Action Providers
// ==========================================================================

/// 지역 선택 액션
final selectAreaActionProvider = Provider<void Function(LocalizedAreaSelection?)>((ref) {
  return (areaSelection) {
    ref.read(selectedAreaProvider.notifier).state = areaSelection;
  };
});

/// 지역 선택 해제 액션
final clearAreaSelectionActionProvider = Provider<VoidCallback>((ref) {
  return () {
    ref.read(selectedAreaProvider.notifier).state = null;
  };
});

/// 백그라운드 캐시 갱신 액션
final refreshAreaCacheActionProvider = Provider<Future<void> Function()>((ref) {
  return () async {
    final service = ref.read(areaMasterServiceProvider);
    await service.refreshInBackground();
    
    // 프로바이더들을 invalidate하여 새로운 데이터로 갱신
    ref.invalidate(localizedServiceAreasProvider);
    ref.invalidate(popularServiceAreasProvider);
  };
});

/// 강제 새로고침 액션
final forceRefreshAreaActionProvider = Provider<Future<void> Function()>((ref) {
  return () async {
    final service = ref.read(areaMasterServiceProvider);
    await service.forceRefresh();
    
    // 모든 관련 프로바이더 invalidate
    ref.invalidate(areaInitializationProvider);
    ref.invalidate(localizedServiceAreasProvider);
    ref.invalidate(popularServiceAreasProvider);
  };
});

// ==========================================================================
// Status Providers
// ==========================================================================

/// 지역 데이터 로딩 상태
final areaLoadingStateProvider = Provider<AsyncValue<void>>((ref) {
  return ref.watch(areaInitializationProvider);
});

// ==========================================================================
// Search & Filter Providers
// ==========================================================================

/// 서비스 지역 검색 텍스트
final serviceAreaSearchTextProvider = StateProvider<String>((ref) => '');

/// 검색된 서비스 지역 목록
final filteredServiceAreasProvider = Provider<List<LocalizedServiceArea>>((ref) {
  final searchText = ref.watch(serviceAreaSearchTextProvider).toLowerCase();
  final allAreas = ref.watch(localizedServiceAreasProvider);
  
  if (searchText.isEmpty) {
    return allAreas;
  }
  
  return allAreas.where((area) {
    return area.nameKo.toLowerCase().contains(searchText) ||
           area.nameJa.toLowerCase().contains(searchText) ||
           area.code.toLowerCase().contains(searchText);
  }).toList();
});

/// 검색된 인기 서비스 지역 목록
final filteredPopularServiceAreasProvider = Provider<List<LocalizedServiceArea>>((ref) {
  final filteredAreas = ref.watch(filteredServiceAreasProvider);
  return filteredAreas.where((area) => area.isPopular).toList();
});

// ==========================================================================
// Area Hierarchy Providers
// ==========================================================================

/// 특정 서비스 지역의 전체 계층 구조 프로바이더
final areaHierarchyProvider = FutureProvider.family<LocalizedAreaHierarchy, String>((ref, serviceAreaCode) async {
  ref.watch(areaInitializationProvider);
  
  final service = ref.read(areaMasterServiceProvider);
  
  // 서비스 지역 정보
  final serviceArea = service.findServiceAreaByCode(serviceAreaCode);
  if (serviceArea == null) {
    throw Exception('ServiceArea not found: $serviceAreaCode');
  }
  
  // 대지역 목록
  final largeAreas = service.getLocalizedLargeAreas(serviceAreaCode);
  
  // 모든 중지역과 소지역 수집
  final allMiddleAreas = <LocalizedMiddleArea>[];
  final allSmallAreas = <LocalizedSmallArea>[];
  
  for (final largeArea in largeAreas) {
    final middleAreas = await service.getLocalizedMiddleAreas(largeArea.code);
    allMiddleAreas.addAll(middleAreas);
    
    for (final middleArea in middleAreas) {
      final smallAreas = await service.getLocalizedSmallAreas(middleArea.code);
      allSmallAreas.addAll(smallAreas);
    }
  }
  
  return LocalizedAreaHierarchy(
    serviceArea: serviceArea,
    largeAreas: largeAreas,
    middleAreas: allMiddleAreas,
    smallAreas: allSmallAreas,
  );
});

// ==========================================================================
// Helper Models
// ==========================================================================

/// 현지화된 지역 계층 구조
class LocalizedAreaHierarchy {
  final LocalizedServiceArea serviceArea;
  final List<LocalizedLargeArea> largeAreas;
  final List<LocalizedMiddleArea> middleAreas;
  final List<LocalizedSmallArea> smallAreas;
  
  const LocalizedAreaHierarchy({
    required this.serviceArea,
    required this.largeAreas,
    required this.middleAreas,
    required this.smallAreas,
  });
  
  /// 특정 대지역에 속하는 중지역들을 필터링
  List<LocalizedMiddleArea> getMiddleAreasByLargeArea(String largeAreaCode) {
    return middleAreas
        .where((middle) => middle.largeAreaCode == largeAreaCode)
        .toList();
  }
  
  /// 특정 중지역에 속하는 소지역들을 필터링
  List<LocalizedSmallArea> getSmallAreasByMiddleArea(String middleAreaCode) {
    return smallAreas
        .where((small) => small.middleAreaCode == middleAreaCode)
        .toList();
  }
}