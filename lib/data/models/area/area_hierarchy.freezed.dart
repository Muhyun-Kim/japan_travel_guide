// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_hierarchy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AreaHierarchy _$AreaHierarchyFromJson(Map<String, dynamic> json) {
  return _AreaHierarchy.fromJson(json);
}

/// @nodoc
mixin _$AreaHierarchy {
  /// 서비스 지역 (SA11, SA12 등)
  ServiceArea get serviceArea => throw _privateConstructorUsedError;

  /// 대지역 리스트 (Z011, Z012 등)
  List<LargeArea> get largeAreas => throw _privateConstructorUsedError;

  /// 중지역 리스트 (Y055, Y010 등)
  List<MiddleArea> get middleAreas => throw _privateConstructorUsedError;

  /// 소지역 리스트 (X050, X051 등)
  List<SmallArea> get smallAreas => throw _privateConstructorUsedError;

  /// Serializes this AreaHierarchy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaHierarchyCopyWith<AreaHierarchy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaHierarchyCopyWith<$Res> {
  factory $AreaHierarchyCopyWith(
    AreaHierarchy value,
    $Res Function(AreaHierarchy) then,
  ) = _$AreaHierarchyCopyWithImpl<$Res, AreaHierarchy>;
  @useResult
  $Res call({
    ServiceArea serviceArea,
    List<LargeArea> largeAreas,
    List<MiddleArea> middleAreas,
    List<SmallArea> smallAreas,
  });

  $ServiceAreaCopyWith<$Res> get serviceArea;
}

/// @nodoc
class _$AreaHierarchyCopyWithImpl<$Res, $Val extends AreaHierarchy>
    implements $AreaHierarchyCopyWith<$Res> {
  _$AreaHierarchyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? largeAreas = null,
    Object? middleAreas = null,
    Object? smallAreas = null,
  }) {
    return _then(
      _value.copyWith(
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as ServiceArea,
            largeAreas:
                null == largeAreas
                    ? _value.largeAreas
                    : largeAreas // ignore: cast_nullable_to_non_nullable
                        as List<LargeArea>,
            middleAreas:
                null == middleAreas
                    ? _value.middleAreas
                    : middleAreas // ignore: cast_nullable_to_non_nullable
                        as List<MiddleArea>,
            smallAreas:
                null == smallAreas
                    ? _value.smallAreas
                    : smallAreas // ignore: cast_nullable_to_non_nullable
                        as List<SmallArea>,
          )
          as $Val,
    );
  }

  /// Create a copy of AreaHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceAreaCopyWith<$Res> get serviceArea {
    return $ServiceAreaCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaHierarchyImplCopyWith<$Res>
    implements $AreaHierarchyCopyWith<$Res> {
  factory _$$AreaHierarchyImplCopyWith(
    _$AreaHierarchyImpl value,
    $Res Function(_$AreaHierarchyImpl) then,
  ) = __$$AreaHierarchyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ServiceArea serviceArea,
    List<LargeArea> largeAreas,
    List<MiddleArea> middleAreas,
    List<SmallArea> smallAreas,
  });

  @override
  $ServiceAreaCopyWith<$Res> get serviceArea;
}

