/// Hotpepper API 공통 enum 정의
/// Response format enum
enum ResponseFormat {
  xml('xml'),
  json('json');

  const ResponseFormat(this.value);
  final String value;
}

/// Search range enum (위치 검색 시 범위)
enum SearchRange {
  range300m(1, '300m'),
  range500m(2, '500m'),
  range1000m(3, '1000m'),
  range2000m(4, '2000m'),
  range3000m(5, '3000m');

  const SearchRange(this.value, this.description);
  final int value;
  final String description;
}

/// 측지계 enum
enum Datum {
  world('world'),
  tokyo('tokyo');

  const Datum(this.value);
  final String value;
}

/// 정렬 순서 enum (그루메 검색)
enum SortOrder {
  nameKana(1, '店名かな順'),
  genreCode(2, 'ジャンルコード順'),
  smallAreaCode(3, '小エリアコード順'),
  recommended(4, 'おススメ順');

  const SortOrder(this.value, this.description);
  final int value;
  final String description;
}

/// Output type enum (출력 타입)
enum OutputType {
  lite('lite'),
  creditCard('credit_card'),
  special('special'),
  creditCardAndSpecial('credit_card+special');

  const OutputType(this.value);
  final String value;
}

/// Boolean filter enum (0: 필터 안함, 1: 필터 적용)
enum BooleanFilter {
  none(0),
  apply(1);

  const BooleanFilter(this.value);
  final int value;
}

/// 携帯クーポン enum
enum KtaiCoupon {
  none(1, '携帯クーポンなし'),
  available(0, '携帯クーポンあり');

  const KtaiCoupon(this.value, this.description);
  final int value;
  final String description;
}
