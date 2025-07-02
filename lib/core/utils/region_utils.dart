import 'package:japan_travel_guide/core/constants/app_constants.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/master_response.dart';
import 'package:japan_travel_guide/data/models/region/region_data.dart';

class RegionUtils {
  // ==========================================================================
  // 기존 함수들 (하위 호환성을 위해 유지)
  // ==========================================================================

  static List<Map<String, String>> searchRegions(
    List<String> searchRegions,
    String searchType,
  ) {
    return regions
        .where((region) => searchRegions.contains(region[searchType]))
        .toList();
  }

  static Map<String, String>? searchSingleRegion(String enRegion) {
    try {
      return regions.firstWhere((region) => region['en'] == enRegion);
    } catch (e) {
      return null; // 찾을 수 없을 때
    }
  }

  // ==========================================================================
  // 새로운 함수들 (ServiceArea 데이터 활용)
  // ==========================================================================

  /// 일본어 이름으로 하드코딩된 regions에서 영어 키 찾기
  ///
  /// [매개변수] japaneseName - 일본어 지역명 (예: '東京', '大阪')
  /// [반환값] 영어 키 또는 null (예: 'tokyo', 'osaka')
  static String? findEnglishKeyByJapaneseName(String japaneseName) {
    try {
      final region = regions.firstWhere(
        (region) => region['jp'] == japaneseName,
      );
      return region['en'];
    } catch (e) {
      print('⚠️ RegionUtils: 일본어 이름으로 영어 찾기 실패 - $japaneseName');
      return null;
    }
  }

  /// ServiceArea 데이터를 RegionData로 변환
  ///
  /// [매개변수] serviceAreas - HotPepper API에서 가져온 ServiceArea 리스트
  /// [반환값] RegionData 리스트
  static List<RegionData> convertServiceAreasToRegionData(
    List<ServiceArea> serviceAreas,
  ) {
    return serviceAreas
        .map(
          (serviceArea) => RegionData(
            code: serviceArea.code,
            name: serviceArea.name,
          ),
        )
        .toList();
  }

  /// 선호 지역 리스트를 ServiceArea 데이터에서 찾기
  ///
  /// [매개변수] preferredEnglishKeys - 선호 지역의 영어 키 리스트
  /// [매개변수] serviceAreas - HotPepper API에서 가져온 ServiceArea 리스트
  /// [반환값] 매칭되는 RegionData 리스트
  static List<RegionData> findPreferredRegionsFromServiceAreas(
    List<String> preferredEnglishKeys,
    List<ServiceArea> serviceAreas,
  ) {
    final List<RegionData> result = [];

    for (final englishKey in preferredEnglishKeys) {
      // 영어 키로 일본어 이름 찾기
      final region = searchSingleRegion(englishKey);
      if (region != null) {
        final japaneseName = region['jp']!;

        // ServiceArea에서 일본어 이름으로 매칭되는 지역 찾기
        final matchingServiceArea =
            serviceAreas
                .where(
                  (sa) =>
                      sa.name.contains(japaneseName) ||
                      japaneseName.contains(sa.name),
                )
                .firstOrNull;

        if (matchingServiceArea != null) {
          result.add(
            RegionData(
              code: matchingServiceArea.code,
              name: matchingServiceArea.name,
            ),
          );
        } else {
          // ServiceArea에 매칭되는 지역이 없는 경우 임시 데이터 생성
          result.add(
            RegionData(
              code: 'TEMP_${englishKey.toUpperCase()}',
              name: japaneseName,
            ),
          );
        }
      }
    }

    return result;
  }

  /// RegionData 리스트에서 특정 코드로 검색
  ///
  /// [매개변수] regionDataList - 검색할 RegionData 리스트
  /// [매개변수] code - 찾을 지역 코드
  /// [반환값] 매칭되는 RegionData 또는 null
  static RegionData? findRegionByCode(
    List<RegionData> regionDataList,
    String code,
  ) {
    try {
      return regionDataList.firstWhere(
        (region) => region.code == code,
      );
    } catch (e) {
      return null;
    }
  }
}
