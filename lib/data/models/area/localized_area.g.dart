// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizedAreaBaseImpl _$$LocalizedAreaBaseImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedAreaBaseImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isPopular: json['isPopular'] as bool? ?? false,
);

Map<String, dynamic> _$$LocalizedAreaBaseImplToJson(
  _$LocalizedAreaBaseImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'sortOrder': instance.sortOrder,
  'isPopular': instance.isPopular,
};

_$LocalizedServiceAreaImpl _$$LocalizedServiceAreaImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedServiceAreaImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isPopular: json['isPopular'] as bool? ?? false,
);

Map<String, dynamic> _$$LocalizedServiceAreaImplToJson(
  _$LocalizedServiceAreaImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'sortOrder': instance.sortOrder,
  'isPopular': instance.isPopular,
};

_$LocalizedLargeAreaImpl _$$LocalizedLargeAreaImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedLargeAreaImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  serviceAreaCode: json['serviceAreaCode'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isPopular: json['isPopular'] as bool? ?? false,
);

Map<String, dynamic> _$$LocalizedLargeAreaImplToJson(
  _$LocalizedLargeAreaImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'serviceAreaCode': instance.serviceAreaCode,
  'sortOrder': instance.sortOrder,
  'isPopular': instance.isPopular,
};

_$LocalizedMiddleAreaImpl _$$LocalizedMiddleAreaImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedMiddleAreaImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  largeAreaCode: json['largeAreaCode'] as String,
  serviceAreaCode: json['serviceAreaCode'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isPopular: json['isPopular'] as bool? ?? false,
);

Map<String, dynamic> _$$LocalizedMiddleAreaImplToJson(
  _$LocalizedMiddleAreaImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'largeAreaCode': instance.largeAreaCode,
  'serviceAreaCode': instance.serviceAreaCode,
  'sortOrder': instance.sortOrder,
  'isPopular': instance.isPopular,
};

_$LocalizedSmallAreaImpl _$$LocalizedSmallAreaImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedSmallAreaImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  middleAreaCode: json['middleAreaCode'] as String,
  largeAreaCode: json['largeAreaCode'] as String,
  serviceAreaCode: json['serviceAreaCode'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isPopular: json['isPopular'] as bool? ?? false,
);

Map<String, dynamic> _$$LocalizedSmallAreaImplToJson(
  _$LocalizedSmallAreaImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'middleAreaCode': instance.middleAreaCode,
  'largeAreaCode': instance.largeAreaCode,
  'serviceAreaCode': instance.serviceAreaCode,
  'sortOrder': instance.sortOrder,
  'isPopular': instance.isPopular,
};

_$LocalizedAreaSelectionImpl _$$LocalizedAreaSelectionImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedAreaSelectionImpl(
  serviceArea: LocalizedServiceArea.fromJson(
    json['serviceArea'] as Map<String, dynamic>,
  ),
  selectedLargeArea:
      json['selectedLargeArea'] == null
          ? null
          : LocalizedLargeArea.fromJson(
            json['selectedLargeArea'] as Map<String, dynamic>,
          ),
  selectedMiddleArea:
      json['selectedMiddleArea'] == null
          ? null
          : LocalizedMiddleArea.fromJson(
            json['selectedMiddleArea'] as Map<String, dynamic>,
          ),
  selectedSmallArea:
      json['selectedSmallArea'] == null
          ? null
          : LocalizedSmallArea.fromJson(
            json['selectedSmallArea'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$LocalizedAreaSelectionImplToJson(
  _$LocalizedAreaSelectionImpl instance,
) => <String, dynamic>{
  'serviceArea': instance.serviceArea,
  'selectedLargeArea': instance.selectedLargeArea,
  'selectedMiddleArea': instance.selectedMiddleArea,
  'selectedSmallArea': instance.selectedSmallArea,
};
