import 'package:flutter_application/wirtualny-sdk/models/faculty_address/faculty_address.dart';
import 'package:flutter_application/wirtualny-sdk/models/classroom/classroom.dart';
import 'package:flutter_application/wirtualny-sdk/models/contact/contact.dart';
import 'package:flutter_application/wirtualny-sdk/models/course_of_study/course_of_study.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faculty.freezed.dart';
part 'faculty.g.dart';

@freezed
class Faculty with _$Faculty {
  const factory Faculty({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "classrooms") required List<Classroom> classrooms,
    @JsonKey(name: "coursesOfStudy")
    required List<CourseOfStudy> coursesOfStudy,
    @JsonKey(name: "address") required FacultyAddress address,
    @JsonKey(name: "contact") required Contact contact,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);
}
