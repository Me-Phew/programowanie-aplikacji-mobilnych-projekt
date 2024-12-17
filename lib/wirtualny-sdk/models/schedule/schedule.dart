import 'package:flutter_application/wirtualny-sdk/models/lecture/lecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class WeekPartTimeSchedule with _$WeekPartTimeSchedule {
  const factory WeekPartTimeSchedule({
    @JsonKey(name: "saturday") required List<Lecture> saturday,
    @JsonKey(name: "sunday") required List<Lecture> sunday,
  }) = _WeekPartTimeSchedule;

  factory WeekPartTimeSchedule.fromJson(Map<String, dynamic> json) =>
      _$WeekPartTimeScheduleFromJson(json);
}

@freezed
class WeekFullTimeSchedule with _$WeekFullTimeSchedule {
  const factory WeekFullTimeSchedule({
    @JsonKey(name: "monday") required List<Lecture> monday,
    @JsonKey(name: "tuesday") required List<Lecture> tuesday,
    @JsonKey(name: "wednesday") required List<Lecture> wednesday,
    @JsonKey(name: "thursday") required List<Lecture> thursday,
    @JsonKey(name: "friday") required List<Lecture> friday,
  }) = _WeekFullTimeSchedule;

  factory WeekFullTimeSchedule.fromJson(Map<String, dynamic> json) =>
      _$WeekFullTimeScheduleFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "courseOfStudy") required int courseOfStudy,
    @JsonKey(name: "weekAfullTimeSchedule")
    required WeekFullTimeSchedule weekAfullTimeSchedule,
    @JsonKey(name: "weekAPartTimeSchedule")
    required WeekPartTimeSchedule weekAPartTimeSchedule,
    @JsonKey(name: "weekBfullTimeSchedule")
    required WeekFullTimeSchedule weekBfullTimeSchedule,
    @JsonKey(name: "weekBPartTimeSchedule")
    required WeekPartTimeSchedule weekBPartTimeSchedule,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
