import '../common_enums.dart';

/// Hotpepper Gourmet Search API Request 파라미터
class GourmetSearchRequest {
  /// 필수 파라미터 (API key는 HotPepperEndpoints에서 자동 추가)

  /// 기본 검색 파라미터
  final List<String>? id; // 店舗ID (최대 20개)
  final String? name; // 掲載店名
  final String? nameKana; // 掲載店名かな
  final String? nameAny; // 掲載店名 OR かな
  final String? tel; // 電話番号 (하이픈 없는 반각숫자)
  final String? address; // 住所

  /// 위치 검색 파라미터
  final double? lat; // 緯度
  final double? lng; // 経度
  final SearchRange? range; // 検索範囲
  final Datum? datum; // 測地系

  /// 지역 검색 파라미터
  final String? largeServiceArea; // 大サービスエリアコード
  final List<String>? serviceArea; // サービスエリアコード (최대 3개)
  final List<String>? largeArea; // 大エリアコード (최대 3개)
  final List<String>? middleArea; // 中エリアコード (최대 5개)
  final List<String>? smallArea; // 小エリアコード (최대 5개)

  /// 키워드 검색
  final List<String>? keyword; // キーワード (스페이스로 AND 검색)

  /// 특집 관련
  final List<String>? special; // 特集 (AND)
  final List<String>? specialOr; // 特集 (OR)
  final List<String>? specialCategory; // 特集カテゴリ (AND)
  final List<String>? specialCategoryOr; // 特集カテゴリ (OR)

  /// 장르 및 예산
  final List<String>? genre; // お店ジャンルコード
  final List<String>? budget; // 検索用ディナー予算コード (최대 2개)

  /// 수용 인원
  final int? partyCapacity; // 宴会収容人数

  /// Boolean 필터들 (0: 필터 안함, 1: 필터 적용)
  final BooleanFilter? wifi; // WiFi有無
  final BooleanFilter? wedding; // ウェディング二次会等
  final BooleanFilter? course; // コースあり
  final BooleanFilter? freeDrink; // 飲み放題
  final BooleanFilter? freeFood; // 食べ放題
  final BooleanFilter? privateRoom; // 個室あり
  final BooleanFilter? horigotatsu; // 掘りごたつあり
  final BooleanFilter? tatami; // 座敷あり
  final BooleanFilter? cocktail; // カクテル充実
  final BooleanFilter? shochu; // 焼酎充実
  final BooleanFilter? sake; // 日本酒充実
  final BooleanFilter? wine; // ワイン充実
  final BooleanFilter? card; // カード可
  final BooleanFilter? nonSmoking; // 禁煙席
  final BooleanFilter? charter; // 貸切
  final BooleanFilter? ktai; // 携帯電話OK
  final BooleanFilter? parking; // 駐車場あり
  final BooleanFilter? barrierFree; // バリアフリー
  final BooleanFilter? sommelier; // ソムリエがいる
  final BooleanFilter? nightView; // 夜景がキレイ
  final BooleanFilter? openAir; // オープンエア
  final BooleanFilter? show; // ライブ・ショーあり
  final BooleanFilter? equipment; // エンタメ設備
  final BooleanFilter? karaoke; // カラオケあり
  final BooleanFilter? band; // バンド演奏可
  final BooleanFilter? tv; // TV・プロジェクター
  final BooleanFilter? lunch; // ランチあり
  final BooleanFilter? midnight; // 23時以降も営業
  final BooleanFilter? midnightMeal; // 23時以降食事OK
  final BooleanFilter? english; // 英語メニューあり
  final BooleanFilter? pet; // ペット可
  final BooleanFilter? child; // お子様連れOK

  /// 기타 파라미터
  final KtaiCoupon? ktaiCoupon; // 携帯クーポン掲載
  final List<String>? creditCard; // クレジットカード
  final OutputType? type; // 出力タイプ
  final SortOrder? order; // ソート順
  final int? start; // 検索の開始位置
  final int? count; // 1ページあたりの取得数
  final ResponseFormat? format; // レスポンス形式

