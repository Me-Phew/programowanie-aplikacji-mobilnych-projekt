// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerImpl _$$LecturerImplFromJson(Map<String, dynamic> json) =>
    _$LecturerImpl(
      id: (json['id'] as num).toInt(),
      academicTitles: (json['academicTitles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      familyName: json['familyName'] as String,
      title: json['title'] as String,
      profilePicture: json['profilePicture'],
      address:
          LecturerAddress.fromJson(json['address'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$LecturerImplToJson(_$LecturerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'academicTitles': instance.academicTitles,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'familyName': instance.familyName,
      'title': instance.title,
      'profilePicture': instance.profilePicture,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
