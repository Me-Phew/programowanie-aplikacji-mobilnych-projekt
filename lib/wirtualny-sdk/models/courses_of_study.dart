import 'dart:convert';

import 'faculties.dart';
import 'schedules.dart';

class CoursesOfStudy {
  int id;
  String fieldOfStudy;
  Faculty faculty;
  Schedule schedule;
  String courseType;
  String levelOfStudy;
  String obtainedTitle;
  int numberOfSemesters;
  int currentSemester;
  DateTime startDate;
  DateTime endDate;
  DateTime updatedAt;
  DateTime createdAt;

  CoursesOfStudy({
    required this.id,
    required this.fieldOfStudy,
    required this.faculty,
    required this.schedule,
    required this.courseType,
    required this.levelOfStudy,
    required this.obtainedTitle,
    required this.numberOfSemesters,
    required this.currentSemester,
    required this.startDate,
    required this.endDate,
    required this.updatedAt,
    required this.createdAt,
  });

  factory CoursesOfStudy.fromRawJson(String str) =>
      CoursesOfStudy.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoursesOfStudy.fromJson(Map<String, dynamic> json) => CoursesOfStudy(
        id: json["id"],
        fieldOfStudy: json["fieldOfStudy"],
        faculty: Faculty.fromJson(json["faculty"]),
        schedule: Schedule.fromJson(json["schedule"]),
        courseType: json["courseType"],
        levelOfStudy: json["levelOfStudy"],
        obtainedTitle: json["obtainedTitle"],
        numberOfSemesters: json["numberOfSemesters"],
        currentSemester: json["currentSemester"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fieldOfStudy": fieldOfStudy,
        "faculty": faculty.toJson(),
        "schedule": schedule.toJson(),
        "courseType": courseType,
        "levelOfStudy": levelOfStudy,
        "obtainedTitle": obtainedTitle,
        "numberOfSemesters": numberOfSemesters,
        "currentSemester": currentSemester,
        "startDate": startDate.toIso8601String(),
        "endDate": endDate.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
      };
}
