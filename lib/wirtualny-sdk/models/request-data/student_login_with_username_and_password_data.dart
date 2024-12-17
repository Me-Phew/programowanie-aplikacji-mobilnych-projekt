import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_login_with_username_and_password_data.freezed.dart';
part 'student_login_with_username_and_password_data.g.dart';

@freezed
class StudentLoginWithUsernameAndPasswordData
    with _$StudentLoginWithUsernameAndPasswordData {
  const factory StudentLoginWithUsernameAndPasswordData({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "password") required String password,
  }) = _StudentLoginWithUsernameAndPasswordData;

  factory StudentLoginWithUsernameAndPasswordData.fromJson(
          Map<String, dynamic> json) =>
      _$StudentLoginWithUsernameAndPasswordDataFromJson(json);
}
