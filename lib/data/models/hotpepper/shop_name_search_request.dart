import 'common_enums.dart';

/// Hotpepper Shop Name Search API Request 파라미터
class ShopNameSearchRequest {
  /// 키워드 검색 (필수 중 하나)
  final List<String>? keyword; // キーワード (스페이스로 AND 검색)
  
  /// 전화번호 검색 (필수 중 하나)
  final String? tel; // 電話番号 (하이픈 없는 반각숫자, 완전 일치)
  
  /// 페이징 파라미터
  final int? start; // 検索の開始位置 (기본값: 1)
  final int? count; // 1ページあたりの取得数 (기본값: 30, 최소 1, 최대 30)
  
  /// 응답 형식
  final ResponseFormat? format; // レスポンス形式

  const ShopNameSearchRequest({
    this.keyword,
    this.tel,
    this.start,
    this.count,
    this.format,
  });

  /// HTTP Query Parameter로 변환
  Map<String, String> toQueryParams() {
    final Map<String, String> params = {};

    // 키워드 검색
    if (keyword != null && keyword!.isNotEmpty) {
      params['keyword'] = keyword!.join(' '); // 스페이스로 AND 검색
    }

    // 전화번호 검색
    if (tel != null) {
      params['tel'] = tel!;
    }

    // 페이징 파라미터
    if (start != null) {
      params['start'] = start!.toString();
    }
    if (count != null) {
      // 최대 30개로 제한
      final limitedCount = count! > 30 ? 30 : count!;
      params['count'] = limitedCount.toString();
    }

    // 응답 형식
    if (format != null) {
      params['format'] = format!.value;
    }

    return params;
  }

  /// 유효성 검증
  bool isValid() {
    // keyword나 tel 중 하나는 반드시 있어야 함
    return (keyword != null && keyword!.isNotEmpty) || 
           (tel != null && tel!.isNotEmpty);
  }

  /// copyWith 메서드
  ShopNameSearchRequest copyWith({
    List<String>? keyword,
    String? tel,
    int? start,
    int? count,
    ResponseFormat? format,
  }) {
    return ShopNameSearchRequest(
      keyword: keyword ?? this.keyword,
      tel: tel ?? this.tel,
      start: start ?? this.start,
      count: count ?? this.count,
      format: format ?? this.format,
    );
  }

  @override
  String toString() {
    return 'ShopNameSearchRequest(keyword: $keyword, tel: $tel, start: $start, count: $count, format: $format)';
  }
}
