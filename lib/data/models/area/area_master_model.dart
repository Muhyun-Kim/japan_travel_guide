import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:japan_travel_guide/data/models/area/area_translations.dart';

part 'area_master_model.freezed.dart';
part 'area_master_model.g.dart';

/// 현지화된 서비스 지역 (도도부현) 모델
@freezed
class LocalizedServiceAreaMaster with _$LocalizedServiceAreaMaster {
  const factory LocalizedServiceAreaMaster({
    required String code,
    required String nameJa,
    required String nameKo,
    required bool isPopular,
  }) = _LocalizedServiceAreaMaster;

  factory LocalizedServiceAreaMaster.fromJson(Map<String, dynamic> json) =>
      _$LocalizedServiceAreaMasterFromJson(json);
}

/// 현지화된 대지역 모델
@freezed
class LocalizedLargeAreaMaster with _$LocalizedLargeAreaMaster {
  const factory LocalizedLargeAreaMaster({
    required String code,
    required String nameJa,
    required String nameKo,
    required String serviceAreaCode,
  }) = _LocalizedLargeAreaMaster;

  factory LocalizedLargeAreaMaster.fromJson(Map<String, dynamic> json) =>
      _$LocalizedLargeAreaMasterFromJson(json);
}

/// 현지화된 중지역 모델
@freezed
class LocalizedMiddleAreaMaster with _$LocalizedMiddleAreaMaster {
  const factory LocalizedMiddleAreaMaster({
    required String code,
    required String nameJa,
    required String nameKo,
    required String largeAreaCode,
    required String serviceAreaCode,
    required bool isPopular,
  }) = _LocalizedMiddleAreaMaster;

  factory LocalizedMiddleAreaMaster.fromJson(Map<String, dynamic> json) =>
      _$LocalizedMiddleAreaMasterFromJson(json);
}

/// 지역 선택 모델 (기존 LocalizedAreaSelection과 호환)
@freezed
class LocalizedAreaSelectionMaster with _$LocalizedAreaSelectionMaster {
  const factory LocalizedAreaSelectionMaster({
    required LocalizedServiceAreaMaster serviceArea,
    LocalizedLargeAreaMaster? selectedLargeArea,
    LocalizedMiddleAreaMaster? selectedMiddleArea,
  }) = _LocalizedAreaSelectionMaster;

  factory LocalizedAreaSelectionMaster.fromJson(Map<String, dynamic> json) =>
      _$LocalizedAreaSelectionMasterFromJson(json);
}

/// 지역 선택 확장 메서드
extension LocalizedAreaSelectionMasterExtensions on LocalizedAreaSelectionMaster {
  /// 선택된 지역의 표시 이름
  String get displayName {
    if (selectedMiddleArea != null) {
      return selectedMiddleArea!.nameKo;
    } else if (selectedLargeArea != null) {
      return selectedLargeArea!.nameKo;
    } else {
      return serviceArea.nameKo;
    }
  }

  /// 선택된 지역의 깊이 (0: 서비스만, 1: 대지역까지, 2: 중지역까지)
  int get selectionDepth {
    if (selectedMiddleArea != null) return 2;
    if (selectedLargeArea != null) return 1;
    return 0;
  }

  /// 검색에 사용할 중지역 코드
  String? get searchMiddleAreaCode => selectedMiddleArea?.code;

  /// 복사 헬퍼 메서드
  LocalizedAreaSelectionMaster copyWith({
    LocalizedServiceAreaMaster? serviceArea,
    LocalizedLargeAreaMaster? selectedLargeArea,
    LocalizedMiddleAreaMaster? selectedMiddleArea,
  }) {
    return LocalizedAreaSelectionMaster(
      serviceArea: serviceArea ?? this.serviceArea,
      selectedLargeArea: selectedLargeArea,
      selectedMiddleArea: selectedMiddleArea,
    );
  }
}