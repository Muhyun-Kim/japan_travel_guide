import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_data.freezed.dart';
part 'region_data.g.dart';

/// 선택된 지역 데이터 모델
/// 
/// HotPepper API의 ServiceArea 정보를 저장합니다.
/// code: 서비스 지역 코드 (SA11, SA12 등)
/// name: 지역 이름 (관동, 관서 등)
@freezed
class RegionData with _$RegionData {
  const factory RegionData({
    required String code,
    required String name,
  }) = _RegionData;

  factory RegionData.fromJson(Map<String, dynamic> json) =>
      _$RegionDataFromJson(json);
}
