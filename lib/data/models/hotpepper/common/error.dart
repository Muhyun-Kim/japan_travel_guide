import 'package:freezed_annotation/freezed_annotation.dart';

import './json_converters.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class Error with _$Error {
  const factory Error({
    @SafeStringConverter()
    @JsonKey(name: 'message', defaultValue: '')
    required String message,
    @SafeIntConverter()
    @JsonKey(name: 'code', defaultValue: 0)
    required int code,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) =>
      _$ErrorFromJson(json);
}

@freezed
class HotPepperError with _$HotPepperError {
  const factory HotPepperError({
    @SafeStringConverter()
    @JsonKey(name: 'api_version', defaultValue: 'unknown')
    required String apiVersion,
    @SafeStringConverter()
    @JsonKey(name: 'error')
    required Error error,
  }) = _HotPepperError;

  factory HotPepperError.fromJson(Map<String, dynamic> json) =>
      _$HotPepperErrorFromJson(json);
}
