import 'package:freezed_annotation/freezed_annotation.dart';
import '../hotpepper/response/master_response.dart';

part 'area_hierarchy.freezed.dart';
part 'area_hierarchy.g.dart';

/// 지역 계층 구조를 나타내는 모델
/// 
/// HotPepper API의 지역 계층을 정리한 구조:
/// ServiceArea (큰 지역) -> LargeArea (대지역) -> MiddleArea (중지역) -> SmallArea (소지역)
@freezed
class AreaHierarchy with _$AreaHierarchy {
  const factory AreaHierarchy({
    /// 서비스 지역 (SA11, SA12 등)
    required ServiceArea serviceArea,
    
    /// 대지역 리스트 (Z011, Z012 등)
    @Default([]) List<LargeArea> largeAreas,
    
    /// 중지역 리스트 (Y055, Y010 등)
    @Default([]) List<MiddleArea> middleAreas,
    
    /// 소지역 리스트 (X050, X051 등)
    @Default([]) List<SmallArea> smallAreas,
  }) = _AreaHierarchy;

  factory AreaHierarchy.fromJson(Map<String, dynamic> json) =>
      _$AreaHierarchyFromJson(json);
}

/// 지역 선택 상태를 나타내는 모델
@freezed
class AreaSelection with _$AreaSelection {
  const factory AreaSelection({
    /// 선택된 서비스 지역 (필수)
    required ServiceArea serviceArea,
    
    /// 선택된 대지역 (선택사항)
    LargeArea? selectedLargeArea,
    
    /// 선택된 중지역 (선택사항)
    MiddleArea? selectedMiddleArea,
    
    /// 선택된 소지역 (선택사항)
    SmallArea? selectedSmallArea,
  }) = _AreaSelection;

  factory AreaSelection.fromJson(Map<String, dynamic> json) =>
      _$AreaSelectionFromJson(json);
}

/// 지역 계층 구조 확장 메서드
extension AreaHierarchyExtension on AreaHierarchy {
  /// 특정 대지역에 속하는 중지역들을 필터링
  List<MiddleArea> getMiddleAreasByLargeArea(String largeAreaCode) {
    return middleAreas
        .where((middle) => middle.largeArea.code == largeAreaCode)
        .toList();
  }
  
  /// 특정 중지역에 속하는 소지역들을 필터링
  List<SmallArea> getSmallAreasByMiddleArea(String middleAreaCode) {
    return smallAreas
        .where((small) => small.middleArea.code == middleAreaCode)
        .toList();
  }
}

/// 지역 선택 상태 확장 메서드
extension AreaSelectionExtension on AreaSelection {
  /// 검색용 서비스 지역 코드 반환
  String get searchServiceAreaCode => serviceArea.code;
  
  /// 검색용 소지역 코드 반환 (가장 세분화된 지역)
  String? get searchSmallAreaCode => selectedSmallArea?.code;
  
  /// 현재 선택된 지역의 표시명 반환
  String get displayName {
    if (selectedSmallArea != null) {
      return '${serviceArea.name} > ${selectedSmallArea!.name}';
    }
    if (selectedMiddleArea != null) {
      return '${serviceArea.name} > ${selectedMiddleArea!.name}';
    }
    if (selectedLargeArea != null) {
      return '${serviceArea.name} > ${selectedLargeArea!.name}';
    }
    return serviceArea.name;
  }
  
  /// 선택 깊이 반환 (0: 서비스지역만, 1: 대지역까지, 2: 중지역까지, 3: 소지역까지)
  int get selectionDepth {
    if (selectedSmallArea != null) return 3;
    if (selectedMiddleArea != null) return 2;
    if (selectedLargeArea != null) return 1;
    return 0;
  }
}