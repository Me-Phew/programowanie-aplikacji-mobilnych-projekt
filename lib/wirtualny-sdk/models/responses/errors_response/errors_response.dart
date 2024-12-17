import 'package:freezed_annotation/freezed_annotation.dart';

part 'errors_response.freezed.dart';
part 'errors_response.g.dart';

@freezed
class ErrorsResponse with _$ErrorsResponse {
  const factory ErrorsResponse({
    @JsonKey(name: "errors") required List<Error> errors,
  }) = _ErrorsResponse;

  factory ErrorsResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorsResponseFromJson(json);
}

@freezed
class Error with _$Error {
  const factory Error({
    @JsonKey(name: "message") required String message,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
