// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String?,
      familyName: json['familyName'] as String,
      coursesOfStudy: (json['coursesOfStudy'] as List<dynamic>)
          .map((e) => CourseOfStudy.fromJson(e as Map<String, dynamic>))
          .toList(),
      profilePicture: json['profilePicture'] == null
          ? null
          : ProfilePicture.fromJson(
              json['profilePicture'] as Map<String, dynamic>),
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      indexNumber: json['indexNumber'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      collection: json['collection'] as String,
      loginAttempts: (json['loginAttempts'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'familyName': instance.familyName,
      'coursesOfStudy': instance.coursesOfStudy,
      'profilePicture': instance.profilePicture,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'indexNumber': instance.indexNumber,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'collection': instance.collection,
      'loginAttempts': instance.loginAttempts,
    };
