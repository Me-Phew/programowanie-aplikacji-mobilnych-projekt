// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_of_study.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseOfStudyImpl _$$CourseOfStudyImplFromJson(Map<String, dynamic> json) =>
    _$CourseOfStudyImpl(
      id: (json['id'] as num).toInt(),
      fieldOfStudy: json['fieldOfStudy'] as String,
      faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
      schedule: Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      courseType: json['courseType'] as String,
      levelOfStudy: json['levelOfStudy'] as String,
      obtainedTitle: json['obtainedTitle'] as String,
      numberOfSemesters: (json['numberOfSemesters'] as num).toInt(),
      currentSemester: (json['currentSemester'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CourseOfStudyImplToJson(_$CourseOfStudyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fieldOfStudy': instance.fieldOfStudy,
      'faculty': instance.faculty,
      'schedule': instance.schedule,
      'courseType': instance.courseType,
      'levelOfStudy': instance.levelOfStudy,
      'obtainedTitle': instance.obtainedTitle,
      'numberOfSemesters': instance.numberOfSemesters,
      'currentSemester': instance.currentSemester,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
