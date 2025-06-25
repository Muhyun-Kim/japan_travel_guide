// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BudgetImpl _$$BudgetImplFromJson(Map<String, dynamic> json) =>
    _$BudgetImpl(code: json['code'] as String, name: json['name'] as String);

Map<String, dynamic> _$$BudgetImplToJson(_$BudgetImpl instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};

_$BudgetResponseImpl _$$BudgetResponseImplFromJson(Map<String, dynamic> json) =>
    _$BudgetResponseImpl(
      apiVersion: json['apiVersion'] as String,
      resultsAvailable: (json['resultsAvailable'] as num).toInt(),
      resultsReturned: (json['resultsReturned'] as num).toInt(),
      resultsStart: (json['resultsStart'] as num).toInt(),
      budgets:
          (json['budgets'] as List<dynamic>)
              .map((e) => Budget.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$BudgetResponseImplToJson(
  _$BudgetResponseImpl instance,
) => <String, dynamic>{
  'apiVersion': instance.apiVersion,
  'resultsAvailable': instance.resultsAvailable,
  'resultsReturned': instance.resultsReturned,
  'resultsStart': instance.resultsStart,
  'budgets': instance.budgets,
};
