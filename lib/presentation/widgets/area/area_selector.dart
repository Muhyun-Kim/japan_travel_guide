import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/area/area_hierarchy.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/master_response.dart';
import 'package:japan_travel_guide/data/services/area_service.dart';

/// 지역 선택 위젯
/// 
/// ServiceArea 내에서 세부 지역(SmallArea)을 선택할 수 있는 UI 컴포넌트
class AreaSelector extends ConsumerStatefulWidget {
  final String serviceAreaCode;
  final String serviceAreaName;
  final Function(AreaSelection) onAreaSelected;
  final AreaSelection? initialSelection;

  const AreaSelector({
    super.key,
    required this.serviceAreaCode,
    required this.serviceAreaName,
    required this.onAreaSelected,
    this.initialSelection,
  });

  @override
  ConsumerState<AreaSelector> createState() => _AreaSelectorState();
}

class _AreaSelectorState extends ConsumerState<AreaSelector> {
  final AreaService _areaService = AreaService();
  
  AreaHierarchy? _hierarchy;
  AreaSelection? _currentSelection;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadAreaHierarchy();
  }

  @override
  void dispose() {
    _areaService.dispose();
    super.dispose();
  }

  Future<void> _loadAreaHierarchy() async {
    try {
      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

      final hierarchy = await _areaService.getAreaHierarchy(widget.serviceAreaCode);
      
      setState(() {
        _hierarchy = hierarchy;
        _currentSelection = widget.initialSelection ?? 
          AreaSelection(serviceArea: hierarchy.serviceArea);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  void _selectLargeArea(LargeArea? largeArea) {
    if (_currentSelection == null) return;
    
    setState(() {
      _currentSelection = _currentSelection!.copyWith(
        selectedLargeArea: largeArea,
        selectedMiddleArea: null,
        selectedSmallArea: null,
      );
    });
    
    widget.onAreaSelected(_currentSelection!);
  }

  void _selectMiddleArea(MiddleArea? middleArea) {
    if (_currentSelection == null) return;
    
    setState(() {
      _currentSelection = _currentSelection!.copyWith(
        selectedMiddleArea: middleArea,
        selectedSmallArea: null,
      );
    });
    
    widget.onAreaSelected(_currentSelection!);
  }

  void _selectSmallArea(SmallArea? smallArea) {
    if (_currentSelection == null) return;
    
    setState(() {
      _currentSelection = _currentSelection!.copyWith(
        selectedSmallArea: smallArea,
      );
    });
    
    widget.onAreaSelected(_currentSelection!);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('지역 데이터를 불러올 수 없습니다'),
            const SizedBox(height: 8),
            Text(
              _errorMessage!,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadAreaHierarchy,
              child: const Text('다시 시도'),
            ),
          ],
        ),
      );
    }

    if (_hierarchy == null || _currentSelection == null) {
      return const Center(child: Text('데이터를 불러올 수 없습니다'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('지역 선택'),
        const SizedBox(height: 8),
        _buildCurrentSelection(),
        const SizedBox(height: 16),
        _buildLargeAreaSelector(),
        if (_currentSelection!.selectedLargeArea != null) ...[
          const SizedBox(height: 16),
          _buildMiddleAreaSelector(),
        ],
        if (_currentSelection!.selectedMiddleArea != null) ...[
          const SizedBox(height: 16),
          _buildSmallAreaSelector(),
        ],
      ],
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
              onPressed: () => _selectLargeArea(null),
              child: const Text('초기화'),
            ),
        ],
      ),
    );
  }

  Widget _buildLargeAreaSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '대지역 선택',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _hierarchy!.largeAreas.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final largeArea = _hierarchy!.largeAreas[index];
              final isSelected = _currentSelection!.selectedLargeArea?.code == largeArea.code;
              
              return FilterChip(
                label: Text(largeArea.name),
                selected: isSelected,
                onSelected: (selected) {
                  _selectLargeArea(selected ? largeArea : null);
                },
                selectedColor: Colors.blue.shade200,
                backgroundColor: Colors.grey.shade100,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMiddleAreaSelector() {
    final selectedLargeArea = _currentSelection!.selectedLargeArea!;
    final middleAreas = _hierarchy!.getMiddleAreasByLargeArea(selectedLargeArea.code);

    if (middleAreas.isEmpty) {
      return const Text('해당 대지역에 중지역이 없습니다');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '중지역 선택',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: middleAreas.map((middleArea) {
            final isSelected = _currentSelection!.selectedMiddleArea?.code == middleArea.code;
            
            return FilterChip(
              label: Text(middleArea.name),
              selected: isSelected,
              onSelected: (selected) {
                _selectMiddleArea(selected ? middleArea : null);
              },
              selectedColor: Colors.green.shade200,
              backgroundColor: Colors.grey.shade100,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSmallAreaSelector() {
    final selectedMiddleArea = _currentSelection!.selectedMiddleArea!;
    final smallAreas = _hierarchy!.getSmallAreasByMiddleArea(selectedMiddleArea.code);

    if (smallAreas.isEmpty) {
      return const Text('해당 중지역에 소지역이 없습니다');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '소지역 선택 (상세)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: smallAreas.map((smallArea) {
            final isSelected = _currentSelection!.selectedSmallArea?.code == smallArea.code;
            
            return FilterChip(
              label: Text(smallArea.name),
              selected: isSelected,
              onSelected: (selected) {
                _selectSmallArea(selected ? smallArea : null);
              },
              selectedColor: Colors.orange.shade200,
              backgroundColor: Colors.grey.shade100,
            );
          }).toList(),
        ),
      ],
    );
  }
}