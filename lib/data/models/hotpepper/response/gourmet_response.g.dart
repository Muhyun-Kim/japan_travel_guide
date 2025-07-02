// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gourmet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GourmetResponseImpl _$$GourmetResponseImplFromJson(
  Map<String, dynamic> json,
) => _$GourmetResponseImpl(
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
  shops:
      (json['shop'] as List<dynamic>?)
          ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$$GourmetResponseImplToJson(
  _$GourmetResponseImpl instance,
) => <String, dynamic>{
  'api_version': const SafeStringConverter().toJson(instance.apiVersion),
  'results_available': const SafeIntConverter().toJson(
    instance.resultsAvailable,
  ),
  'results_returned': const SafeIntConverter().toJson(instance.resultsReturned),
  'results_start': const SafeIntConverter().toJson(instance.resultsStart),
  'shop': instance.shops,
};

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
  id:
      json['id'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['id']),
  name:
      json['name'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['name']),
  address:
      json['address'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['address']),
  catchPhrase:
      json['catch'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['catch']),
  access:
      json['access'] == null
          ? ''
          : const SafeStringConverter().fromJson(json['access']),
  latitude:
      json['lat'] == null
          ? 0.0
          : const SafeDoubleConverter().fromJson(json['lat']),
  longitude:
      json['lng'] == null
          ? 0.0
          : const SafeDoubleConverter().fromJson(json['lng']),
  genre: ShopGenre.fromJson(json['genre'] as Map<String, dynamic>),
  budget: ShopBudget.fromJson(json['budget'] as Map<String, dynamic>),
  photo: ShopPhoto.fromJson(json['photo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': const SafeStringConverter().toJson(instance.id),
      'name': const SafeStringConverter().toJson(instance.name),
      'address': const SafeStringConverter().toJson(instance.address),
      'catch': const SafeStringConverter().toJson(instance.catchPhrase),
      'access': const SafeStringConverter().toJson(instance.access),
      'lat': const SafeDoubleConverter().toJson(instance.latitude),
      'lng': const SafeDoubleConverter().toJson(instance.longitude),
      'genre': instance.genre,
      'budget': instance.budget,
      'photo': instance.photo,
    };

_$ShopGenreImpl _$$ShopGenreImplFromJson(Map<String, dynamic> json) =>
    _$ShopGenreImpl(
      code:
          json['code'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['code']),
      name:
          json['name'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['name']),
      catchPhrase:
          json['catch'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['catch']),
    );

Map<String, dynamic> _$$ShopGenreImplToJson(_$ShopGenreImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'catch': const SafeStringConverter().toJson(instance.catchPhrase),
    };

_$ShopBudgetImpl _$$ShopBudgetImplFromJson(Map<String, dynamic> json) =>
    _$ShopBudgetImpl(
      code:
          json['code'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['code']),
      name:
          json['name'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['name']),
      average:
          json['average'] == null
              ? ''
              : const SafeStringConverter().fromJson(json['average']),
    );

Map<String, dynamic> _$$ShopBudgetImplToJson(_$ShopBudgetImpl instance) =>
    <String, dynamic>{
      'code': const SafeStringConverter().toJson(instance.code),
      'name': const SafeStringConverter().toJson(instance.name),
      'average': const SafeStringConverter().toJson(instance.average),
    };

_$ShopPhotoImpl _$$ShopPhotoImplFromJson(Map<String, dynamic> json) =>
    _$ShopPhotoImpl(
      pc: ShopPhotoUrls.fromJson(json['pc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShopPhotoImplToJson(_$ShopPhotoImpl instance) =>
    <String, dynamic>{'pc': instance.pc};

_$ShopPhotoUrlsImpl _$$ShopPhotoUrlsImplFromJson(
  Map<String, dynamic> json,
) => _$ShopPhotoUrlsImpl(
  large:
      json['l'] == null ? '' : const SafeStringConverter().fromJson(json['l']),
  medium:
      json['m'] == null ? '' : const SafeStringConverter().fromJson(json['m']),
  small:
      json['s'] == null ? '' : const SafeStringConverter().fromJson(json['s']),
);

Map<String, dynamic> _$$ShopPhotoUrlsImplToJson(_$ShopPhotoUrlsImpl instance) =>
    <String, dynamic>{
      'l': const SafeStringConverter().toJson(instance.large),
      'm': const SafeStringConverter().toJson(instance.medium),
      's': const SafeStringConverter().toJson(instance.small),
    };
