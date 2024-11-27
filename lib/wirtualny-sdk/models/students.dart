import 'dart:convert';

import 'courses_of_study.dart';

class Student {
  int id;
  String firstName;
  dynamic middleName;
  String familyName;
  List<CoursesOfStudy> coursesOfStudy;
  DateTime dateOfBirth;
  DateTime updatedAt;
  DateTime createdAt;
  String collection;
  int loginAttempts;

  Student({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.familyName,
    required this.coursesOfStudy,
    required this.dateOfBirth,
    required this.updatedAt,
    required this.createdAt,
    required this.collection,
    required this.loginAttempts,
  });

  factory Student.fromRawJson(String str) => Student.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        firstName: json["firstName"],
        middleName: json["middleName"],
        familyName: json["familyName"],
        coursesOfStudy: List<CoursesOfStudy>.from(
            json["coursesOfStudy"].map((x) => CoursesOfStudy.fromJson(x))),
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdAt: DateTime.parse(json["createdAt"]),
        collection: json["collection"],
        loginAttempts: json["loginAttempts"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "middleName": middleName,
        "familyName": familyName,
        "coursesOfStudy":
            List<dynamic>.from(coursesOfStudy.map((x) => x.toJson())),
        "dateOfBirth": dateOfBirth.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "collection": collection,
        "loginAttempts": loginAttempts,
      };
}
