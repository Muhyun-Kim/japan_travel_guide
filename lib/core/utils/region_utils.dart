import 'package:japan_travel_guide/core/constants/app_constants.dart';

class RegionUtils {
  static List<Map<String, String>> searchRegions(
    List<String> searchRegions,
    String searchType,
  ) {
    return regions
        .where(
          (region) => searchRegions.contains(
            region[searchType],
          ),
        )
        .toList();
  }

  static List<Map<String, String>>
  searchRegionsByEn(List<String> enRegions) {
    return searchRegions(enRegions, 'en');
  }

  static Map<String, String>? searchSingleRegion(
    String enRegion,
  ) {
    try {
      return regions.firstWhere(
        (region) => region['en'] == enRegion,
      );
    } catch (e) {
      return null; // 찾을 수 없을 때
    }
  }
}
