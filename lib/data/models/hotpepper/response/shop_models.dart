import 'dart:core';

import 'area_models.dart';
import 'base_models.dart';

/// 그루메 검색 결과 Shop 모델
class Shop {
  // 기본 정보
  final String id;
  final String name;
  final String? logoImage;
  final String? nameKana;
  final String address;
  final String? stationName;
  final int ktaiCoupon; // 0: 있음, 1: 없음

  // 지역 정보
  final LargeServiceArea largeServiceArea;
  final ServiceArea serviceArea;
  final LargeArea largeArea;
  final MiddleArea middleArea;
  final SmallArea smallArea;

  // 좌표 정보
  final double lat;
  final double lng;

  // 장르 정보
  final Genre genre;
  final SubGenre? subGenre;

  // 예산 정보
  final Budget budget;
  final String? budgetMemo;

  // 기본 설명
  final String catchPhrase;
  final int? capacity;
  final String access;
  final String? mobileAccess;

  // URL 및 사진
  final ShopUrls urls;
  final Photo photo;
  final CouponUrls? couponUrls;

  // 영업 정보
  final String? open;
  final String? close;
  final int? partyCapacity;

  // 시설 정보 (String 타입으로 반환됨)
  final String? wifi;
  final String? wedding;
  final String? course;
  final String? freeDrink;
  final String? freeFood;
  final String? privateRoom;
  final String? horigotatsu;
  final String? tatami;
  final String? card;
  final String? nonSmoking;
  final String? charter;
  final String? ktai;
  final String? parking;
  final String? barrierFree;
  final String? otherMemo;

  // 추가 서비스
  final String? sommelier;
  final String? openAir;
  final String? show;
  final String? equipment;
  final String? karaoke;
  final String? band;
  final String? tv;
  final String? english;
  final String? pet;
  final String? child;
  final String? lunch;
  final String? midnight;
  final String? shopDetailMemo;

  // 선택적 정보 (type 파라미터에 따라 포함)
  final List<Special>? specials;
  final List<CreditCard>? creditCards;

