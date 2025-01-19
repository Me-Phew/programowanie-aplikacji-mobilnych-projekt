// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementImpl _$$AnnouncementImplFromJson(Map<String, dynamic> json) =>
    _$AnnouncementImpl(
      id: (json['id'] as num).toInt(),
      isBroadcast: json['isBroadcast'] as bool,
      subject: json['subject'] as String,
      contentHtml: json['content_html'] as String,
      priority: json['priority'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$AnnouncementImplToJson(_$AnnouncementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isBroadcast': instance.isBroadcast,
      'subject': instance.subject,
      'content_html': instance.contentHtml,
      'priority': instance.priority,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
