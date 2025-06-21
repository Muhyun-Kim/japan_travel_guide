/// 장르 모델
class Genre {
  final String code;
  final String name;
  final String? catchPhrase;

  const Genre({
    required this.code,
    required this.name,
    this.catchPhrase,
  });

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      code: json['code'] as String,
      name: json['name'] as String,
      catchPhrase: json['catch'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      if (catchPhrase != null) 'catch': catchPhrase,
    };
  }

  @override
  String toString() =>
      'Genre(code: $code, name: $name, catchPhrase: $catchPhrase)';
}

/// 서브장르 모델
class SubGenre {
  final String code;
  final String name;

  const SubGenre({required this.code, required this.name});

  factory SubGenre.fromJson(Map<String, dynamic> json) {
    return SubGenre(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'code': code, 'name': name};
  }

  @override
  String toString() => 'SubGenre(code: $code, name: $name)';
}

/// 예산 모델
class Budget {
  final String code;
  final String name;
  final String? average;

  const Budget({
    required this.code,
    required this.name,
    this.average,
  });

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      code: json['code'] as String,
      name: json['name'] as String,
      average: json['average'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      if (average != null) 'average': average,
    };
  }

  @override
  String toString() =>
      'Budget(code: $code, name: $name, average: $average)';
}

/// 사진 모델 - PC용
class PhotoPc {
  final String l; // 대형
  final String m; // 중형
  final String s; // 소형

  const PhotoPc({required this.l, required this.m, required this.s});

  factory PhotoPc.fromJson(Map<String, dynamic> json) {
    return PhotoPc(
      l: json['l'] as String,
      m: json['m'] as String,
      s: json['s'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'l': l, 'm': m, 's': s};
  }

  @override
  String toString() => 'PhotoPc(l: $l, m: $m, s: $s)';
}

/// 사진 모델 - 모바일용
class PhotoMobile {
  final String l; // 대형
  final String s; // 소형

  const PhotoMobile({required this.l, required this.s});

  factory PhotoMobile.fromJson(Map<String, dynamic> json) {
    return PhotoMobile(
      l: json['l'] as String,
      s: json['s'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'l': l, 's': s};
  }

  @override
  String toString() => 'PhotoMobile(l: $l, s: $s)';
}

/// 사진 모델
class Photo {
  final PhotoPc pc;
  final PhotoMobile? mobile;

  const Photo({required this.pc, this.mobile});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      pc: PhotoPc.fromJson(json['pc'] as Map<String, dynamic>),
      mobile:
          json['mobile'] != null
              ? PhotoMobile.fromJson(
                json['mobile'] as Map<String, dynamic>,
              )
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pc': pc.toJson(),
      if (mobile != null) 'mobile': mobile!.toJson(),
    };
  }

  @override
  String toString() => 'Photo(pc: $pc, mobile: $mobile)';
}

/// URL 모델
class ShopUrls {
  final String pc;

  const ShopUrls({required this.pc});

  factory ShopUrls.fromJson(Map<String, dynamic> json) {
    return ShopUrls(pc: json['pc'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'pc': pc};
  }

  @override
  String toString() => 'ShopUrls(pc: $pc)';
}

/// 쿠폰 URL 모델
class CouponUrls {
  final String? pc;
  final String? sp; // 스마트폰용

  const CouponUrls({this.pc, this.sp});

  factory CouponUrls.fromJson(Map<String, dynamic> json) {
    return CouponUrls(
      pc: json['pc'] as String?,
      sp: json['sp'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {if (pc != null) 'pc': pc, if (sp != null) 'sp': sp};
  }

  @override
  String toString() => 'CouponUrls(pc: $pc, sp: $sp)';
}

/// 특집 카테고리 모델
class SpecialCategory {
  final String code;
  final String name;

  const SpecialCategory({required this.code, required this.name});

  factory SpecialCategory.fromJson(Map<String, dynamic> json) {
    return SpecialCategory(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'code': code, 'name': name};
  }

  @override
  String toString() => 'SpecialCategory(code: $code, name: $name)';
}

/// 특집 모델
class Special {
  final String code;
  final String name;
  final SpecialCategory specialCategory;
  final String? title; // 점포별 특집 관련 캐치카피

  const Special({
    required this.code,
    required this.name,
    required this.specialCategory,
    this.title,
  });

  factory Special.fromJson(Map<String, dynamic> json) {
    return Special(
      code: json['code'] as String,
      name: json['name'] as String,
      specialCategory: SpecialCategory.fromJson(
        json['special_category'] as Map<String, dynamic>,
      ),
      title: json['title'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'special_category': specialCategory.toJson(),
      if (title != null) 'title': title,
    };
  }

  @override
  String toString() =>
      'Special(code: $code, name: $name, title: $title)';
}

/// 신용카드 모델
class CreditCard {
  final String code;
  final String name;

  const CreditCard({required this.code, required this.name});

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'code': code, 'name': name};
  }

  @override
  String toString() => 'CreditCard(code: $code, name: $name)';
}
