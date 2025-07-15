// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizedServiceAreaMasterImpl _$$LocalizedServiceAreaMasterImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedServiceAreaMasterImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  isPopular: json['isPopular'] as bool,
);

Map<String, dynamic> _$$LocalizedServiceAreaMasterImplToJson(
  _$LocalizedServiceAreaMasterImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'isPopular': instance.isPopular,
};

_$LocalizedLargeAreaMasterImpl _$$LocalizedLargeAreaMasterImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedLargeAreaMasterImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  serviceAreaCode: json['serviceAreaCode'] as String,
);

Map<String, dynamic> _$$LocalizedLargeAreaMasterImplToJson(
  _$LocalizedLargeAreaMasterImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'serviceAreaCode': instance.serviceAreaCode,
};

_$LocalizedMiddleAreaMasterImpl _$$LocalizedMiddleAreaMasterImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedMiddleAreaMasterImpl(
  code: json['code'] as String,
  nameJa: json['nameJa'] as String,
  nameKo: json['nameKo'] as String,
  largeAreaCode: json['largeAreaCode'] as String,
  serviceAreaCode: json['serviceAreaCode'] as String,
  isPopular: json['isPopular'] as bool,
);

Map<String, dynamic> _$$LocalizedMiddleAreaMasterImplToJson(
  _$LocalizedMiddleAreaMasterImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'largeAreaCode': instance.largeAreaCode,
  'serviceAreaCode': instance.serviceAreaCode,
  'isPopular': instance.isPopular,
};

_$LocalizedAreaSelectionMasterImpl _$$LocalizedAreaSelectionMasterImplFromJson(
  Map<String, dynamic> json,
) => _$LocalizedAreaSelectionMasterImpl(
  serviceArea: LocalizedServiceAreaMaster.fromJson(
    json['serviceArea'] as Map<String, dynamic>,
  ),
  selectedLargeArea:
      json['selectedLargeArea'] == null
          ? null
          : LocalizedLargeAreaMaster.fromJson(
            json['selectedLargeArea'] as Map<String, dynamic>,
          ),
  selectedMiddleArea:
      json['selectedMiddleArea'] == null
          ? null
          : LocalizedMiddleAreaMaster.fromJson(
            json['selectedMiddleArea'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$LocalizedAreaSelectionMasterImplToJson(
  _$LocalizedAreaSelectionMasterImpl instance,
) => <String, dynamic>{
  'serviceArea': instance.serviceArea,
  'selectedLargeArea': instance.selectedLargeArea,
  'selectedMiddleArea': instance.selectedMiddleArea,
};
