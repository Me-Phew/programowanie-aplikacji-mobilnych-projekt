import 'package:flutter_application/wirtualny-sdk/models/faculty/faculty.dart';
import 'package:flutter_application/wirtualny-sdk/models/schedule/schedule.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_of_study.freezed.dart';
part 'course_of_study.g.dart';

@freezed
class CourseOfStudy with _$CourseOfStudy {
  const factory CourseOfStudy({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "fieldOfStudy") required String fieldOfStudy,
    @JsonKey(name: "faculty") required Faculty faculty,
    @JsonKey(name: "schedule") required Schedule schedule,
    @JsonKey(name: "courseType") required String courseType,
    @JsonKey(name: "levelOfStudy") required String levelOfStudy,
    @JsonKey(name: "obtainedTitle") required String obtainedTitle,
    @JsonKey(name: "numberOfSemesters") required int numberOfSemesters,
    @JsonKey(name: "currentSemester") required int currentSemester,
    @JsonKey(name: "startDate") required DateTime startDate,
    @JsonKey(name: "endDate") required DateTime endDate,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _CourseOfStudy;

  factory CourseOfStudy.fromJson(Map<String, dynamic> json) =>
      _$CourseOfStudyFromJson(json);
}
