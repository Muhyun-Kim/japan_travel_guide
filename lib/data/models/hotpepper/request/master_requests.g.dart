// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiddleAreaMasterRequestImpl _$$MiddleAreaMasterRequestImplFromJson(
  Map<String, dynamic> json,
) => _$MiddleAreaMasterRequestImpl(
  middleAreaCode: json['middle_area'] as String?,
  largeAreaCode: json['large_area'] as String?,
  keyword: json['keyword'] as String?,
  start: (json['start'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$$MiddleAreaMasterRequestImplToJson(
  _$MiddleAreaMasterRequestImpl instance,
) => <String, dynamic>{
  'middle_area': instance.middleAreaCode,
  'large_area': instance.largeAreaCode,
  'keyword': instance.keyword,
  'start': instance.start,
  'count': instance.count,
};
