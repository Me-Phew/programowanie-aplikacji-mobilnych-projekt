import 'package:flutter_application/wirtualny-sdk/models/course_of_study/course_of_study.dart';
import 'package:flutter_application/wirtualny-sdk/models/profilePicture/profile_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "middleName") required String? middleName,
    @JsonKey(name: "familyName") required String familyName,
    @JsonKey(name: "coursesOfStudy")
    required List<CourseOfStudy> coursesOfStudy,
    @JsonKey(name: "profilePicture") ProfilePicture? profilePicture,
    @JsonKey(name: "dateOfBirth") required DateTime dateOfBirth,
    @JsonKey(name: "indexNumber") required String indexNumber,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "collection") required String collection,
    @JsonKey(name: "loginAttempts") required int loginAttempts,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
