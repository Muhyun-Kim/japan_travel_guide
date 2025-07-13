import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_area.freezed.dart';
part 'localized_area.g.dart';

/// 다국어 지원 지역 모델 베이스
@freezed
class LocalizedAreaBase with _$LocalizedAreaBase {
  const factory LocalizedAreaBase({
    /// 지역 코드 (예: SA11, Z011, Y055, X050)
    required String code,
    
    /// 일본어 원문
    required String nameJa,
    
    /// 한국어 번역
    required String nameKo,
    
    /// 정렬 순서
    @Default(0) int sortOrder,
    
    /// 인기 지역 여부 (주요 관광지)
    @Default(false) bool isPopular,
  }) = _LocalizedAreaBase;

  factory LocalizedAreaBase.fromJson(Map<String, dynamic> json) =>
      _$LocalizedAreaBaseFromJson(json);
}

/// 다국어 지원 서비스 지역 모델
@freezed
class LocalizedServiceArea with _$LocalizedServiceArea {
  const factory LocalizedServiceArea({
    /// 서비스 지역 코드 (예: SA11, SA12)
    required String code,
    
    /// 일본어 원문
    required String nameJa,
    
    /// 한국어 번역
    required String nameKo,
    
    /// 정렬 순서
    @Default(0) int sortOrder,
    
    /// 인기 지역 여부
    @Default(false) bool isPopular,
  }) = _LocalizedServiceArea;

  factory LocalizedServiceArea.fromJson(Map<String, dynamic> json) =>
      _$LocalizedServiceAreaFromJson(json);
}

/// 다국어 지원 대지역 모델
@freezed
class LocalizedLargeArea with _$LocalizedLargeArea {
  const factory LocalizedLargeArea({
    /// 대지역 코드 (예: Z011, Z012)
    required String code,
    
    /// 일본어 원문
    required String nameJa,
    
    /// 한국어 번역
    required String nameKo,
    
    /// 소속 서비스 지역 코드
    required String serviceAreaCode,
    
    /// 정렬 순서
    @Default(0) int sortOrder,
    
    /// 인기 지역 여부
    @Default(false) bool isPopular,
  }) = _LocalizedLargeArea;

  factory LocalizedLargeArea.fromJson(Map<String, dynamic> json) =>
      _$LocalizedLargeAreaFromJson(json);
}

/// 다국어 지원 중지역 모델
@freezed
class LocalizedMiddleArea with _$LocalizedMiddleArea {
  const factory LocalizedMiddleArea({
    /// 중지역 코드 (예: Y055, Y010)
    required String code,
    
    /// 일본어 원문
    required String nameJa,
    
    /// 한국어 번역
    required String nameKo,
    
    /// 소속 대지역 코드
    required String largeAreaCode,
    
    /// 소속 서비스 지역 코드
    required String serviceAreaCode,
    
    /// 정렬 순서
    @Default(0) int sortOrder,
    
    /// 인기 지역 여부 (주요 관광지)
    @Default(false) bool isPopular,
  }) = _LocalizedMiddleArea;

  factory LocalizedMiddleArea.fromJson(Map<String, dynamic> json) =>
      _$LocalizedMiddleAreaFromJson(json);
}

/// 다국어 지원 소지역 모델
@freezed
class LocalizedSmallArea with _$LocalizedSmallArea {
  const factory LocalizedSmallArea({
    /// 소지역 코드 (예: X050, X051)
    required String code,
    
    /// 일본어 원문
    required String nameJa,
    
    /// 한국어 번역
    required String nameKo,
    
    /// 소속 중지역 코드
    required String middleAreaCode,
    
    /// 소속 대지역 코드
    required String largeAreaCode,
    
    /// 소속 서비스 지역 코드
    required String serviceAreaCode,
    
    /// 정렬 순서
    @Default(0) int sortOrder,
    
    /// 인기 지역 여부 (핫스팟)
    @Default(false) bool isPopular,
  }) = _LocalizedSmallArea;

  factory LocalizedSmallArea.fromJson(Map<String, dynamic> json) =>
      _$LocalizedSmallAreaFromJson(json);
}

/// 현지화된 지역 선택 상태
@freezed
class LocalizedAreaSelection with _$LocalizedAreaSelection {
  const factory LocalizedAreaSelection({
    /// 선택된 서비스 지역 (필수)
    required LocalizedServiceArea serviceArea,
    
    /// 선택된 대지역 (선택사항)
    LocalizedLargeArea? selectedLargeArea,
    
    /// 선택된 중지역 (선택사항)
    LocalizedMiddleArea? selectedMiddleArea,
    
    /// 선택된 소지역 (선택사항)
    LocalizedSmallArea? selectedSmallArea,
  }) = _LocalizedAreaSelection;

  factory LocalizedAreaSelection.fromJson(Map<String, dynamic> json) =>
      _$LocalizedAreaSelectionFromJson(json);
}

/// 현지화된 지역 선택 상태 확장 메서드
extension LocalizedAreaSelectionExtension on LocalizedAreaSelection {
  /// 검색용 서비스 지역 코드 반환
  String get searchServiceAreaCode => serviceArea.code;
  
  /// 검색용 소지역 코드 반환 (가장 세분화된 지역)
  String? get searchSmallAreaCode => selectedSmallArea?.code;
  
  /// 현재 선택된 지역의 표시명 반환 (한국어)
  String get displayName {
    if (selectedSmallArea != null) {
      return '${serviceArea.nameKo} > ${selectedSmallArea!.nameKo}';
    }
    if (selectedMiddleArea != null) {
      return '${serviceArea.nameKo} > ${selectedMiddleArea!.nameKo}';
    }
    if (selectedLargeArea != null) {
      return '${serviceArea.nameKo} > ${selectedLargeArea!.nameKo}';
    }
    return serviceArea.nameKo;
  }
  
  /// 선택 깊이 반환
  int get selectionDepth {
    if (selectedSmallArea != null) return 3;
    if (selectedMiddleArea != null) return 2;
    if (selectedLargeArea != null) return 1;
    return 0;
  }
}