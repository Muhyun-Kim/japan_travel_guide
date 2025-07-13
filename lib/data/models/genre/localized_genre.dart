import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_genre.freezed.dart';
part 'localized_genre.g.dart';

/// 다국어 지원 장르 모델
@freezed
class LocalizedGenre with _$LocalizedGenre {
  const factory LocalizedGenre({
    /// 장르 코드 (예: G001, G002)
    required String code,
    
    /// 일본어 원문
    required String nameJa,
    
    /// 한국어 번역
    required String nameKo,
    
    /// 인기 장르 여부
    @Default(false) bool isPopular,
    
    /// 정렬 순서
    @Default(0) int sortOrder,
  }) = _LocalizedGenre;

  factory LocalizedGenre.fromJson(Map<String, dynamic> json) =>
      _$LocalizedGenreFromJson(json);
}

/// 한국어 장르 매핑 테이블
/// HotPepper API의 Genre Master 데이터를 한국어로 매핑
class GenreKoreanMapping {
  static const Map<String, LocalizedGenre> _genreMap = {
    // === 인기 장르 (일본 여행 시 자주 찾는 장르들) ===
    'G001': LocalizedGenre(
      code: 'G001',
      nameJa: '居酒屋',
      nameKo: '이자카야',
      isPopular: true,
      sortOrder: 1,
    ),
    'G002': LocalizedGenre(
      code: 'G002',
      nameJa: 'ダイニングバー',
      nameKo: '다이닝 바',
      isPopular: true,
      sortOrder: 2,
    ),
    'G004': LocalizedGenre(
      code: 'G004',
      nameJa: 'イタリアン・フレンチ',
      nameKo: '이탈리안/프렌치',
      isPopular: true,
      sortOrder: 3,
    ),
    'G005': LocalizedGenre(
      code: 'G005',
      nameJa: '中華',
      nameKo: '중화요리',
      isPopular: true,
      sortOrder: 4,
    ),
    'G006': LocalizedGenre(
      code: 'G006',
      nameJa: '焼肉・ホルモン',
      nameKo: '야키니쿠/호르몬',
      isPopular: true,
      sortOrder: 5,
    ),
    'G007': LocalizedGenre(
      code: 'G007',
      nameJa: '韓国料理',
      nameKo: '한국요리',
      isPopular: true,
      sortOrder: 6,
    ),
    'G008': LocalizedGenre(
      code: 'G008',
      nameJa: 'アジア・エスニック料理',
      nameKo: '아시안/에스닉',
      isPopular: true,
      sortOrder: 7,
    ),
    'G013': LocalizedGenre(
      code: 'G013',
      nameJa: 'ラーメン',
      nameKo: '라멘',
      isPopular: true,
      sortOrder: 8,
    ),
    'G014': LocalizedGenre(
      code: 'G014',
      nameJa: 'つけ麺',
      nameKo: '츠케멘',
      isPopular: true,
      sortOrder: 9,
    ),
    'G016': LocalizedGenre(
      code: 'G016',
      nameJa: 'お好み焼き・もんじゃ',
      nameKo: '오코노미야키/몬쟈야키',
      isPopular: true,
      sortOrder: 10,
    ),
    'G017': LocalizedGenre(
      code: 'G017',
      nameJa: 'カフェ・スイーツ',
      nameKo: '카페/디저트',
      isPopular: true,
      sortOrder: 11,
    ),

    // === 기타 장르 ===
    'G003': LocalizedGenre(
      code: 'G003',
      nameJa: '和食',
      nameKo: '일본요리',
      sortOrder: 12,
    ),
    'G009': LocalizedGenre(
      code: 'G009',
      nameJa: '各国料理',
      nameKo: '세계요리',
      sortOrder: 13,
    ),
    'G010': LocalizedGenre(
      code: 'G010',
      nameJa: 'カラオケ・パーティ',
      nameKo: '카라오케/파티',
      sortOrder: 14,
    ),
    'G011': LocalizedGenre(
      code: 'G011',
      nameJa: 'バー・カクテル',
      nameKo: '바/칵테일',
      sortOrder: 15,
    ),
    'G012': LocalizedGenre(
      code: 'G012',
      nameJa: 'その他グルメ',
      nameKo: '기타 음식',
      sortOrder: 16,
    ),
    'G015': LocalizedGenre(
      code: 'G015',
      nameJa: '汁なしラーメン',
      nameKo: '국물없는 라멘',
      sortOrder: 17,
    ),
    'G018': LocalizedGenre(
      code: 'G018',
      nameJa: 'その他',
      nameKo: '기타',
      sortOrder: 18,
    ),
  };

  /// 장르 코드로 LocalizedGenre 가져오기
  static LocalizedGenre? getGenre(String code) {
    return _genreMap[code];
  }

  /// 모든 장르 목록 가져오기 (정렬된 순서)
  static List<LocalizedGenre> getAllGenres() {
    final genres = _genreMap.values.toList();
    genres.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return genres;
  }

  /// 인기 장르 목록 가져오기
  static List<LocalizedGenre> getPopularGenres() {
    final genres = _genreMap.values.where((genre) => genre.isPopular).toList();
    genres.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return genres;
  }

  /// 기타 장르 목록 가져오기
  static List<LocalizedGenre> getOtherGenres() {
    final genres = _genreMap.values.where((genre) => !genre.isPopular).toList();
    genres.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return genres;
  }

  /// 장르 코드 목록
  static List<String> getAllGenreCodes() {
    return _genreMap.keys.toList();
  }

  /// 한국어 이름으로 검색
  static LocalizedGenre? findByKoreanName(String koreanName) {
    try {
      return _genreMap.values.firstWhere(
        (genre) => genre.nameKo == koreanName,
      );
    } catch (e) {
      return null;
    }
  }
}