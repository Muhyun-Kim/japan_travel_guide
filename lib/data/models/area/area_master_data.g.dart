// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_master_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaMasterResponseImpl _$$AreaMasterResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AreaMasterResponseImpl(
  results: AreaMasterResults.fromJson(json['results'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AreaMasterResponseImplToJson(
  _$AreaMasterResponseImpl instance,
) => <String, dynamic>{'results': instance.results};

_$AreaMasterResultsImpl _$$AreaMasterResultsImplFromJson(
  Map<String, dynamic> json,
) => _$AreaMasterResultsImpl(
  apiVersion: json['api_version'] as String,
  resultsAvailable: (json['results_available'] as num).toInt(),
  resultsReturned: json['results_returned'] as String,
  resultsStart: (json['results_start'] as num).toInt(),
  middleArea:
      (json['middle_area'] as List<dynamic>)
          .map((e) => MiddleAreaMaster.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$AreaMasterResultsImplToJson(
  _$AreaMasterResultsImpl instance,
) => <String, dynamic>{
  'api_version': instance.apiVersion,
  'results_available': instance.resultsAvailable,
  'results_returned': instance.resultsReturned,
  'results_start': instance.resultsStart,
  'middle_area': instance.middleArea,
};

_$MiddleAreaMasterImpl _$$MiddleAreaMasterImplFromJson(
  Map<String, dynamic> json,
) => _$MiddleAreaMasterImpl(
  code: json['code'] as String,
  name: json['name'] as String,
  largeArea: LargeAreaInfo.fromJson(json['large_area'] as Map<String, dynamic>),
  serviceArea: ServiceAreaInfo.fromJson(
    json['service_area'] as Map<String, dynamic>,
  ),
  largeServiceArea: LargeServiceAreaInfo.fromJson(
    json['large_service_area'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$MiddleAreaMasterImplToJson(
  _$MiddleAreaMasterImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'large_area': instance.largeArea,
  'service_area': instance.serviceArea,
  'large_service_area': instance.largeServiceArea,
};

_$LargeAreaInfoImpl _$$LargeAreaInfoImplFromJson(Map<String, dynamic> json) =>
    _$LargeAreaInfoImpl(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LargeAreaInfoImplToJson(_$LargeAreaInfoImpl instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};

_$ServiceAreaInfoImpl _$$ServiceAreaInfoImplFromJson(
  Map<String, dynamic> json,
) => _$ServiceAreaInfoImpl(
  code: json['code'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$$ServiceAreaInfoImplToJson(
  _$ServiceAreaInfoImpl instance,
) => <String, dynamic>{'code': instance.code, 'name': instance.name};

_$LargeServiceAreaInfoImpl _$$LargeServiceAreaInfoImplFromJson(
  Map<String, dynamic> json,
) => _$LargeServiceAreaInfoImpl(
  code: json['code'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$$LargeServiceAreaInfoImplToJson(
  _$LargeServiceAreaInfoImpl instance,
) => <String, dynamic>{'code': instance.code, 'name': instance.name};
