import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "isBroadcast") required bool isBroadcast,
    // @JsonKey(name: "recipients") required List<Recipient> recipients,
    @JsonKey(name: "subject") required String subject,
    // @JsonKey(name: "content") required Content content,
    @JsonKey(name: "content_html") required String contentHtml,
    @JsonKey(name: "priority") required String priority,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
