// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LectureImpl _$$LectureImplFromJson(Map<String, dynamic> json) =>
    _$LectureImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lecturer: (json['lecturer'] as num).toInt(),
      form: json['form'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      numberOfHours: (json['numberOfHours'] as num).toInt(),
      classroom: json['classroom'],
      isOnline: json['isOnline'] as bool,
      endTime: DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$LectureImplToJson(_$LectureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecturer': instance.lecturer,
      'form': instance.form,
      'startTime': instance.startTime.toIso8601String(),
      'numberOfHours': instance.numberOfHours,
      'classroom': instance.classroom,
      'isOnline': instance.isOnline,
      'endTime': instance.endTime.toIso8601String(),
    };
