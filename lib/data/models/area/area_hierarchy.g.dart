// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_hierarchy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaHierarchyImpl _$$AreaHierarchyImplFromJson(Map<String, dynamic> json) =>
    _$AreaHierarchyImpl(
      serviceArea: ServiceArea.fromJson(
        json['serviceArea'] as Map<String, dynamic>,
      ),
      largeAreas:
          (json['largeAreas'] as List<dynamic>?)
              ?.map((e) => LargeArea.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      middleAreas:
          (json['middleAreas'] as List<dynamic>?)
              ?.map((e) => MiddleArea.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      smallAreas:
          (json['smallAreas'] as List<dynamic>?)
              ?.map((e) => SmallArea.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AreaHierarchyImplToJson(_$AreaHierarchyImpl instance) =>
    <String, dynamic>{
      'serviceArea': instance.serviceArea,
      'largeAreas': instance.largeAreas,
      'middleAreas': instance.middleAreas,
      'smallAreas': instance.smallAreas,
    };

_$AreaSelectionImpl _$$AreaSelectionImplFromJson(Map<String, dynamic> json) =>
    _$AreaSelectionImpl(
      serviceArea: ServiceArea.fromJson(
        json['serviceArea'] as Map<String, dynamic>,
      ),
      selectedLargeArea:
          json['selectedLargeArea'] == null
              ? null
              : LargeArea.fromJson(
                json['selectedLargeArea'] as Map<String, dynamic>,
              ),
      selectedMiddleArea:
          json['selectedMiddleArea'] == null
              ? null
              : MiddleArea.fromJson(
                json['selectedMiddleArea'] as Map<String, dynamic>,
              ),
      selectedSmallArea:
          json['selectedSmallArea'] == null
              ? null
              : SmallArea.fromJson(
                json['selectedSmallArea'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$AreaSelectionImplToJson(_$AreaSelectionImpl instance) =>
    <String, dynamic>{
      'serviceArea': instance.serviceArea,
      'selectedLargeArea': instance.selectedLargeArea,
      'selectedMiddleArea': instance.selectedMiddleArea,
      'selectedSmallArea': instance.selectedSmallArea,
    };
