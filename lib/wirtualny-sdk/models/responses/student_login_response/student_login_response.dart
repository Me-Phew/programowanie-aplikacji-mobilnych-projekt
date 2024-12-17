import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';

part 'student_login_response.freezed.dart';
part 'student_login_response.g.dart';

@freezed
class StudentLoginResponse with _$StudentLoginResponse {
  const factory StudentLoginResponse({
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "exp") required int exp,
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "user") required Student user,
  }) = _StudentLoginResponse;

  factory StudentLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentLoginResponseFromJson(json);
}
