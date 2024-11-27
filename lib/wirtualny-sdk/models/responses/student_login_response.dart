import 'dart:convert';

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

  factory StudentLoginResponse.fromRawJson(String str) =>
      StudentLoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StudentLoginResponse.fromJson(Map<String, dynamic> json) =>
      StudentLoginResponse(
        message: json["message"],
        exp: json["exp"],
        token: json["token"],
        user: Student.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "exp": exp,
        "token": token,
        "user": user.toJson(),
      };
}
