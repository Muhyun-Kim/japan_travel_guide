// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizedGenreImpl _$$LocalizedGenreImplFromJson(Map<String, dynamic> json) =>
    _$LocalizedGenreImpl(
      code: json['code'] as String,
      nameJa: json['nameJa'] as String,
      nameKo: json['nameKo'] as String,
      isPopular: json['isPopular'] as bool? ?? false,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$LocalizedGenreImplToJson(
  _$LocalizedGenreImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'nameJa': instance.nameJa,
  'nameKo': instance.nameKo,
  'isPopular': instance.isPopular,
  'sortOrder': instance.sortOrder,
};
