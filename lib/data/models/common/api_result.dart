import 'package:freezed_annotation/freezed_annotation.dart';

import '../hotpepper/common/error.dart';

part 'api_result.freezed.dart';

/// API 호출 결과를 나타내는 Union 타입
/// 
/// TypeScript의 Union 타입과 유사하게 동작합니다:
/// - success: API 호출 성공 시 데이터 반환
/// - apiError: HotPepper API에서 반환한 에러
/// - httpError: HTTP 상태 코드 에러 (4xx, 5xx)
/// - networkError: 네트워크 연결 오류, JSON 파싱 오료 등
///
/// 사용 예시:
/// ```dart
/// final result = await api.getBudgetMaster();
/// 
/// result.when(
///   success: (data) => print('성공: ${data.budgets.length}개'),
///   apiError: (error) => print('API 에러: ${error.error.message}'),
///   httpError: (code, message) => print('HTTP $code: $message'),
///   networkError: (message) => print('네트워크 에러: $message'),
/// );
/// ```
@freezed
class ApiResult<T> with _$ApiResult<T> {
  /// API 호출 성공
  const factory ApiResult.success(T data) = ApiSuccess<T>;
  
  /// HotPepper API 에러 응답
  const factory ApiResult.apiError(HotPepperError error) = ApiError<T>;
  
  /// HTTP 상태 코드 에러 (4xx, 5xx)
  const factory ApiResult.httpError(int statusCode, String message) = HttpError<T>;
  
  /// 네트워크 연결 오류, JSON 파싱 오류 등
  const factory ApiResult.networkError(String message) = NetworkError<T>;
}

/// 편의를 위한 확장 메서드들
extension ApiResultExtension<T> on ApiResult<T> {
  /// 성공 시 데이터 반환, 실패 시 null
  T? get dataOrNull => maybeWhen(
    success: (data) => data,
    orElse: () => null,
  );
  
  /// 성공 여부 확인
  bool get isSuccess => maybeWhen(
    success: (_) => true,
    orElse: () => false,
  );
  
  /// 에러 여부 확인
  bool get isError => !isSuccess;
  
  /// 에러 메시지 반환 (모든 에러 타입 통합)
  String? get errorMessage => maybeWhen(
    apiError: (error) => error.error.message,
    httpError: (_, message) => message,
    networkError: (message) => message,
    orElse: () => null,
  );
}
