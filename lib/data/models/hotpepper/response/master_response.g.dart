// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeNameImpl _$$CodeNameImplFromJson(Map<String, dynamic> json) =>
    _$CodeNameImpl(
      code:
          json['code'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['code']),
      name:
          json['name'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['name']),
    );

Map<String, dynamic> _$$CodeNameImplToJson(_$CodeNameImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
    };

_$BudgetResponseImpl _$$BudgetResponseImplFromJson(Map<String, dynamic> json) =>
    _$BudgetResponseImpl(
      apiVersion:
          json['api_version'] == null
              ? 'unknown'
              : const SafeStringConverter().fromJson(json['api_version']),
      resultsAvailable:
          json['results_available'] == null
              ? 0
              : const SafeIntConverter().fromJson(json['results_available']),
      resultsReturned:
          json['results_returned'] == null
              ? 0
              : const SafeIntConverter().fromJson(json['results_returned']),
      resultsStart:
          json['results_start'] == null
              ? 0
              : const SafeIntConverter().fromJson(json['results_start']),
      budgets:
          (json['budget'] as List<dynamic>?)
              ?.map((e) => CodeName.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$BudgetResponseImplToJson(
  _$BudgetResponseImpl instance,
) => <String, dynamic>{
  'api_version': const SafeStringConverter().toJson(instance.apiVersion),
  'results_available': const SafeIntConverter().toJson(
    instance.resultsAvailable,
  ),
  'results_returned': const SafeIntConverter().toJson(instance.resultsReturned),
  'results_start': const SafeIntConverter().toJson(instance.resultsStart),
  'budget': instance.budgets,
};

_$ServiceAreaImpl _$$ServiceAreaImplFromJson(Map<String, dynamic> json) =>
    _$ServiceAreaImpl(
      code:
          json['code'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['code']),
      name:
          json['name'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['name']),
      largeServiceArea: CodeName.fromJson(
        json['large_service_area'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$ServiceAreaImplToJson(_$ServiceAreaImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'large_service_area': instance.largeServiceArea,
    };

_$LargeAreaImpl _$$LargeAreaImplFromJson(Map<String, dynamic> json) =>
    _$LargeAreaImpl(
      code:
          json['code'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['code']),
      name:
          json['name'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['name']),
      serviceArea: CodeName.fromJson(
        json['service_area'] as Map<String, dynamic>,
      ),
      largeServiceArea: CodeName.fromJson(
        json['large_service_area'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$LargeAreaImplToJson(_$LargeAreaImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'service_area': instance.serviceArea,
      'large_service_area': instance.largeServiceArea,
    };

_$MiddleAreaImpl _$$MiddleAreaImplFromJson(Map<String, dynamic> json) =>
    _$MiddleAreaImpl(
      code:
          json['code'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['code']),
      name:
          json['name'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['name']),
      largeArea: CodeName.fromJson(json['large_area'] as Map<String, dynamic>),
      serviceArea: CodeName.fromJson(
        json['service_area'] as Map<String, dynamic>,
      ),
      largeServiceArea: CodeName.fromJson(
        json['large_service_area'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$MiddleAreaImplToJson(_$MiddleAreaImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'large_area': instance.largeArea,
      'service_area': instance.serviceArea,
      'large_service_area': instance.largeServiceArea,
    };

_$SmallAreaImpl _$$SmallAreaImplFromJson(
  Map<String, dynamic> json,
) => _$SmallAreaImpl(
  code:
      json['code'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['code']),
  name:
      json['name'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['name']),
  middleArea: CodeName.fromJson(json['middle_area'] as Map<String, dynamic>),
  largeArea: CodeName.fromJson(json['large_area'] as Map<String, dynamic>),
  serviceArea: CodeName.fromJson(json['service_area'] as Map<String, dynamic>),
  largeServiceArea: CodeName.fromJson(
    json['large_service_area'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$SmallAreaImplToJson(_$SmallAreaImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'middle_area': instance.middleArea,
      'large_area': instance.largeArea,
      'service_area': instance.serviceArea,
      'large_service_area': instance.largeServiceArea,
    };
