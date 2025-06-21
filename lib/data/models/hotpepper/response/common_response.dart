/// Hotpepper API 공통 응답 구조
class HotpepperApiResponse<T> {
  final String apiVersion;
  final int resultsAvailable;
  final int resultsReturned;
  final int resultsStart;
  final List<T> data;

  const HotpepperApiResponse({
    required this.apiVersion,
    required this.resultsAvailable,
    required this.resultsReturned,
    required this.resultsStart,
    required this.data,
  });

  factory HotpepperApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
    String dataKey,
  ) {
    final results = json['results'] as Map<String, dynamic>;
    final dataList = results[dataKey] as List<dynamic>? ?? [];
    
    return HotpepperApiResponse<T>(
      apiVersion: results['api_version'] as String,
      resultsAvailable: results['results_available'] as int,
      resultsReturned: results['results_returned'] as int,
      resultsStart: results['results_start'] as int,
      data: dataList
          .map((item) => fromJsonT(item as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T) toJsonT,
    String dataKey,
  ) {
    return {
      'results': {
        'api_version': apiVersion,
        'results_available': resultsAvailable,
        'results_returned': resultsReturned,
        'results_start': resultsStart,
        dataKey: data.map((item) => toJsonT(item)).toList(),
      },
    };
  }

  @override
  String toString() {
    return 'HotpepperApiResponse(apiVersion: $apiVersion, resultsAvailable: $resultsAvailable, resultsReturned: $resultsReturned, resultsStart: $resultsStart, dataCount: ${data.length})';
  }
}

/// 에러 응답 모델
class HotpepperErrorResponse {
  final String message;
  final String code;

  const HotpepperErrorResponse({
    required this.message,
    required this.code,
  });

  factory HotpepperErrorResponse.fromJson(Map<String, dynamic> json) {
    final results = json['results'] as Map<String, dynamic>;
    final error = results['error'] as Map<String, dynamic>;
    
    return HotpepperErrorResponse(
      message: error['message'] as String,
      code: error['code'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'results': {
        'error': {
          'message': message,
          'code': code,
        },
      },
    };
  }

  @override
  String toString() {
    return 'HotpepperErrorResponse(message: $message, code: $code)';
  }
}

/// API 응답 상태를 나타내는 sealed class
sealed class HotpepperResponse<T> {
  const HotpepperResponse();
}

/// 성공 응답
class HotpepperSuccessResponse<T> extends HotpepperResponse<T> {
  final HotpepperApiResponse<T> data;

  const HotpepperSuccessResponse(this.data);
}

/// 에러 응답
class HotpepperErrorResponseWrapper<T> extends HotpepperResponse<T> {
  final HotpepperErrorResponse error;

  const HotpepperErrorResponseWrapper(this.error);
}
