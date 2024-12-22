// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilePictureImpl _$$ProfilePictureImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePictureImpl(
      id: (json['id'] as num).toInt(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailURL'] as String?,
      filename: json['filename'] as String,
      mimeType: json['mimeType'] as String,
      filesize: (json['filesize'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      focalX: (json['focalX'] as num).toInt(),
      focalY: (json['focalY'] as num).toInt(),
    );

Map<String, dynamic> _$$ProfilePictureImplToJson(
        _$ProfilePictureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'url': instance.url,
      'thumbnailURL': instance.thumbnailUrl,
      'filename': instance.filename,
      'mimeType': instance.mimeType,
      'filesize': instance.filesize,
      'width': instance.width,
      'height': instance.height,
      'focalX': instance.focalX,
      'focalY': instance.focalY,
    };
