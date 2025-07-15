import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/area/area_master_model.dart';
import 'package:japan_travel_guide/data/services/area_master_service_v2.dart';

/// 새로운 지역 선택 위젯 (area_master.json 기반)
class AreaSelectorV2 extends ConsumerStatefulWidget {
  final String serviceAreaCode;
  final String serviceAreaName;
  final Function(LocalizedAreaSelectionMaster) onAreaSelected;
  final LocalizedAreaSelectionMaster? initialSelection;

  const AreaSelectorV2({
    super.key,
    required this.serviceAreaCode,
    required this.serviceAreaName,
    required this.onAreaSelected,
    this.initialSelection,
  });

  @override
  ConsumerState<AreaSelectorV2> createState() => _AreaSelectorV2State();
}

class _AreaSelectorV2State extends ConsumerState<AreaSelectorV2> {
  LocalizedAreaSelectionMaster? _currentSelection;

  @override
  void initState() {
    super.initState();
    _initializeSelection();
  }

  void _initializeSelection() {
    if (widget.initialSelection != null) {
      _currentSelection = widget.initialSelection;
    } else {
      // 서비스 지역 정보로 기본 선택 생성
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final service = ref.read(areaMasterServiceV2Provider);
        final serviceArea = service.getServiceAreaByCode(widget.serviceAreaCode);
        if (serviceArea != null && mounted) {
          setState(() {
            _currentSelection = LocalizedAreaSelectionMaster(serviceArea: serviceArea);
          });
        }
      });
    }
  }

  void _selectMiddleArea(LocalizedMiddleAreaMaster? middleArea) {
    if (_currentSelection == null) return;

    setState(() {
      _currentSelection = _currentSelection!.copyWith(
        selectedMiddleArea: middleArea,
      );
    });

    widget.onAreaSelected(_currentSelection!);
  }

  void _clearSelection() {
    if (_currentSelection == null) return;

    setState(() {
      _currentSelection = _currentSelection!.copyWith(
        selectedMiddleArea: null,
      );
    });

    widget.onAreaSelected(_currentSelection!);
  }

  @override
  Widget build(BuildContext context) {
    final initializerAsync = ref.watch(areaMasterInitializerV2Provider);

    return initializerAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            const Text('지역 데이터를 불러올 수 없습니다'),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.refresh(areaMasterInitializerV2Provider),
              child: const Text('다시 시도'),
            ),
          ],
        ),
      ),
      data: (_) {
        if (_currentSelection == null) {
          return const Center(child: Text('지역 정보를 로드하는 중...'));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('지역 선택'),
            const SizedBox(height: 8),
            _buildCurrentSelection(),
            const SizedBox(height: 16),
            _buildMiddleAreaSelector(),
          ],
        );
      },
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCurrentSelection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Row(
        children: [
          const Icon(Icons.location_on, color: Colors.blue),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _currentSelection!.displayName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (_currentSelection!.selectionDepth > 0)
            TextButton(
              onPressed: _clearSelection,
              child: const Text('초기화'),
            ),
        ],
      ),
    );
  }

  Widget _buildMiddleAreaSelector() {
    final middleAreas = ref.watch(middleAreasByServiceV2Provider(widget.serviceAreaCode));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              '세부 지역 선택',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 8),
            Text(
              '(${middleAreas.length}개)',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (middleAreas.isEmpty)
          const Text('해당 서비스 지역에 세부 지역이 없습니다')
        else
          _buildMiddleAreaGrid(middleAreas),
      ],
    );
  }

  Widget _buildMiddleAreaGrid(List<LocalizedMiddleAreaMaster> middleAreas) {
    // 인기 지역과 일반 지역으로 분리
    final popularAreas = middleAreas.where((area) => area.isPopular).toList();
    final otherAreas = middleAreas.where((area) => !area.isPopular).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 인기 지역
        if (popularAreas.isNotEmpty) ...[
          Text(
            '인기 지역',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.orange[700],
            ),
          ),
          const SizedBox(height: 4),
          _buildAreaChips(popularAreas, Colors.orange),
          const SizedBox(height: 12),
        ],
        
        // 기타 지역
        if (otherAreas.isNotEmpty) ...[
          Text(
            '기타 지역',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 4),
          _buildAreaChips(otherAreas, Colors.grey),
        ],
      ],
    );
  }

  Widget _buildAreaChips(List<LocalizedMiddleAreaMaster> areas, MaterialColor baseColor) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: areas.map((middleArea) {
        final isSelected = _currentSelection!.selectedMiddleArea?.code == middleArea.code;

        return FilterChip(
          label: Text(
            middleArea.nameKo,
            style: TextStyle(
              fontSize: 13,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
          selected: isSelected,
          onSelected: (selected) {
            _selectMiddleArea(selected ? middleArea : null);
          },
          selectedColor: baseColor.shade200,
          backgroundColor: baseColor.shade50,
          checkmarkColor: baseColor.shade700,
          side: BorderSide(
            color: isSelected ? baseColor.shade400 : baseColor.shade200,
            width: 1,
          ),
        );
      }).toList(),
    );
  }
}