// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BudgetImpl _$$BudgetImplFromJson(Map<String, dynamic> json) => _$BudgetImpl(
  code:
      json['code'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['code']),
  name:
      json['name'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['name']),
);

Map<String, dynamic> _$$BudgetImplToJson(_$BudgetImpl instance) =>
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
              ?.map((e) => Budget.fromJson(e as Map<String, dynamic>))
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

_$LargeServiceAreaImpl _$$LargeServiceAreaImplFromJson(
  Map<String, dynamic> json,
) => _$LargeServiceAreaImpl(
  code:
      json['code'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['code']),
  name:
      json['name'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['name']),
);

Map<String, dynamic> _$$LargeServiceAreaImplToJson(
  _$LargeServiceAreaImpl instance,
) => <String, dynamic>{
  'code': const SafeStringConverter().toJson(instance.code),
  'name': const SafeStringConverter().toJson(instance.name),
};

_$LargeServiceAreaResponseImpl _$$LargeServiceAreaResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LargeServiceAreaResponseImpl(
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
  largeServiceAreas:
      (json['large_service_area'] as List<dynamic>?)
          ?.map((e) => LargeServiceArea.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$$LargeServiceAreaResponseImplToJson(
  _$LargeServiceAreaResponseImpl instance,
) => <String, dynamic>{
  'api_version': const SafeStringConverter().toJson(instance.apiVersion),
  'results_available': const SafeIntConverter().toJson(
    instance.resultsAvailable,
  ),
  'results_returned': const SafeIntConverter().toJson(instance.resultsReturned),
  'results_start': const SafeIntConverter().toJson(instance.resultsStart),
  'large_service_area': instance.largeServiceAreas,
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
      largeServiceArea: LargeServiceArea.fromJson(
        json['large_service_area'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$ServiceAreaImplToJson(_$ServiceAreaImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'large_service_area': instance.largeServiceArea,
    };

_$ServiceAreaResponseImpl _$$ServiceAreaResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ServiceAreaResponseImpl(
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
  serviceAreas:
      (json['service_area'] as List<dynamic>?)
          ?.map((e) => ServiceArea.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$$ServiceAreaResponseImplToJson(
  _$ServiceAreaResponseImpl instance,
) => <String, dynamic>{
  'api_version': const SafeStringConverter().toJson(instance.apiVersion),
  'results_available': const SafeIntConverter().toJson(
    instance.resultsAvailable,
  ),
  'results_returned': const SafeIntConverter().toJson(instance.resultsReturned),
  'results_start': const SafeIntConverter().toJson(instance.resultsStart),
  'service_area': instance.serviceAreas,
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
      serviceArea: ServiceArea.fromJson(
        json['service_area'] as Map<String, dynamic>,
      ),
      largeServiceArea: LargeServiceArea.fromJson(
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

_$LargeAreaResponseImpl _$$LargeAreaResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LargeAreaResponseImpl(
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
  largeAreas:
      (json['large_area'] as List<dynamic>?)
          ?.map((e) => LargeArea.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$$LargeAreaResponseImplToJson(
  _$LargeAreaResponseImpl instance,
) => <String, dynamic>{
  'api_version': const SafeStringConverter().toJson(instance.apiVersion),
  'results_available': const SafeIntConverter().toJson(
    instance.resultsAvailable,
  ),
  'results_returned': const SafeIntConverter().toJson(instance.resultsReturned),
  'results_start': const SafeIntConverter().toJson(instance.resultsStart),
  'large_area': instance.largeAreas,
};
