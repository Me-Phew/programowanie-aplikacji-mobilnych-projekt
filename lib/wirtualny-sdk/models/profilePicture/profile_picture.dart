import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_picture.freezed.dart';
part 'profile_picture.g.dart';

@freezed
class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "thumbnailURL") String? thumbnailUrl,
    @JsonKey(name: "filename") required String filename,
    @JsonKey(name: "mimeType") required String mimeType,
    @JsonKey(name: "filesize") required int filesize,
    @JsonKey(name: "width") required int width,
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "focalX") required int focalX,
    @JsonKey(name: "focalY") required int focalY,
  }) = _ProfilePicture;

  factory ProfilePicture.fromJson(Map<String, dynamic> json) =>
      _$ProfilePictureFromJson(json);
}
