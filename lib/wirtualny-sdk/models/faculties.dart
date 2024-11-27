import 'dart:convert';

import 'common.dart';

class Faculty {
  int id;
  String name;
  int university;
  List<int> classrooms;
  List<int> coursesOfStudy;
  Address address;
  Contact contact;
  DateTime updatedAt;
  DateTime createdAt;

  Faculty({
    required this.id,
    required this.name,
    required this.university,
    required this.classrooms,
    required this.coursesOfStudy,
    required this.address,
    required this.contact,
    required this.updatedAt,
    required this.createdAt,
  });

  factory Faculty.fromRawJson(String str) => Faculty.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Faculty.fromJson(Map<String, dynamic> json) => Faculty(
        id: json["id"],
        name: json["name"],
        university: json["university"],
        classrooms: List<int>.from(json["classrooms"].map((x) => x)),
        coursesOfStudy: List<int>.from(json["coursesOfStudy"].map((x) => x)),
        address: Address.fromJson(json["address"]),
        contact: Contact.fromJson(json["contact"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "university": university,
        "classrooms": List<dynamic>.from(classrooms.map((x) => x)),
        "coursesOfStudy": List<dynamic>.from(coursesOfStudy.map((x) => x)),
        "address": address.toJson(),
        "contact": contact.toJson(),
        "updatedAt": updatedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
      };
}