  const Shop({
    required this.id,
    required this.name,
    this.logoImage,
    this.nameKana,
    required this.address,
    this.stationName,
    required this.ktaiCoupon,
    required this.largeServiceArea,
    required this.serviceArea,
    required this.largeArea,
    required this.middleArea,
    required this.smallArea,
    required this.lat,
    required this.lng,
    required this.genre,
    this.subGenre,
    required this.budget,
    this.budgetMemo,
    required this.catchPhrase,
    this.capacity,
    required this.access,
    this.mobileAccess,
    required this.urls,
    required this.photo,
    this.couponUrls,
    this.open,
    this.close,
    this.partyCapacity,
    this.wifi,
    this.wedding,
    this.course,
    this.freeDrink,
    this.freeFood,
    this.privateRoom,
    this.horigotatsu,
    this.tatami,
    this.card,
    this.nonSmoking,
    this.charter,
    this.ktai,
    this.parking,
    this.barrierFree,
    this.otherMemo,
    this.sommelier,
    this.openAir,
    this.show,
    this.equipment,
    this.karaoke,
    this.band,
    this.tv,
    this.english,
    this.pet,
    this.child,
    this.lunch,
    this.midnight,
    this.shopDetailMemo,
    this.specials,
    this.creditCards,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      // 기본 정보
      id: json['id'] as String,
      name: json['name'] as String,
      logoImage: json['logo_image'] as String?,
      nameKana: json['name_kana'] as String?,
      address: json['address'] as String,
      stationName: json['station_name'] as String?,
      ktaiCoupon: json['ktai_coupon'] as int,

      // 지역 정보
      largeServiceArea: LargeServiceArea.fromJson(
        json['large_service_area'] as Map<String, dynamic>,
      ),
      serviceArea: ServiceArea.fromJson(
        json['service_area'] as Map<String, dynamic>,
      ),
      largeArea: LargeArea.fromJson(
        json['large_area'] as Map<String, dynamic>,
      ),
      middleArea: MiddleArea.fromJson(
        json['middle_area'] as Map<String, dynamic>,
      ),
      smallArea: SmallArea.fromJson(
        json['small_area'] as Map<String, dynamic>,
      ),

      // 좌표 정보
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),

      // 장르 정보
      genre: Genre.fromJson(json['genre'] as Map<String, dynamic>),
      subGenre:
          json['sub_genre'] != null
              ? SubGenre.fromJson(
                json['sub_genre'] as Map<String, dynamic>,
              )
              : null,

      // 예산 정보
      budget: Budget.fromJson(json['budget'] as Map<String, dynamic>),
      budgetMemo: json['budget_memo'] as String?,

      // 기본 설명
      catchPhrase: json['catch'] as String,
      capacity: json['capacity'] as int?,
      access: json['access'] as String,
      mobileAccess: json['mobile_access'] as String?,

      // URL 및 사진
      urls: ShopUrls.fromJson(json['urls'] as Map<String, dynamic>),
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      couponUrls:
          json['coupon_urls'] != null
              ? CouponUrls.fromJson(
                json['coupon_urls'] as Map<String, dynamic>,
              )
              : null,

      // 영업 정보
      open: json['open'] as String?,
      close: json['close'] as String?,
      partyCapacity: json['party_capacity'] as int?,

      // 시설 정보
      wifi: json['wifi'] as String?,
      wedding: json['wedding'] as String?,
      course: json['course'] as String?,
      freeDrink: json['free_drink'] as String?,
      freeFood: json['free_food'] as String?,
      privateRoom: json['private_room'] as String?,
      horigotatsu: json['horigotatsu'] as String?,
      tatami: json['tatami'] as String?,
      card: json['card'] as String?,
      nonSmoking: json['non_smoking'] as String?,
      charter: json['charter'] as String?,
      ktai: json['ktai'] as String?,
      parking: json['parking'] as String?,
      barrierFree: json['barrier_free'] as String?,
      otherMemo: json['other_memo'] as String?,

      // 추가 서비스
      sommelier: json['sommelier'] as String?,
      openAir: json['open_air'] as String?,
      show: json['show'] as String?,
      equipment: json['equipment'] as String?,
      karaoke: json['karaoke'] as String?,
      band: json['band'] as String?,
      tv: json['tv'] as String?,
      english: json['english'] as String?,
      pet: json['pet'] as String?,
      child: json['child'] as String?,
      lunch: json['lunch'] as String?,
      midnight: json['midnight'] as String?,
      shopDetailMemo: json['shop_detail_memo'] as String?,

      // 선택적 정보
      specials:
          json['special'] != null
              ? (json['special'] as List<dynamic>)
                  .map(
                    (item) => Special.fromJson(
                      item as Map<String, dynamic>,
                    ),
                  )
                  .toList()
              : null,
      creditCards:
          json['credit_card'] != null
              ? (json['credit_card'] as List<dynamic>)
                  .map(
                    (item) => CreditCard.fromJson(
                      item as Map<String, dynamic>,
                    ),
                  )
                  .toList()
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      if (logoImage != null) 'logo_image': logoImage,
      if (nameKana != null) 'name_kana': nameKana,
      'address': address,
      if (stationName != null) 'station_name': stationName,
      'ktai_coupon': ktaiCoupon,
      'large_service_area': largeServiceArea.toJson(),
      'service_area': serviceArea.toJson(),
      'large_area': largeArea.toJson(),
      'middle_area': middleArea.toJson(),
      'small_area': smallArea.toJson(),
      'lat': lat,
      'lng': lng,
      'genre': genre.toJson(),
      if (subGenre != null) 'sub_genre': subGenre!.toJson(),
      'budget': budget.toJson(),
      if (budgetMemo != null) 'budget_memo': budgetMemo,
      'catch': catchPhrase,
      if (capacity != null) 'capacity': capacity,
      'access': access,
      if (mobileAccess != null) 'mobile_access': mobileAccess,
      'urls': urls.toJson(),
      'photo': photo.toJson(),
      if (couponUrls != null) 'coupon_urls': couponUrls!.toJson(),
      if (open != null) 'open': open,
      if (close != null) 'close': close,
      if (partyCapacity != null) 'party_capacity': partyCapacity,
      if (wifi != null) 'wifi': wifi,
      if (wedding != null) 'wedding': wedding,
      if (course != null) 'course': course,
      if (freeDrink != null) 'free_drink': freeDrink,
      if (freeFood != null) 'free_food': freeFood,
      if (privateRoom != null) 'private_room': privateRoom,
      if (horigotatsu != null) 'horigotatsu': horigotatsu,
      if (tatami != null) 'tatami': tatami,
      if (card != null) 'card': card,
      if (nonSmoking != null) 'non_smoking': nonSmoking,
      if (charter != null) 'charter': charter,
      if (ktai != null) 'ktai': ktai,
      if (parking != null) 'parking': parking,
      if (barrierFree != null) 'barrier_free': barrierFree,
      if (otherMemo != null) 'other_memo': otherMemo,
      if (sommelier != null) 'sommelier': sommelier,
      if (openAir != null) 'open_air': openAir,
      if (show != null) 'show': show,
      if (equipment != null) 'equipment': equipment,
      if (karaoke != null) 'karaoke': karaoke,
      if (band != null) 'band': band,
      if (tv != null) 'tv': tv,
      if (english != null) 'english': english,
      if (pet != null) 'pet': pet,
      if (child != null) 'child': child,
      if (lunch != null) 'lunch': lunch,
      if (midnight != null) 'midnight': midnight,
      if (shopDetailMemo != null) 'shop_detail_memo': shopDetailMemo,
      if (specials != null)
        'special': specials!.map((item) => item.toJson()).toList(),
      if (creditCards != null)
        'credit_card':
            creditCards!.map((item) => item.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'Shop(id: $id, name: $name, address: $address, genre: ${genre.name})';
  }
}

/// Shop Name Search용 간단한 Shop 모델
class SimpleShop {
  final String id;
  final String name;
  final String? nameKana;
  final String address;
  final Genre genre;
  final ShopUrls urls;
  final int desc; // 0: 없음, 1: 그루메 검색 API 대상 점포

  const SimpleShop({
    required this.id,
    required this.name,
    this.nameKana,
    required this.address,
    required this.genre,
    required this.urls,
    required this.desc,
  });

  factory SimpleShop.fromJson(Map<String, dynamic> json) {
    return SimpleShop(
      id: json['id'] as String,
      name: json['name'] as String,
      nameKana: json['name_kana'] as String?,
      address: json['address'] as String,
      genre: Genre.fromJson({
        'code': '',
        'name': json['genre']['name'] as String,
      }),
      urls: ShopUrls.fromJson(json['urls'] as Map<String, dynamic>),
      desc: json['desc'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      if (nameKana != null) 'name_kana': nameKana,
      'address': address,
      'genre': {'name': genre.name},
      'urls': urls.toJson(),
      'desc': desc,
    };
  }

  @override
  String toString() {
    return 'SimpleShop(id: $id, name: $name, address: $address)';
  }
}
