// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile_picture_updated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentProfilePictureUpdatedResponseImpl
    _$$StudentProfilePictureUpdatedResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentProfilePictureUpdatedResponseImpl(
          message: json['message'] as String,
          doc: ProfilePicture.fromJson(json['doc'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StudentProfilePictureUpdatedResponseImplToJson(
        _$StudentProfilePictureUpdatedResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'doc': instance.doc,
    };
