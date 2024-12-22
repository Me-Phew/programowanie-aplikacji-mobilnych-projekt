// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacultyImpl _$$FacultyImplFromJson(Map<String, dynamic> json) =>
    _$FacultyImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      classrooms: (json['classrooms'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      coursesOfStudy: (json['coursesOfStudy'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$FacultyImplToJson(_$FacultyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'classrooms': instance.classrooms,
      'coursesOfStudy': instance.coursesOfStudy,
      'address': instance.address,
      'contact': instance.contact,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
