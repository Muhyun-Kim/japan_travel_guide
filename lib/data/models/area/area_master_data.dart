import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_master_data.freezed.dart';
part 'area_master_data.g.dart';

/// API에서 가져온 지역 마스터 데이터의 응답 모델
@freezed
class AreaMasterResponse with _$AreaMasterResponse {
  const factory AreaMasterResponse({
    required AreaMasterResults results,
  }) = _AreaMasterResponse;

  factory AreaMasterResponse.fromJson(Map<String, dynamic> json) =>
      _$AreaMasterResponseFromJson(json);
}

@freezed
class AreaMasterResults with _$AreaMasterResults {
  const factory AreaMasterResults({
    @JsonKey(name: 'api_version') required String apiVersion,
    @JsonKey(name: 'results_available') required int resultsAvailable,
    @JsonKey(name: 'results_returned') required String resultsReturned,
    @JsonKey(name: 'results_start') required int resultsStart,
    @JsonKey(name: 'middle_area') required List<MiddleAreaMaster> middleArea,
  }) = _AreaMasterResults;

  factory AreaMasterResults.fromJson(Map<String, dynamic> json) =>
      _$AreaMasterResultsFromJson(json);
}

@freezed
class MiddleAreaMaster with _$MiddleAreaMaster {
  const factory MiddleAreaMaster({
    required String code,
    required String name,
    @JsonKey(name: 'large_area') required LargeAreaInfo largeArea,
    @JsonKey(name: 'service_area') required ServiceAreaInfo serviceArea,
    @JsonKey(name: 'large_service_area') required LargeServiceAreaInfo largeServiceArea,
  }) = _MiddleAreaMaster;

  factory MiddleAreaMaster.fromJson(Map<String, dynamic> json) =>
      _$MiddleAreaMasterFromJson(json);
}

@freezed
class LargeAreaInfo with _$LargeAreaInfo {
  const factory LargeAreaInfo({
    required String code,
    required String name,
  }) = _LargeAreaInfo;

  factory LargeAreaInfo.fromJson(Map<String, dynamic> json) =>
      _$LargeAreaInfoFromJson(json);
}

@freezed
class ServiceAreaInfo with _$ServiceAreaInfo {
  const factory ServiceAreaInfo({
    required String code,
    required String name,
  }) = _ServiceAreaInfo;

  factory ServiceAreaInfo.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreaInfoFromJson(json);
}

@freezed
class LargeServiceAreaInfo with _$LargeServiceAreaInfo {
  const factory LargeServiceAreaInfo({
    required String code,
    required String name,
  }) = _LargeServiceAreaInfo;

  factory LargeServiceAreaInfo.fromJson(Map<String, dynamic> json) =>
      _$LargeServiceAreaInfoFromJson(json);
}

/// 지역 마스터 데이터 로더
class AreaMasterDataLoader {
  static Future<AreaMasterResponse> loadFromAsset() async {
    final jsonString = await rootBundle.loadString('lib/core/constants/area_master.json');
    final jsonData = json.decode(jsonString);
    return AreaMasterResponse.fromJson(jsonData);
  }
}