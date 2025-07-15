// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gourmet_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GourmetSearchRequestImpl _$$GourmetSearchRequestImplFromJson(
  Map<String, dynamic> json,
) => _$GourmetSearchRequestImpl(
  serviceArea: json['service_area'] as String,
  start: (json['start'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
  keyword: json['keyword'] as String?,
  order: (json['order'] as num?)?.toInt(),
  middleArea: json['middle_area'] as String?,
  smallArea: json['small_area'] as String?,
  genre: json['genre'] as String?,
);

Map<String, dynamic> _$$GourmetSearchRequestImplToJson(
  _$GourmetSearchRequestImpl instance,
) => <String, dynamic>{
  'service_area': instance.serviceArea,
  'start': instance.start,
  'count': instance.count,
  'keyword': instance.keyword,
  'order': instance.order,
  'middle_area': instance.middleArea,
  'small_area': instance.smallArea,
  'genre': instance.genre,
};
