import 'package:flutter_application/wirtualny-sdk/models/announcemnet/announcement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcements_response.freezed.dart';
part 'announcements_response.g.dart';

@freezed
class AnnouncementsResponse with _$AnnouncementsResponse {
  const factory AnnouncementsResponse({
    @JsonKey(name: "docs") required List<Announcement> docs,
    @JsonKey(name: "hasNextPage") required bool? hasNextPage,
    @JsonKey(name: "hasPrevPage") required bool? hasPrevPage,
    @JsonKey(name: "limit") required int? limit,
    @JsonKey(name: "nextPage") required int? nextPage,
    @JsonKey(name: "page") required int? page,
    @JsonKey(name: "pagingCounter") required int? pagingCounter,
    @JsonKey(name: "prevPage") required int? prevPage,
    @JsonKey(name: "totalDocs") required int? totalDocs,
    @JsonKey(name: "totalPages") required int? totalPages,
  }) = _AnnouncementsResponse;

  factory AnnouncementsResponse.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsResponseFromJson(json);
}