  const GourmetSearchRequest({
    this.id,
    this.name,
    this.nameKana,
    this.nameAny,
    this.tel,
    this.address,
    this.lat,
    this.lng,
    this.range,
    this.datum,
    this.largeServiceArea,
    this.serviceArea,
    this.largeArea,
    this.middleArea,
    this.smallArea,
    this.keyword,
    this.special,
    this.specialOr,
    this.specialCategory,
    this.specialCategoryOr,
    this.genre,
    this.budget,
    this.partyCapacity,
    this.wifi,
    this.wedding,
    this.course,
    this.freeDrink,
    this.freeFood,
    this.privateRoom,
    this.horigotatsu,
    this.tatami,
    this.cocktail,
    this.shochu,
    this.sake,
    this.wine,
    this.card,
    this.nonSmoking,
    this.charter,
    this.ktai,
    this.parking,
    this.barrierFree,
    this.sommelier,
    this.nightView,
    this.openAir,
    this.show,
    this.equipment,
    this.karaoke,
    this.band,
    this.tv,
    this.lunch,
    this.midnight,
    this.midnightMeal,
    this.english,
    this.pet,
    this.child,
    this.ktaiCoupon,
    this.creditCard,
    this.type,
    this.order,
    this.start,
    this.count,
    this.format,
  });

