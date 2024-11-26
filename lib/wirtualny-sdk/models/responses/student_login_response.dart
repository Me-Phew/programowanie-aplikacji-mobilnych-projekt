import '../students.dart';

class StudentLoginResponse {
  String message;
  int exp;
  String token;
  Student user;

  StudentLoginResponse({
    required this.message,
    required this.exp,
    required this.token,
    required this.user,
  });
}
