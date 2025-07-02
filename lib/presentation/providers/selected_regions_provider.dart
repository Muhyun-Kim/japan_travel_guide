import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/services/region_storage.dart';
import 'package:japan_travel_guide/data/models/region/region_data.dart';

class SelectedRegionsNotifier extends StateNotifier<List<RegionData>> {
  SelectedRegionsNotifier() : super([]) {
    loadData();
  }

  // 데이터 불러오기
  Future<void> loadData() async {
    final loadedRegions = await RegionStorage.loadRegions();
    state = loadedRegions;
    print('🔄 SelectedRegionsProvider: 로드된 지역 데이터');
    for (final region in loadedRegions) {
      print('  - ${region.code}: ${region.name}');
    }
  }

  // 지역 설정 (덮어쓰기)
  Future<void> setRegions(List<RegionData> regions) async {
    state = regions;
    await RegionStorage.saveRegions(regions);
  }

  // 지역 추가
  Future<void> addRegion(RegionData region) async {
    // 동일한 코드가 이미 있는지 확인
    if (!state.any((r) => r.code == region.code)) {
      state = [...state, region];
      await RegionStorage.saveRegions(state);
      print('✅ SelectedRegionsProvider: 지역 추가 - ${region.code}: ${region.name}');
    } else {
      print('⚠️ SelectedRegionsProvider: 이미 존재하는 지역 - ${region.code}');
    }
  }

  // 지역 제거 (코드로 검색)
  Future<void> removeRegion(String regionCode) async {
    final removedRegion = state.firstWhere(
      (r) => r.code == regionCode,
      orElse: () => const RegionData(code: '', name: ''),
    );
    
    state = state.where((r) => r.code != regionCode).toList();
    await RegionStorage.saveRegions(state);
    
    if (removedRegion.code.isNotEmpty) {
      print('✅ SelectedRegionsProvider: 지역 제거 - ${removedRegion.code}: ${removedRegion.name}');
    }
  }

  // 지역 이름으로 영어 키 찾기 (RegionUtils와 연동)
  String? findEnglishKeyByJapaneseName(String japaneseName) {
    final region = state.firstWhere(
      (r) => r.name == japaneseName,
      orElse: () => const RegionData(code: '', name: ''),
    );
    return region.code.isNotEmpty ? region.code : null;
  }
}

// Provider
final selectedRegionsProvider =
    StateNotifierProvider<SelectedRegionsNotifier, List<RegionData>>((ref) {
  return SelectedRegionsNotifier();
});
