/// 대서비스지역 모델
class LargeServiceArea {
  final String code;
  final String name;

  const LargeServiceArea({
    required this.code,
    required this.name,
  });

  factory LargeServiceArea.fromJson(Map<String, dynamic> json) {
    return LargeServiceArea(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() => 'LargeServiceArea(code: $code, name: $name)';
}

/// 서비스지역 모델
class ServiceArea {
  final String code;
  final String name;

  const ServiceArea({
    required this.code,
    required this.name,
  });

  factory ServiceArea.fromJson(Map<String, dynamic> json) {
    return ServiceArea(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() => 'ServiceArea(code: $code, name: $name)';
}

/// 대지역 모델
class LargeArea {
  final String code;
  final String name;

  const LargeArea({
    required this.code,
    required this.name,
  });

  factory LargeArea.fromJson(Map<String, dynamic> json) {
    return LargeArea(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() => 'LargeArea(code: $code, name: $name)';
}

/// 중지역 모델
class MiddleArea {
  final String code;
  final String name;

  const MiddleArea({
    required this.code,
    required this.name,
  });

  factory MiddleArea.fromJson(Map<String, dynamic> json) {
    return MiddleArea(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() => 'MiddleArea(code: $code, name: $name)';
}

/// 소지역 모델
class SmallArea {
  final String code;
  final String name;

  const SmallArea({
    required this.code,
    required this.name,
  });

  factory SmallArea.fromJson(Map<String, dynamic> json) {
    return SmallArea(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() => 'SmallArea(code: $code, name: $name)';
}

/// 지역 정보를 포함한 마스터 응답 모델들
/// 대지역 마스터 응답
class LargeAreaMaster {
  final String code;
  final String name;
  final ServiceArea serviceArea;
  final LargeServiceArea largeServiceArea;

  const LargeAreaMaster({
    required this.code,
    required this.name,
    required this.serviceArea,
    required this.largeServiceArea,
  });

  factory LargeAreaMaster.fromJson(Map<String, dynamic> json) {
    return LargeAreaMaster(
      code: json['code'] as String,
      name: json['name'] as String,
      serviceArea: ServiceArea.fromJson(json['service_area'] as Map<String, dynamic>),
      largeServiceArea: LargeServiceArea.fromJson(json['large_service_area'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'service_area': serviceArea.toJson(),
      'large_service_area': largeServiceArea.toJson(),
    };
  }

  @override
  String toString() => 'LargeAreaMaster(code: $code, name: $name)';
}

/// 중지역 마스터 응답
class MiddleAreaMaster {
  final String code;
  final String name;
  final LargeArea largeArea;
  final ServiceArea serviceArea;
  final LargeServiceArea largeServiceArea;

  const MiddleAreaMaster({
    required this.code,
    required this.name,
    required this.largeArea,
    required this.serviceArea,
    required this.largeServiceArea,
  });

  factory MiddleAreaMaster.fromJson(Map<String, dynamic> json) {
    return MiddleAreaMaster(
      code: json['code'] as String,
      name: json['name'] as String,
      largeArea: LargeArea.fromJson(json['large_area'] as Map<String, dynamic>),
      serviceArea: ServiceArea.fromJson(json['service_area'] as Map<String, dynamic>),
      largeServiceArea: LargeServiceArea.fromJson(json['large_service_area'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'large_area': largeArea.toJson(),
      'service_area': serviceArea.toJson(),
      'large_service_area': largeServiceArea.toJson(),
    };
  }

  @override
  String toString() => 'MiddleAreaMaster(code: $code, name: $name)';
}

/// 소지역 마스터 응답
class SmallAreaMaster {
  final String code;
  final String name;
  final MiddleArea middleArea;
  final LargeArea largeArea;
  final ServiceArea serviceArea;
  final LargeServiceArea largeServiceArea;

  const SmallAreaMaster({
    required this.code,
    required this.name,
    required this.middleArea,
    required this.largeArea,
    required this.serviceArea,
    required this.largeServiceArea,
  });

  factory SmallAreaMaster.fromJson(Map<String, dynamic> json) {
    return SmallAreaMaster(
      code: json['code'] as String,
      name: json['name'] as String,
      middleArea: MiddleArea.fromJson(json['middle_area'] as Map<String, dynamic>),
      largeArea: LargeArea.fromJson(json['large_area'] as Map<String, dynamic>),
      serviceArea: ServiceArea.fromJson(json['service_area'] as Map<String, dynamic>),
      largeServiceArea: LargeServiceArea.fromJson(json['large_service_area'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'middle_area': middleArea.toJson(),
      'large_area': largeArea.toJson(),
      'service_area': serviceArea.toJson(),
      'large_service_area': largeServiceArea.toJson(),
    };
  }

  @override
  String toString() => 'SmallAreaMaster(code: $code, name: $name)';
}