/// @nodoc
class __$$AreaHierarchyImplCopyWithImpl<$Res>
    extends _$AreaHierarchyCopyWithImpl<$Res, _$AreaHierarchyImpl>
    implements _$$AreaHierarchyImplCopyWith<$Res> {
  __$$AreaHierarchyImplCopyWithImpl(
    _$AreaHierarchyImpl _value,
    $Res Function(_$AreaHierarchyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AreaHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? largeAreas = null,
    Object? middleAreas = null,
    Object? smallAreas = null,
  }) {
    return _then(
      _$AreaHierarchyImpl(
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as ServiceArea,
        largeAreas:
            null == largeAreas
                ? _value._largeAreas
                : largeAreas // ignore: cast_nullable_to_non_nullable
                    as List<LargeArea>,
        middleAreas:
            null == middleAreas
                ? _value._middleAreas
                : middleAreas // ignore: cast_nullable_to_non_nullable
                    as List<MiddleArea>,
        smallAreas:
            null == smallAreas
                ? _value._smallAreas
                : smallAreas // ignore: cast_nullable_to_non_nullable
                    as List<SmallArea>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaHierarchyImpl implements _AreaHierarchy {
  const _$AreaHierarchyImpl({
    required this.serviceArea,
    final List<LargeArea> largeAreas = const [],
    final List<MiddleArea> middleAreas = const [],
    final List<SmallArea> smallAreas = const [],
  }) : _largeAreas = largeAreas,
       _middleAreas = middleAreas,
       _smallAreas = smallAreas;

  factory _$AreaHierarchyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaHierarchyImplFromJson(json);

  /// 서비스 지역 (SA11, SA12 등)
  @override
  final ServiceArea serviceArea;

  /// 대지역 리스트 (Z011, Z012 등)
  final List<LargeArea> _largeAreas;

  /// 대지역 리스트 (Z011, Z012 등)
  @override
  @JsonKey()
  List<LargeArea> get largeAreas {
    if (_largeAreas is EqualUnmodifiableListView) return _largeAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeAreas);
  }

  /// 중지역 리스트 (Y055, Y010 등)
  final List<MiddleArea> _middleAreas;

  /// 중지역 리스트 (Y055, Y010 등)
  @override
  @JsonKey()
  List<MiddleArea> get middleAreas {
    if (_middleAreas is EqualUnmodifiableListView) return _middleAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_middleAreas);
  }

  /// 소지역 리스트 (X050, X051 등)
  final List<SmallArea> _smallAreas;

  /// 소지역 리스트 (X050, X051 등)
  @override
  @JsonKey()
  List<SmallArea> get smallAreas {
    if (_smallAreas is EqualUnmodifiableListView) return _smallAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smallAreas);
  }

  @override
  String toString() {
    return 'AreaHierarchy(serviceArea: $serviceArea, largeAreas: $largeAreas, middleAreas: $middleAreas, smallAreas: $smallAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaHierarchyImpl &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            const DeepCollectionEquality().equals(
              other._largeAreas,
              _largeAreas,
            ) &&
            const DeepCollectionEquality().equals(
              other._middleAreas,
              _middleAreas,
            ) &&
            const DeepCollectionEquality().equals(
              other._smallAreas,
              _smallAreas,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    serviceArea,
    const DeepCollectionEquality().hash(_largeAreas),
    const DeepCollectionEquality().hash(_middleAreas),
    const DeepCollectionEquality().hash(_smallAreas),
  );

  /// Create a copy of AreaHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaHierarchyImplCopyWith<_$AreaHierarchyImpl> get copyWith =>
      __$$AreaHierarchyImplCopyWithImpl<_$AreaHierarchyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaHierarchyImplToJson(this);
  }
}

abstract class _AreaHierarchy implements AreaHierarchy {
  const factory _AreaHierarchy({
    required final ServiceArea serviceArea,
    final List<LargeArea> largeAreas,
    final List<MiddleArea> middleAreas,
    final List<SmallArea> smallAreas,
  }) = _$AreaHierarchyImpl;

  factory _AreaHierarchy.fromJson(Map<String, dynamic> json) =
      _$AreaHierarchyImpl.fromJson;

  /// 서비스 지역 (SA11, SA12 등)
  @override
  ServiceArea get serviceArea;

  /// 대지역 리스트 (Z011, Z012 등)
  @override
  List<LargeArea> get largeAreas;

  /// 중지역 리스트 (Y055, Y010 등)
  @override
  List<MiddleArea> get middleAreas;

  /// 소지역 리스트 (X050, X051 등)
  @override
  List<SmallArea> get smallAreas;

  /// Create a copy of AreaHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaHierarchyImplCopyWith<_$AreaHierarchyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaSelection _$AreaSelectionFromJson(Map<String, dynamic> json) {
  return _AreaSelection.fromJson(json);
}

