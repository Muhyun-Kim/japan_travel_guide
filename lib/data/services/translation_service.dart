import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class TranslationService {
  static const String _baseUrl = 'https://api-free.deepl.com/v2';
  
  // .env에서 API 키 가져오기
  static String get _apiKey => dotenv.env['DEEPL_API_KEY'] ?? '';
  
  // 안전 제한
  static const int _dailyLimit = 16000; // 일일 16,000자
  static const int _monthlyLimit = 500000; // 월 50만자
  static const int _maxTextLength = 5000; // 한 번에 번역할 최대 길이

  // 사용량 추적 키
  static const String _dailyUsageKey = 'daily_translation_usage';
  static const String _monthlyUsageKey = 'monthly_translation_usage';
  static const String _lastUsageDateKey = 'last_usage_date';
  static const String _lastUsageMonthKey = 'last_usage_month';

  /// 텍스트 번역 (일본어 → 한국어 또는 영어)
  Future<String?> translateText(String text, {String targetLang = 'KO'}) async {
    if (text.isEmpty) return text;
    
    // API 키 확인
    if (_apiKey.isEmpty) {
      print('DeepL API key not found in .env');
      return null;
    }
    
    // 사용량 확인
    if (!await _canTranslate(text.length)) {
      print('Translation limit exceeded');
      return null; // 제한 초과 시 번역 안함
    }

    print('번역 시작: "$text" (${text.length}자) -> $targetLang');

    // 재시도 로직
    int maxRetries = 3;
    int retryDelay = 1000; // 1초부터 시작
    
    for (int attempt = 0; attempt < maxRetries; attempt++) {
      try {
        final response = await http.post(
          Uri.parse('$_baseUrl/translate'),
          headers: {
            'Authorization': 'DeepL-Auth-Key $_apiKey',
            'Content-Type': 'application/x-www-form-urlencoded',
          },
          body: {
            'text': text,
            'source_lang': 'JA', // 일본어
            'target_lang': targetLang, // 한국어(KO) 또는 영어(EN)
          },
        );

        print('API 응답 상태: ${response.statusCode} (시도 ${attempt + 1}/$maxRetries)');
        
        if (response.statusCode == 200) {
          final jsonResponse = json.decode(response.body);
          print('파싱된 JSON: $jsonResponse');
          
          // 안전한 배열 접근
          final translations = jsonResponse['translations'] as List?;
          if (translations == null || translations.isEmpty) {
            print('번역 결과가 비어있음: $translations');
            return null;
          }
          
          final firstTranslation = translations[0] as Map<String, dynamic>?;
          if (firstTranslation == null) {
            print('첫 번째 번역 결과가 null');
            return null;
          }
          
          final translatedText = firstTranslation['text'] as String?;
          if (translatedText == null) {
            print('번역된 텍스트가 null');
            return null;
          }
          
          print('번역 성공: "$text" -> "$translatedText"');
          
          // 사용량 기록
          await _recordUsage(text.length);
          
          return translatedText;
        } else if (response.statusCode == 429) {
          // Rate limit 에러 - 재시도
          print('Rate limit 도달 (429). ${retryDelay}ms 후 재시도...');
          if (attempt < maxRetries - 1) {
            await Future.delayed(Duration(milliseconds: retryDelay));
            retryDelay *= 2; // Exponential backoff
            continue;
          }
        } else {
          print('Translation API error: ${response.statusCode} - ${response.body}');
          return null;
        }
      } catch (e, stackTrace) {
        print('Translation error (시도 ${attempt + 1}): $e');
        if (attempt == maxRetries - 1) {
          print('Stack trace: $stackTrace');
        }
        
        // 마지막 시도가 아니면 잠시 대기 후 재시도
        if (attempt < maxRetries - 1) {
          await Future.delayed(Duration(milliseconds: retryDelay));
          retryDelay *= 2;
        }
      }
    }
    
    print('번역 완전 실패: $maxRetries회 시도 후 포기');
    return null;
  }

  /// 여러 텍스트 일괄 번역 (배치 처리)
  Future<List<String?>> translateMultiple(List<String> texts) async {
    if (texts.isEmpty) return [];
    
    // API 키 확인
    if (_apiKey.isEmpty) {
      print('DeepL API key not found in .env');
      return List.filled(texts.length, null);
    }
    
    // 빈 텍스트 필터링
    final validTexts = texts.where((text) => text.isNotEmpty).toList();
    if (validTexts.isEmpty) {
      return List.filled(texts.length, null);
    }
    
    // 전체 텍스트 길이 계산
    int totalLength = validTexts.fold(0, (sum, text) => sum + text.length);
    
    // 사용량 확인
    if (!await _canTranslate(totalLength)) {
      print('Translation limit exceeded for batch');
      return List.filled(texts.length, null);
    }

    print('배치 번역 시작: ${validTexts.length}개 텍스트 ($totalLength자)');
    for (int i = 0; i < validTexts.length; i++) {
      print('  [$i]: "${validTexts[i]}"');
    }

    try {
      // DeepL API는 여러 텍스트를 한 번에 처리할 수 있지만, 개별 처리가 더 안전함
      final results = <String?>[];
      
      for (final text in texts) {
        if (text.isEmpty) {
          results.add(null);
        } else {
          final translated = await translateText(text);
          results.add(translated);
          
          // API 호출 간격 (무료 플랜 rate limit 고려 - 최적화됨)
          await Future.delayed(const Duration(milliseconds: 500));
        }
      }
      
      print('배치 번역 완료: ${results.length}개 결과');
      return results;
      
    } catch (e, stackTrace) {
      print('Batch translation error: $e');
      print('Stack trace: $stackTrace');
      return List.filled(texts.length, null);
    }
  }

  /// 맛집 정보 번역 (구조화된 데이터용)
  /// - 주소: 영어로 번역 (구글맵 검색용)
  /// - 나머지: 한국어로 번역
  Future<Map<String, String?>> translateRestaurantInfo({
    required String name,
    required String catchPhrase,
    required String address,
    required String access,
    required String budget,
    required String genre, // 장르 추가
  }) async {
    print('맛집 정보 번역 시작:');
    print('  이름: "$name"');
    print('  캐치프레이즈: "$catchPhrase"');
    print('  주소: "$address" (영어로 번역)');
    print('  교통정보: "$access"');
    print('  예산: "$budget"');
    print('  장르: "$genre"');
    
    // 번역할 텍스트들과 타겟 언어 설정
    final translationTasks = <Map<String, dynamic>>[];
    
    if (name.isNotEmpty) {
      translationTasks.add({'field': 'name', 'text': name, 'lang': 'KO'});
    }
    if (catchPhrase.isNotEmpty) {
      translationTasks.add({'field': 'catchPhrase', 'text': catchPhrase, 'lang': 'KO'});
    }
    if (address.isNotEmpty) {
      translationTasks.add({'field': 'address', 'text': address, 'lang': 'EN'}); // 주소는 영어
    }
    if (access.isNotEmpty) {
      translationTasks.add({'field': 'access', 'text': access, 'lang': 'KO'});
    }
    if (budget.isNotEmpty) {
      translationTasks.add({'field': 'budget', 'text': budget, 'lang': 'KO'});
    }
    if (genre.isNotEmpty) {
      translationTasks.add({'field': 'genre', 'text': genre, 'lang': 'KO'});
    }

    print('번역 대상: ${translationTasks.length}개 필드');

    // 결과 초기화
    final result = <String, String?>{
      'name': null,
      'catchPhrase': null,
      'address': null,
      'access': null,
      'budget': null,
      'genre': null, // 장르 필드 추가
    };
    
    // 개별 번역 (안전하고 rate limit 고려)
    for (int i = 0; i < translationTasks.length; i++) {
      final task = translationTasks[i];
      final fieldName = task['field'] as String;
      final originalText = task['text'] as String;
      final targetLang = task['lang'] as String;
      
      print('번역 중: $fieldName = "$originalText" -> $targetLang');
      
      try {
        final translated = await translateText(originalText, targetLang: targetLang);
        result[fieldName] = translated;
        
        if (translated != null) {
          print('번역 성공: $fieldName = "$translated"');
        } else {
          print('번역 실패: $fieldName - 원문 유지');
        }
        
        // API 호출 간격 (rate limit 방지 - 최적화됨)
        if (i < translationTasks.length - 1) {
          print('다음 번역까지 500ms 대기...');
          await Future.delayed(const Duration(milliseconds: 500));
        }
      } catch (e) {
        print('필드 번역 실패: $fieldName, 에러: $e');
        result[fieldName] = null;
      }
    }
    
    print('맛집 정보 번역 완료: $result');
    return result;
  }

  /// 번역 가능 여부 확인
  Future<bool> _canTranslate(int textLength) async {
    final prefs = await SharedPreferences.getInstance();
    
    // 오늘 날짜 확인
    final today = DateTime.now();
    final todayString = '${today.year}-${today.month}-${today.day}';
    final thisMonth = '${today.year}-${today.month}';
    
    final lastDate = prefs.getString(_lastUsageDateKey) ?? '';
    final lastMonth = prefs.getString(_lastUsageMonthKey) ?? '';
    
    // 일일 사용량 확인
    int dailyUsage = 0;
    if (lastDate == todayString) {
      dailyUsage = prefs.getInt(_dailyUsageKey) ?? 0;
    }
    
    // 월간 사용량 확인
    int monthlyUsage = 0;
    if (lastMonth == thisMonth) {
      monthlyUsage = prefs.getInt(_monthlyUsageKey) ?? 0;
    }
    
    // 제한 확인
    if (dailyUsage + textLength > _dailyLimit) {
      print('Daily limit would be exceeded: $dailyUsage + $textLength > $_dailyLimit');
      return false;
    }
    
    if (monthlyUsage + textLength > _monthlyLimit) {
      print('Monthly limit would be exceeded: $monthlyUsage + $textLength > $_monthlyLimit');
      return false;
    }
    
    return true;
  }

  /// 사용량 기록
  Future<void> _recordUsage(int textLength) async {
    final prefs = await SharedPreferences.getInstance();
    
    final today = DateTime.now();
    final todayString = '${today.year}-${today.month}-${today.day}';
    final thisMonth = '${today.year}-${today.month}';
    
    final lastDate = prefs.getString(_lastUsageDateKey) ?? '';
    final lastMonth = prefs.getString(_lastUsageMonthKey) ?? '';
    
    // 일일 사용량 업데이트
    int dailyUsage = 0;
    if (lastDate == todayString) {
      dailyUsage = prefs.getInt(_dailyUsageKey) ?? 0;
    }
    await prefs.setInt(_dailyUsageKey, dailyUsage + textLength);
    await prefs.setString(_lastUsageDateKey, todayString);
    
    // 월간 사용량 업데이트
    int monthlyUsage = 0;
    if (lastMonth == thisMonth) {
      monthlyUsage = prefs.getInt(_monthlyUsageKey) ?? 0;
    }
    await prefs.setInt(_monthlyUsageKey, monthlyUsage + textLength);
    await prefs.setString(_lastUsageMonthKey, thisMonth);
    
    print('Translation usage recorded: $textLength chars (Daily: ${dailyUsage + textLength}/$_dailyLimit, Monthly: ${monthlyUsage + textLength}/$_monthlyLimit)');
  }

  /// 현재 사용량 조회
  Future<Map<String, int>> getUsageStats() async {
    final prefs = await SharedPreferences.getInstance();
    
    final today = DateTime.now();
    final todayString = '${today.year}-${today.month}-${today.day}';
    final thisMonth = '${today.year}-${today.month}';
    
    final lastDate = prefs.getString(_lastUsageDateKey) ?? '';
    final lastMonth = prefs.getString(_lastUsageMonthKey) ?? '';
    
    int dailyUsage = 0;
    if (lastDate == todayString) {
      dailyUsage = prefs.getInt(_dailyUsageKey) ?? 0;
    }
    
    int monthlyUsage = 0;
    if (lastMonth == thisMonth) {
      monthlyUsage = prefs.getInt(_monthlyUsageKey) ?? 0;
    }
    
    return {
      'daily': dailyUsage,
      'monthly': monthlyUsage,
      'dailyLimit': _dailyLimit,
      'monthlyLimit': _monthlyLimit,
    };
  }

  /// API 키 유효성 확인
  Future<bool> isApiKeyValid() async {
    if (_apiKey.isEmpty) return false;
    
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/translate'),
        headers: {
          'Authorization': 'DeepL-Auth-Key $_apiKey',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'text': 'test',
          'source_lang': 'JA',
          'target_lang': 'KO',
        },
      );
      
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
