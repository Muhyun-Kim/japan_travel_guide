import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:japan_travel_guide/data/models/genre/localized_genre.dart';
import 'package:japan_travel_guide/data/models/hotpepper/response/master_response.dart';
import 'package:japan_travel_guide/data/services/api/hot_pepper_api.dart';

/// 장르 마스터 데이터 관리 서비스
/// 
/// - 앱 시작 시 한 번만 API 호출
/// - 로컬 캐싱으로 오프라인 지원
/// - 주기적 백그라운드 업데이트
/// - 한국어 매핑 통합 관리
class GenreMasterService {
  static const String _cacheKey = 'genre_master_cache';
  static const String _lastUpdateKey = 'genre_last_update';
  
  // 캐시 유효 기간: 7일
  static const Duration _cacheValidDuration = Duration(days: 7);
  
  final HotPepperApi _api;
  
  // 메모리 캐시
  List<CodeName>? _rawGenres;
  List<LocalizedGenre>? _localizedGenres;
  DateTime? _lastCacheTime;

  GenreMasterService({HotPepperApi? api}) : _api = api ?? HotPepperApi();

  /// 장르 데이터 초기화 (앱 시작 시 호출)
  Future<void> initialize() async {
    // 먼저 로컬 캐시에서 로드
    await _loadFromCache();
    
    // 캐시가 만료되었거나 없으면 API에서 새로 로드
    if (_shouldRefreshCache()) {
      await _refreshFromApi();
    }
    
    // 메모리에 localized genre 구성
    _buildLocalizedGenres();
  }

  /// 현지화된 장르 목록 가져오기
  List<LocalizedGenre> getLocalizedGenres() {
    return _localizedGenres ?? GenreKoreanMapping.getAllGenres();
  }

  /// 인기 장르 목록 가져오기
  List<LocalizedGenre> getPopularGenres() {
    if (_localizedGenres == null) {
      return GenreKoreanMapping.getPopularGenres();
    }
    return _localizedGenres!.where((genre) => genre.isPopular).toList();
  }

  /// 기타 장르 목록 가져오기
  List<LocalizedGenre> getOtherGenres() {
    if (_localizedGenres == null) {
      return GenreKoreanMapping.getOtherGenres();
    }
    return _localizedGenres!.where((genre) => !genre.isPopular).toList();
  }

  /// 장르 코드로 현지화된 장르 찾기
  LocalizedGenre? findGenreByCode(String code) {
    if (_localizedGenres == null) {
      return GenreKoreanMapping.getGenre(code);
    }
    
    try {
      return _localizedGenres!.firstWhere((genre) => genre.code == code);
    } catch (e) {
      return GenreKoreanMapping.getGenre(code);
    }
  }

  /// 백그라운드에서 캐시 갱신
  Future<void> refreshInBackground() async {
    try {
      await _refreshFromApi();
      _buildLocalizedGenres();
      print('Genre cache refreshed in background');
    } catch (e) {
      print('Background genre refresh failed: $e');
      // 실패해도 기존 캐시를 유지
    }
  }

  /// 캐시가 유효한지 확인
  bool get isCacheValid {
    if (_lastCacheTime == null) return false;
    return DateTime.now().difference(_lastCacheTime!) < _cacheValidDuration;
  }

  /// 캐시 강제 갱신
  Future<void> forceRefresh() async {
    await _refreshFromApi();
    _buildLocalizedGenres();
  }

  /// 캐시 정리
  void clearCache() {
    _rawGenres = null;
    _localizedGenres = null;
    _lastCacheTime = null;
  }

  /// 리소스 정리
  void dispose() {
    _api.dispose();
    clearCache();
  }

  // ==========================================================================
  // Private Methods
  // ==========================================================================

  /// 캐시 새로고침이 필요한지 확인
  bool _shouldRefreshCache() {
    return _rawGenres == null || 
           _lastCacheTime == null || 
           !isCacheValid;
  }

  /// API에서 새로운 데이터 가져오기
  Future<void> _refreshFromApi() async {
    try {
      print('Fetching genre master from API...');
      final response = await _api.getGenreMaster();
      _rawGenres = response.data;
      _lastCacheTime = DateTime.now();
      
      // 로컬 스토리지에 저장
      await _saveToCache();
      
      print('Genre master loaded: ${_rawGenres?.length} genres');
    } catch (e) {
      print('Failed to fetch genre master: $e');
      
      // API 실패 시 기존 캐시나 하드코딩된 데이터 사용
      if (_rawGenres == null) {
        _loadFallbackData();
      }
    }
  }

  /// 로컬 캐시에서 데이터 로드
  Future<void> _loadFromCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Raw genre 데이터 로드
      final rawGenreJson = prefs.getString(_cacheKey);
      if (rawGenreJson != null) {
        final List<dynamic> genreList = jsonDecode(rawGenreJson);
        _rawGenres = genreList.map((json) => CodeName.fromJson(json)).toList();
      }
      
      // 마지막 업데이트 시간 로드
      final lastUpdateMs = prefs.getInt(_lastUpdateKey);
      if (lastUpdateMs != null) {
        _lastCacheTime = DateTime.fromMillisecondsSinceEpoch(lastUpdateMs);
      }
      
      print('Genre cache loaded: ${_rawGenres?.length} genres');
    } catch (e) {
      print('Failed to load genre cache: $e');
    }
  }

  /// 로컬 캐시에 데이터 저장
  Future<void> _saveToCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Raw genre 데이터 저장
      if (_rawGenres != null) {
        final genreJson = jsonEncode(_rawGenres!.map((g) => g.toJson()).toList());
        await prefs.setString(_cacheKey, genreJson);
      }
      
      // 마지막 업데이트 시간 저장
      if (_lastCacheTime != null) {
        await prefs.setInt(_lastUpdateKey, _lastCacheTime!.millisecondsSinceEpoch);
      }
      
      print('Genre cache saved');
    } catch (e) {
      print('Failed to save genre cache: $e');
    }
  }

  /// 현지화된 장르 목록 구성
  void _buildLocalizedGenres() {
    if (_rawGenres == null) {
      _localizedGenres = GenreKoreanMapping.getAllGenres();
      return;
    }

    final localizedList = <LocalizedGenre>[];
    
    for (final rawGenre in _rawGenres!) {
      // 매핑 테이블에서 현지화된 정보 가져오기
      final localizedGenre = GenreKoreanMapping.getGenre(rawGenre.code);
      
      if (localizedGenre != null) {
        // 매핑된 한국어 정보 사용
        localizedList.add(localizedGenre);
      } else {
        // 매핑되지 않은 경우 일본어 원문 사용
        localizedList.add(LocalizedGenre(
          code: rawGenre.code,
          nameJa: rawGenre.name,
          nameKo: rawGenre.name, // 매핑이 없으면 일본어 그대로
          isPopular: false,
          sortOrder: 999, // 맨 뒤로
        ));
      }
    }
    
    // 정렬
    localizedList.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    _localizedGenres = localizedList;
    
    print('Localized genres built: ${_localizedGenres?.length} genres');
  }

  /// API 실패 시 fallback 데이터 로드
  void _loadFallbackData() {
    print('Loading fallback genre data...');
    _localizedGenres = GenreKoreanMapping.getAllGenres();
    _lastCacheTime = DateTime.now();
  }
}