  /// HTTP Query Parameter로 변환
  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};

    // 기본 검색 파라미터
    if (id != null && id!.isNotEmpty) {
      params['id'] = id!.take(20).join(','); // 최대 20개
    }
    if (name != null) params['name'] = name!;
    if (nameKana != null) params['name_kana'] = nameKana!;
    if (nameAny != null) params['name_any'] = nameAny!;
    if (tel != null) params['tel'] = tel!;
    if (address != null) params['address'] = address!;

    // 위치 검색 파라미터
    if (lat != null) params['lat'] = lat!.toString();
    if (lng != null) params['lng'] = lng!.toString();
    if (range != null) params['range'] = range!.value.toString();
    if (datum != null) params['datum'] = datum!.value;

    // 지역 검색 파라미터
    if (largeServiceArea != null)
      params['large_service_area'] = largeServiceArea!;
    if (serviceArea != null && serviceArea!.isNotEmpty) {
      params['service_area'] = serviceArea!
          .take(3)
          .join(','); // 최대 3개
    }
    if (largeArea != null && largeArea!.isNotEmpty) {
      params['large_area'] = largeArea!.take(3).join(','); // 최대 3개
    }
    if (middleArea != null && middleArea!.isNotEmpty) {
      params['middle_area'] = middleArea!.take(5).join(','); // 최대 5개
    }
    if (smallArea != null && smallArea!.isNotEmpty) {
      params['small_area'] = smallArea!.take(5).join(','); // 최대 5개
    }

    // 키워드 검색
    if (keyword != null && keyword!.isNotEmpty) {
      params['keyword'] = keyword!.join(' '); // 스페이스로 AND 검색
    }

    // 특집 관련
    if (special != null && special!.isNotEmpty) {
      params['special'] = special!.join(',');
    }
    if (specialOr != null && specialOr!.isNotEmpty) {
      params['special_or'] = specialOr!.join(',');
    }
    if (specialCategory != null && specialCategory!.isNotEmpty) {
      params['special_category'] = specialCategory!.join(',');
    }
    if (specialCategoryOr != null && specialCategoryOr!.isNotEmpty) {
      params['special_category_or'] = specialCategoryOr!.join(',');
    }

    // 장르 및 예산
    if (genre != null && genre!.isNotEmpty) {
      params['genre'] = genre!.join(',');
    }
    if (budget != null && budget!.isNotEmpty) {
      params['budget'] = budget!.take(2).join(','); // 최대 2개
    }

    // 수용 인원
    if (partyCapacity != null) {
      params['party_capacity'] = partyCapacity!.toString();
    }

    // Boolean 필터들
    if (wifi != null) params['wifi'] = wifi!.value.toString();
    if (wedding != null)
      params['wedding'] = wedding!.value.toString();
    if (course != null) params['course'] = course!.value.toString();
    if (freeDrink != null)
      params['free_drink'] = freeDrink!.value.toString();
    if (freeFood != null)
      params['free_food'] = freeFood!.value.toString();
    if (privateRoom != null)
      params['private_room'] = privateRoom!.value.toString();
    if (horigotatsu != null)
      params['horigotatsu'] = horigotatsu!.value.toString();
    if (tatami != null) params['tatami'] = tatami!.value.toString();
    if (cocktail != null)
      params['cocktail'] = cocktail!.value.toString();
    if (shochu != null) params['shochu'] = shochu!.value.toString();
    if (sake != null) params['sake'] = sake!.value.toString();
    if (wine != null) params['wine'] = wine!.value.toString();
    if (card != null) params['card'] = card!.value.toString();
    if (nonSmoking != null)
      params['non_smoking'] = nonSmoking!.value.toString();
    if (charter != null)
      params['charter'] = charter!.value.toString();
    if (ktai != null) params['ktai'] = ktai!.value.toString();
    if (parking != null)
      params['parking'] = parking!.value.toString();
    if (barrierFree != null)
      params['barrier_free'] = barrierFree!.value.toString();
    if (sommelier != null)
      params['sommelier'] = sommelier!.value.toString();
    if (nightView != null)
      params['night_view'] = nightView!.value.toString();
    if (openAir != null)
      params['open_air'] = openAir!.value.toString();
    if (show != null) params['show'] = show!.value.toString();
    if (equipment != null)
      params['equipment'] = equipment!.value.toString();
    if (karaoke != null)
      params['karaoke'] = karaoke!.value.toString();
    if (band != null) params['band'] = band!.value.toString();
    if (tv != null) params['tv'] = tv!.value.toString();
    if (lunch != null) params['lunch'] = lunch!.value.toString();
    if (midnight != null)
      params['midnight'] = midnight!.value.toString();
    if (midnightMeal != null)
      params['midnight_meal'] = midnightMeal!.value.toString();
    if (english != null)
      params['english'] = english!.value.toString();
    if (pet != null) params['pet'] = pet!.value.toString();
    if (child != null) params['child'] = child!.value.toString();

    // 기타 파라미터
    if (ktaiCoupon != null)
      params['ktai_coupon'] = ktaiCoupon!.value.toString();
    if (creditCard != null && creditCard!.isNotEmpty) {
      params['credit_card'] = creditCard!.join(',');
    }
    if (type != null) params['type'] = type!.value;
    if (order != null) params['order'] = order!.value.toString();
    if (start != null) params['start'] = start!.toString();
    if (count != null) params['count'] = count!.toString();
    if (format != null) params['format'] = format!.value;

    return params;
  }

  /// copyWith 메서드
  GourmetSearchRequest copyWith({
    List<String>? id,
    String? name,
    String? nameKana,
    String? nameAny,
    String? tel,
    String? address,
    double? lat,
    double? lng,
    SearchRange? range,
    Datum? datum,
    String? largeServiceArea,
    List<String>? serviceArea,
    List<String>? largeArea,
    List<String>? middleArea,
    List<String>? smallArea,
    List<String>? keyword,
    List<String>? special,
    List<String>? specialOr,
    List<String>? specialCategory,
    List<String>? specialCategoryOr,
    List<String>? genre,
    List<String>? budget,
    int? partyCapacity,
    BooleanFilter? wifi,
    BooleanFilter? wedding,
    BooleanFilter? course,
    BooleanFilter? freeDrink,
    BooleanFilter? freeFood,
    BooleanFilter? privateRoom,
    BooleanFilter? horigotatsu,
    BooleanFilter? tatami,
    BooleanFilter? cocktail,
    BooleanFilter? shochu,
    BooleanFilter? sake,
    BooleanFilter? wine,
    BooleanFilter? card,
    BooleanFilter? nonSmoking,
    BooleanFilter? charter,
    BooleanFilter? ktai,
    BooleanFilter? parking,
    BooleanFilter? barrierFree,
    BooleanFilter? sommelier,
    BooleanFilter? nightView,
    BooleanFilter? openAir,
    BooleanFilter? show,
    BooleanFilter? equipment,
    BooleanFilter? karaoke,
    BooleanFilter? band,
    BooleanFilter? tv,
    BooleanFilter? lunch,
    BooleanFilter? midnight,
    BooleanFilter? midnightMeal,
    BooleanFilter? english,
    BooleanFilter? pet,
    BooleanFilter? child,
    KtaiCoupon? ktaiCoupon,
    List<String>? creditCard,
    OutputType? type,
    SortOrder? order,
    int? start,
    int? count,
    ResponseFormat? format,
  }) {
    return GourmetSearchRequest(
      id: id ?? this.id,
      name: name ?? this.name,
      nameKana: nameKana ?? this.nameKana,
      nameAny: nameAny ?? this.nameAny,
      tel: tel ?? this.tel,
      address: address ?? this.address,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      range: range ?? this.range,
      datum: datum ?? this.datum,
      largeServiceArea: largeServiceArea ?? this.largeServiceArea,
      serviceArea: serviceArea ?? this.serviceArea,
      largeArea: largeArea ?? this.largeArea,
      middleArea: middleArea ?? this.middleArea,
      smallArea: smallArea ?? this.smallArea,
      keyword: keyword ?? this.keyword,
      special: special ?? this.special,
      specialOr: specialOr ?? this.specialOr,
      specialCategory: specialCategory ?? this.specialCategory,
      specialCategoryOr: specialCategoryOr ?? this.specialCategoryOr,
      genre: genre ?? this.genre,
      budget: budget ?? this.budget,
      partyCapacity: partyCapacity ?? this.partyCapacity,
      wifi: wifi ?? this.wifi,
      wedding: wedding ?? this.wedding,
      course: course ?? this.course,
      freeDrink: freeDrink ?? this.freeDrink,
      freeFood: freeFood ?? this.freeFood,
      privateRoom: privateRoom ?? this.privateRoom,
      horigotatsu: horigotatsu ?? this.horigotatsu,
      tatami: tatami ?? this.tatami,
      cocktail: cocktail ?? this.cocktail,
      shochu: shochu ?? this.shochu,
      sake: sake ?? this.sake,
      wine: wine ?? this.wine,
      card: card ?? this.card,
      nonSmoking: nonSmoking ?? this.nonSmoking,
      charter: charter ?? this.charter,
      ktai: ktai ?? this.ktai,
      parking: parking ?? this.parking,
      barrierFree: barrierFree ?? this.barrierFree,
      sommelier: sommelier ?? this.sommelier,
      nightView: nightView ?? this.nightView,
      openAir: openAir ?? this.openAir,
      show: show ?? this.show,
      equipment: equipment ?? this.equipment,
      karaoke: karaoke ?? this.karaoke,
      band: band ?? this.band,
      tv: tv ?? this.tv,
      lunch: lunch ?? this.lunch,
      midnight: midnight ?? this.midnight,
      midnightMeal: midnightMeal ?? this.midnightMeal,
      english: english ?? this.english,
      pet: pet ?? this.pet,
      child: child ?? this.child,
      ktaiCoupon: ktaiCoupon ?? this.ktaiCoupon,
      creditCard: creditCard ?? this.creditCard,
      type: type ?? this.type,
      order: order ?? this.order,
      start: start ?? this.start,
      count: count ?? this.count,
      format: format ?? this.format,
    );
  }
}
