// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekPartTimeScheduleImpl _$$WeekPartTimeScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekPartTimeScheduleImpl(
      saturday: (json['saturday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
      sunday: (json['sunday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekPartTimeScheduleImplToJson(
        _$WeekPartTimeScheduleImpl instance) =>
    <String, dynamic>{
      'saturday': instance.saturday,
      'sunday': instance.sunday,
    };

_$WeekFullTimeScheduleImpl _$$WeekFullTimeScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekFullTimeScheduleImpl(
      monday: (json['monday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
      tuesday: (json['tuesday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
      wednesday: (json['wednesday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
      thursday: (json['thursday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
      friday: (json['friday'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekFullTimeScheduleImplToJson(
        _$WeekFullTimeScheduleImpl instance) =>
    <String, dynamic>{
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
    };

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: (json['id'] as num).toInt(),
      courseOfStudy: (json['courseOfStudy'] as num).toInt(),
      weekAfullTimeSchedule: WeekFullTimeSchedule.fromJson(
          json['weekAfullTimeSchedule'] as Map<String, dynamic>),
      weekAPartTimeSchedule: WeekPartTimeSchedule.fromJson(
          json['weekAPartTimeSchedule'] as Map<String, dynamic>),
      weekBfullTimeSchedule: WeekFullTimeSchedule.fromJson(
          json['weekBfullTimeSchedule'] as Map<String, dynamic>),
      weekBPartTimeSchedule: WeekPartTimeSchedule.fromJson(
          json['weekBPartTimeSchedule'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseOfStudy': instance.courseOfStudy,
      'weekAfullTimeSchedule': instance.weekAfullTimeSchedule,
      'weekAPartTimeSchedule': instance.weekAPartTimeSchedule,
      'weekBfullTimeSchedule': instance.weekBfullTimeSchedule,
      'weekBPartTimeSchedule': instance.weekBPartTimeSchedule,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
