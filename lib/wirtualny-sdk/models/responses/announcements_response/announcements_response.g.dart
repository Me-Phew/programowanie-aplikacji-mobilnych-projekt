// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcements_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementsResponseImpl _$$AnnouncementsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementsResponseImpl(
      docs: (json['docs'] as List<dynamic>)
          .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNextPage: json['hasNextPage'] as bool,
      hasPrevPage: json['hasPrevPage'] as bool,
      limit: (json['limit'] as num).toInt(),
      nextPage: (json['nextPage'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pagingCounter: (json['pagingCounter'] as num).toInt(),
      prevPage: json['prevPage'],
      totalDocs: (json['totalDocs'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$AnnouncementsResponseImplToJson(
        _$AnnouncementsResponseImpl instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
      'limit': instance.limit,
      'nextPage': instance.nextPage,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'prevPage': instance.prevPage,
      'totalDocs': instance.totalDocs,
      'totalPages': instance.totalPages,
    };
