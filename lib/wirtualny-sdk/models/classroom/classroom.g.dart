// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomImpl _$$ClassroomImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomImpl(
      id: (json['id'] as num).toInt(),
      faculty: json['faculty'],
      floorNumber: (json['floorNumber'] as num).toInt(),
      roomNumber: (json['roomNumber'] as num).toInt(),
      title: json['title'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ClassroomImplToJson(_$ClassroomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'faculty': instance.faculty,
      'floorNumber': instance.floorNumber,
      'roomNumber': instance.roomNumber,
      'title': instance.title,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
