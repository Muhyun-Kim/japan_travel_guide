import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/services/region_storage.dart';

class SelectedRegionsNotifier extends StateNotifier<List<String>> {
  SelectedRegionsNotifier() : super([]) {
    loadData();
  }

  // 데이터 불러오기
  Future<void> loadData() async {
    state = await RegionStorage.loadRegions();
  }

  // 지역 설정 (덮어쓰기)
  Future<void> setRegions(List<String> regions) async {
    state = regions;
    await RegionStorage.saveRegions(regions);
  }

  // 지역 추가
  Future<void> addRegion(String region) async {
    if (!state.contains(region)) {
      state = [...state, region];
      await RegionStorage.saveRegions(state);
    }
  }

  // 지역 제거
  Future<void> removeRegion(String region) async {
    state = state.where((r) => r != region).toList();
    await RegionStorage.saveRegions(state);
  }
}

// Provider
final selectedRegionsProvider =
    StateNotifierProvider<SelectedRegionsNotifier, List<String>>((
      ref,
    ) {
      return SelectedRegionsNotifier();
    });