/// @nodoc
mixin _$AreaSelection {
  /// 선택된 서비스 지역 (필수)
  ServiceArea get serviceArea => throw _privateConstructorUsedError;

  /// 선택된 대지역 (선택사항)
  LargeArea? get selectedLargeArea => throw _privateConstructorUsedError;

  /// 선택된 중지역 (선택사항)
  MiddleArea? get selectedMiddleArea => throw _privateConstructorUsedError;

  /// 선택된 소지역 (선택사항)
  SmallArea? get selectedSmallArea => throw _privateConstructorUsedError;

  /// Serializes this AreaSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaSelectionCopyWith<AreaSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaSelectionCopyWith<$Res> {
  factory $AreaSelectionCopyWith(
    AreaSelection value,
    $Res Function(AreaSelection) then,
  ) = _$AreaSelectionCopyWithImpl<$Res, AreaSelection>;
  @useResult
  $Res call({
    ServiceArea serviceArea,
    LargeArea? selectedLargeArea,
    MiddleArea? selectedMiddleArea,
    SmallArea? selectedSmallArea,
  });

  $ServiceAreaCopyWith<$Res> get serviceArea;
  $LargeAreaCopyWith<$Res>? get selectedLargeArea;
  $MiddleAreaCopyWith<$Res>? get selectedMiddleArea;
  $SmallAreaCopyWith<$Res>? get selectedSmallArea;
}

