import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/area/localized_area.dart';
import 'package:japan_travel_guide/presentation/providers/area_provider.dart';

/// 현지화된 지역 선택 위젯
/// 
/// 한국어 지역명을 표시하며 하드코딩된 매핑 데이터를 우선 사용
class LocalizedAreaSelector extends ConsumerStatefulWidget {
  final String serviceAreaCode;
  final String serviceAreaName;
  final Function(LocalizedAreaSelection) onAreaSelected;
  final LocalizedAreaSelection? initialSelection;

  const LocalizedAreaSelector({
    super.key,
    required this.serviceAreaCode,
    required this.serviceAreaName,
    required this.onAreaSelected,
    this.initialSelection,
  });

  @override
  ConsumerState<LocalizedAreaSelector> createState() => _LocalizedAreaSelectorState();
}

class _LocalizedAreaSelectorState extends ConsumerState<LocalizedAreaSelector> {
  LocalizedAreaSelection? _currentSelection;

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
        final serviceArea = ref.read(serviceAreaByCodeProvider(widget.serviceAreaCode));
        if (serviceArea != null && mounted) {
          setState(() {
            _currentSelection = LocalizedAreaSelection(serviceArea: serviceArea);
          });
        }
      });
    }
  }

  void _selectLargeArea(LocalizedLargeArea? largeArea) {
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

  void _selectMiddleArea(LocalizedMiddleArea? middleArea) {
    if (_currentSelection == null) return;
    
    setState(() {
      _currentSelection = _currentSelection!.copyWith(
        selectedMiddleArea: middleArea,
        selectedSmallArea: null,
      );
    });
    
    widget.onAreaSelected(_currentSelection!);
  }

  void _selectSmallArea(LocalizedSmallArea? smallArea) {
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
    final loadingState = ref.watch(areaLoadingStateProvider);
    
    return loadingState.when(
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
              onPressed: () => ref.read(forceRefreshAreaActionProvider)(),
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
              onPressed: () => _selectLargeArea(null),
              child: const Text('초기화'),
            ),
        ],
      ),
    );
  }

  Widget _buildLargeAreaSelector() {
    final largeAreas = ref.watch(largeAreasProvider(widget.serviceAreaCode));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '대지역 선택',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        if (largeAreas.isEmpty)
          const Text('해당 서비스 지역에 대지역이 없습니다')
        else
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: largeAreas.length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final largeArea = largeAreas[index];
                final isSelected = _currentSelection!.selectedLargeArea?.code == largeArea.code;
                
                return FilterChip(
                  label: Text(largeArea.nameKo), // 한국어 이름 사용
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
    final middleAreasAsync = ref.watch(middleAreasProvider(selectedLargeArea.code));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '중지역 선택',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        middleAreasAsync.when(
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text('중지역 로드 실패: $error'),
          data: (middleAreas) {
            if (middleAreas.isEmpty) {
              return const Text('해당 대지역에 중지역이 없습니다');
            }

            return Wrap(
              spacing: 8,
              runSpacing: 4,
              children: middleAreas.map((middleArea) {
                final isSelected = _currentSelection!.selectedMiddleArea?.code == middleArea.code;
                
                return FilterChip(
                  label: Text(middleArea.nameKo), // 한국어 이름 사용
                  selected: isSelected,
                  onSelected: (selected) {
                    _selectMiddleArea(selected ? middleArea : null);
                  },
                  selectedColor: Colors.green.shade200,
                  backgroundColor: Colors.grey.shade100,
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSmallAreaSelector() {
    final selectedMiddleArea = _currentSelection!.selectedMiddleArea!;
    final smallAreasAsync = ref.watch(smallAreasProvider(selectedMiddleArea.code));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '소지역 선택 (상세)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        smallAreasAsync.when(
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text('소지역 로드 실패: $error'),
          data: (smallAreas) {
            if (smallAreas.isEmpty) {
              return const Text('해당 중지역에 소지역이 없습니다');
            }

            return Wrap(
              spacing: 8,
              runSpacing: 4,
              children: smallAreas.map((smallArea) {
                final isSelected = _currentSelection!.selectedSmallArea?.code == smallArea.code;
                
                return FilterChip(
                  label: Text(smallArea.nameKo), // 한국어 이름 사용
                  selected: isSelected,
                  onSelected: (selected) {
                    _selectSmallArea(selected ? smallArea : null);
                  },
                  selectedColor: Colors.orange.shade200,
                  backgroundColor: Colors.grey.shade100,
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}