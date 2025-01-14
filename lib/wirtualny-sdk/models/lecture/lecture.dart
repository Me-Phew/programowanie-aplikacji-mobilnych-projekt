import 'package:flutter_application/wirtualny-sdk/models/classroom/classroom.dart';
import 'package:flutter_application/wirtualny-sdk/models/lecturer/lecturer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture.freezed.dart';
part 'lecture.g.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "lecturer") required Lecturer lecturer,
    @JsonKey(name: "form") required String form,
    @JsonKey(name: "startTime") required DateTime startTime,
    @JsonKey(name: "numberOfHours") required int numberOfHours,
    @JsonKey(name: "classroom") required Classroom classroom,
    @JsonKey(name: "isOnline") required bool isOnline,
    @JsonKey(name: "endTime") required DateTime endTime,
  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) =>
      _$LectureFromJson(json);
}
