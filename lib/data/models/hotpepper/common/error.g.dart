// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
  message:
      json['message'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['message']),
  code:
      json['code'] == null
          ? 0
          : const SafeIntConverter().fromJson(json['code']),
);

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'message': const SafeStringConverter().toJson(instance.message),
      'code': const SafeIntConverter().toJson(instance.code),
    };

_$HotPepperErrorImpl _$$HotPepperErrorImplFromJson(Map<String, dynamic> json) =>
    _$HotPepperErrorImpl(
      apiVersion:
          json['api_version'] == null
              ? 'unknown'
              : const SafeStringConverter().fromJson(json['api_version']),
      error: Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotPepperErrorImplToJson(
  _$HotPepperErrorImpl instance,
) => <String, dynamic>{
  'api_version': const SafeStringConverter().toJson(instance.apiVersion),
  'error': instance.error,
};
