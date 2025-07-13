import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/genre/localized_genre.dart';
import 'package:japan_travel_guide/presentation/providers/genre_provider.dart';

/// 장르 선택 위젯
/// 
/// 글로벌 상태를 사용하여 현지화된 장르 목록을 표시하는 UI 컴포넌트
/// - 캐싱된 데이터로 빠른 로딩
/// - 한국어 장르명 표시
/// - 인기 장르와 기타 장르 구분
class GenreSelector extends ConsumerStatefulWidget {
  final Function(LocalizedGenre?) onGenreSelected;
  final LocalizedGenre? initialSelection;

  const GenreSelector({
    super.key,
    required this.onGenreSelected,
    this.initialSelection,
  });

  @override
  ConsumerState<GenreSelector> createState() => _GenreSelectorState();
}

class _GenreSelectorState extends ConsumerState<GenreSelector> {
  LocalizedGenre? _selectedGenre;

  @override
  void initState() {
    super.initState();
    _selectedGenre = widget.initialSelection;
  }

  void _selectGenre(LocalizedGenre? genre) {
    setState(() {
      _selectedGenre = genre;
    });
    widget.onGenreSelected(genre);
  }

  @override
  Widget build(BuildContext context) {
    final loadingState = ref.watch(genreLoadingStateProvider);
    
    return loadingState.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            const Text('장르 데이터를 불러올 수 없습니다'),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(forceRefreshGenreActionProvider)(),
              child: const Text('다시 시도'),
            ),
          ],
        ),
      ),
      data: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader('장르 선택'),
          const SizedBox(height: 8),
          _buildCurrentSelection(),
          const SizedBox(height: 16),
          _buildGenreGrid(),
        ],
      ),
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
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Row(
        children: [
          const Icon(Icons.restaurant, color: Colors.orange),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _selectedGenre?.nameKo ?? '전체 장르',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (_selectedGenre != null)
            TextButton(
              onPressed: () => _selectGenre(null),
              child: const Text('초기화'),
            ),
        ],
      ),
    );
  }

  Widget _buildGenreGrid() {
    final popularGenres = ref.watch(popularGenresProvider);
    final otherGenres = ref.watch(otherGenresProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (popularGenres.isNotEmpty) ...[
          const Text(
            '인기 장르',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          _buildGenreChips(popularGenres, isPrimary: true),
          const SizedBox(height: 16),
        ],
        if (otherGenres.isNotEmpty) ...[
          const Text(
            '기타 장르',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          _buildGenreChips(otherGenres),
        ],
      ],
    );
  }

  Widget _buildGenreChips(List<LocalizedGenre> genres, {bool isPrimary = false}) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: genres.map((genre) {
        final isSelected = _selectedGenre?.code == genre.code;
        
        return FilterChip(
          label: Text(genre.nameKo), // 한국어 이름 사용
          selected: isSelected,
          onSelected: (selected) {
            _selectGenre(selected ? genre : null);
          },
          selectedColor: isPrimary ? Colors.orange.shade300 : Colors.green.shade200,
          backgroundColor: Colors.grey.shade100,
          labelStyle: TextStyle(
            fontWeight: isPrimary ? FontWeight.w600 : FontWeight.normal,
          ),
        );
      }).toList(),
    );
  }
}