/// @nodoc
class _$AreaSelectionCopyWithImpl<$Res, $Val extends AreaSelection>
    implements $AreaSelectionCopyWith<$Res> {
  _$AreaSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? selectedLargeArea = freezed,
    Object? selectedMiddleArea = freezed,
    Object? selectedSmallArea = freezed,
  }) {
    return _then(
      _value.copyWith(
            serviceArea:
                null == serviceArea
                    ? _value.serviceArea
                    : serviceArea // ignore: cast_nullable_to_non_nullable
                        as ServiceArea,
            selectedLargeArea:
                freezed == selectedLargeArea
                    ? _value.selectedLargeArea
                    : selectedLargeArea // ignore: cast_nullable_to_non_nullable
                        as LargeArea?,
            selectedMiddleArea:
                freezed == selectedMiddleArea
                    ? _value.selectedMiddleArea
                    : selectedMiddleArea // ignore: cast_nullable_to_non_nullable
                        as MiddleArea?,
            selectedSmallArea:
                freezed == selectedSmallArea
                    ? _value.selectedSmallArea
                    : selectedSmallArea // ignore: cast_nullable_to_non_nullable
                        as SmallArea?,
          )
          as $Val,
    );
  }

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceAreaCopyWith<$Res> get serviceArea {
    return $ServiceAreaCopyWith<$Res>(_value.serviceArea, (value) {
      return _then(_value.copyWith(serviceArea: value) as $Val);
    });
  }

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LargeAreaCopyWith<$Res>? get selectedLargeArea {
    if (_value.selectedLargeArea == null) {
      return null;
    }

    return $LargeAreaCopyWith<$Res>(_value.selectedLargeArea!, (value) {
      return _then(_value.copyWith(selectedLargeArea: value) as $Val);
    });
  }

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiddleAreaCopyWith<$Res>? get selectedMiddleArea {
    if (_value.selectedMiddleArea == null) {
      return null;
    }

    return $MiddleAreaCopyWith<$Res>(_value.selectedMiddleArea!, (value) {
      return _then(_value.copyWith(selectedMiddleArea: value) as $Val);
    });
  }

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SmallAreaCopyWith<$Res>? get selectedSmallArea {
    if (_value.selectedSmallArea == null) {
      return null;
    }

    return $SmallAreaCopyWith<$Res>(_value.selectedSmallArea!, (value) {
      return _then(_value.copyWith(selectedSmallArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaSelectionImplCopyWith<$Res>
    implements $AreaSelectionCopyWith<$Res> {
  factory _$$AreaSelectionImplCopyWith(
    _$AreaSelectionImpl value,
    $Res Function(_$AreaSelectionImpl) then,
  ) = __$$AreaSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ServiceArea serviceArea,
    LargeArea? selectedLargeArea,
    MiddleArea? selectedMiddleArea,
    SmallArea? selectedSmallArea,
  });

  @override
  $ServiceAreaCopyWith<$Res> get serviceArea;
  @override
  $LargeAreaCopyWith<$Res>? get selectedLargeArea;
  @override
  $MiddleAreaCopyWith<$Res>? get selectedMiddleArea;
  @override
  $SmallAreaCopyWith<$Res>? get selectedSmallArea;
}

/// @nodoc
class __$$AreaSelectionImplCopyWithImpl<$Res>
    extends _$AreaSelectionCopyWithImpl<$Res, _$AreaSelectionImpl>
    implements _$$AreaSelectionImplCopyWith<$Res> {
  __$$AreaSelectionImplCopyWithImpl(
    _$AreaSelectionImpl _value,
    $Res Function(_$AreaSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceArea = null,
    Object? selectedLargeArea = freezed,
    Object? selectedMiddleArea = freezed,
    Object? selectedSmallArea = freezed,
  }) {
    return _then(
      _$AreaSelectionImpl(
        serviceArea:
            null == serviceArea
                ? _value.serviceArea
                : serviceArea // ignore: cast_nullable_to_non_nullable
                    as ServiceArea,
        selectedLargeArea:
            freezed == selectedLargeArea
                ? _value.selectedLargeArea
                : selectedLargeArea // ignore: cast_nullable_to_non_nullable
                    as LargeArea?,
        selectedMiddleArea:
            freezed == selectedMiddleArea
                ? _value.selectedMiddleArea
                : selectedMiddleArea // ignore: cast_nullable_to_non_nullable
                    as MiddleArea?,
        selectedSmallArea:
            freezed == selectedSmallArea
                ? _value.selectedSmallArea
                : selectedSmallArea // ignore: cast_nullable_to_non_nullable
                    as SmallArea?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaSelectionImpl implements _AreaSelection {
  const _$AreaSelectionImpl({
    required this.serviceArea,
    this.selectedLargeArea,
    this.selectedMiddleArea,
    this.selectedSmallArea,
  });

  factory _$AreaSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaSelectionImplFromJson(json);

  /// 선택된 서비스 지역 (필수)
  @override
  final ServiceArea serviceArea;

  /// 선택된 대지역 (선택사항)
  @override
  final LargeArea? selectedLargeArea;

  /// 선택된 중지역 (선택사항)
  @override
  final MiddleArea? selectedMiddleArea;

  /// 선택된 소지역 (선택사항)
  @override
  final SmallArea? selectedSmallArea;

  @override
  String toString() {
    return 'AreaSelection(serviceArea: $serviceArea, selectedLargeArea: $selectedLargeArea, selectedMiddleArea: $selectedMiddleArea, selectedSmallArea: $selectedSmallArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaSelectionImpl &&
            (identical(other.serviceArea, serviceArea) ||
                other.serviceArea == serviceArea) &&
            (identical(other.selectedLargeArea, selectedLargeArea) ||
                other.selectedLargeArea == selectedLargeArea) &&
            (identical(other.selectedMiddleArea, selectedMiddleArea) ||
                other.selectedMiddleArea == selectedMiddleArea) &&
            (identical(other.selectedSmallArea, selectedSmallArea) ||
                other.selectedSmallArea == selectedSmallArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    serviceArea,
    selectedLargeArea,
    selectedMiddleArea,
    selectedSmallArea,
  );

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaSelectionImplCopyWith<_$AreaSelectionImpl> get copyWith =>
      __$$AreaSelectionImplCopyWithImpl<_$AreaSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaSelectionImplToJson(this);
  }
}

abstract class _AreaSelection implements AreaSelection {
  const factory _AreaSelection({
    required final ServiceArea serviceArea,
    final LargeArea? selectedLargeArea,
    final MiddleArea? selectedMiddleArea,
    final SmallArea? selectedSmallArea,
  }) = _$AreaSelectionImpl;

  factory _AreaSelection.fromJson(Map<String, dynamic> json) =
      _$AreaSelectionImpl.fromJson;

  /// 선택된 서비스 지역 (필수)
  @override
  ServiceArea get serviceArea;

  /// 선택된 대지역 (선택사항)
  @override
  LargeArea? get selectedLargeArea;

  /// 선택된 중지역 (선택사항)
  @override
  MiddleArea? get selectedMiddleArea;

  /// 선택된 소지역 (선택사항)
  @override
  SmallArea? get selectedSmallArea;

  /// Create a copy of AreaSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaSelectionImplCopyWith<_$AreaSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
