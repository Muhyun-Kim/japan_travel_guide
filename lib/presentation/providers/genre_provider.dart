import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japan_travel_guide/data/models/genre/localized_genre.dart';
import 'package:japan_travel_guide/data/services/genre_master_service.dart';

// ==========================================================================
// Service Provider
// ==========================================================================

/// GenreMasterService 싱글톤 프로바이더
final genreMasterServiceProvider = Provider<GenreMasterService>((
  ref,
) {
  final service = GenreMasterService();

  // 프로바이더가 dispose될 때 서비스도 정리
  ref.onDispose(() {
    service.dispose();
  });

  return service;
});

// ==========================================================================
// State Providers
// ==========================================================================

/// 장르 초기화 상태 프로바이더
final genreInitializationProvider = FutureProvider<void>((ref) async {
  final service = ref.read(genreMasterServiceProvider);
  await service.initialize();
});

/// 현재 선택된 장르 프로바이더
final selectedGenreProvider = StateProvider<LocalizedGenre?>(
  (ref) => null,
);

// ==========================================================================
// Data Providers
// ==========================================================================

/// 모든 현지화된 장르 목록 프로바이더
final localizedGenresProvider = Provider<List<LocalizedGenre>>((ref) {
  // 초기화 상태를 watch하여 초기화 완료 후 데이터 제공
  ref.watch(genreInitializationProvider);

  final service = ref.read(genreMasterServiceProvider);
  return service.getLocalizedGenres();
});

/// 인기 장르 목록 프로바이더
final popularGenresProvider = Provider<List<LocalizedGenre>>((ref) {
  ref.watch(genreInitializationProvider);

  final service = ref.read(genreMasterServiceProvider);
  return service.getPopularGenres();
});

/// 기타 장르 목록 프로바이더
final otherGenresProvider = Provider<List<LocalizedGenre>>((ref) {
  ref.watch(genreInitializationProvider);

  final service = ref.read(genreMasterServiceProvider);
  return service.getOtherGenres();
});

// ==========================================================================
// Utility Providers
// ==========================================================================

/// 장르 코드로 현지화된 장르 찾기
final genreByCodeProvider = Provider.family<LocalizedGenre?, String>((
  ref,
  code,
) {
  ref.watch(genreInitializationProvider);

  final service = ref.read(genreMasterServiceProvider);
  return service.findGenreByCode(code);
});

/// 선택된 장르의 한국어 이름
final selectedGenreNameProvider = Provider<String?>((ref) {
  final selectedGenre = ref.watch(selectedGenreProvider);
  return selectedGenre?.nameKo;
});

/// 선택된 장르의 코드
final selectedGenreCodeProvider = Provider<String?>((ref) {
  final selectedGenre = ref.watch(selectedGenreProvider);
  return selectedGenre?.code;
});

// ==========================================================================
// Action Providers
// ==========================================================================

/// 장르 선택 액션
final selectGenreActionProvider =
    Provider<void Function(LocalizedGenre?)>((ref) {
      return (genre) {
        ref.read(selectedGenreProvider.notifier).state = genre;
      };
    });

/// 장르 선택 해제 액션
final clearGenreSelectionActionProvider = Provider<VoidCallback>((
  ref,
) {
  return () {
    ref.read(selectedGenreProvider.notifier).state = null;
  };
});

/// 백그라운드 캐시 갱신 액션
final refreshGenreCacheActionProvider =
    Provider<Future<void> Function()>((ref) {
      return () async {
        final service = ref.read(genreMasterServiceProvider);
        await service.refreshInBackground();

        // 프로바이더들을 invalidate하여 새로운 데이터로 갱신
        ref.invalidate(localizedGenresProvider);
        ref.invalidate(popularGenresProvider);
        ref.invalidate(otherGenresProvider);
      };
    });

/// 강제 새로고침 액션
final forceRefreshGenreActionProvider =
    Provider<Future<void> Function()>((ref) {
      return () async {
        final service = ref.read(genreMasterServiceProvider);
        await service.forceRefresh();

        // 모든 관련 프로바이더 invalidate
        ref.invalidate(genreInitializationProvider);
        ref.invalidate(localizedGenresProvider);
        ref.invalidate(popularGenresProvider);
        ref.invalidate(otherGenresProvider);
      };
    });

// ==========================================================================
// Status Providers
// ==========================================================================

/// 장르 데이터 로딩 상태
final genreLoadingStateProvider = Provider<AsyncValue<void>>((ref) {
  return ref.watch(genreInitializationProvider);
});

/// 장르 캐시 유효성 상태
final genreCacheValidityProvider = Provider<bool>((ref) {
  final service = ref.read(genreMasterServiceProvider);
  return service.isCacheValid;
});

// ==========================================================================
// Search & Filter Providers
// ==========================================================================

/// 장르 검색 텍스트
final genreSearchTextProvider = StateProvider<String>((ref) => '');

/// 검색된 장르 목록
final filteredGenresProvider = Provider<List<LocalizedGenre>>((ref) {
  final searchText = ref.watch(genreSearchTextProvider).toLowerCase();
  final allGenres = ref.watch(localizedGenresProvider);

  if (searchText.isEmpty) {
    return allGenres;
  }

  return allGenres.where((genre) {
    return genre.nameKo.toLowerCase().contains(searchText) ||
        genre.nameJa.toLowerCase().contains(searchText) ||
        genre.code.toLowerCase().contains(searchText);
  }).toList();
});

/// 검색된 인기 장르 목록
final filteredPopularGenresProvider = Provider<List<LocalizedGenre>>((
  ref,
) {
  final filteredGenres = ref.watch(filteredGenresProvider);
  return filteredGenres.where((genre) => genre.isPopular).toList();
});

/// 검색된 기타 장르 목록
final filteredOtherGenresProvider = Provider<List<LocalizedGenre>>((
  ref,
) {
  final filteredGenres = ref.watch(filteredGenresProvider);
  return filteredGenres.where((genre) => !genre.isPopular).toList();
});
