import 'package:flutter_application/wirtualny-sdk/models/profilePicture/profile_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_profile_picture_updated_response.freezed.dart';
part 'student_profile_picture_updated_response.g.dart';

@freezed
class StudentProfilePictureUpdatedResponse
    with _$StudentProfilePictureUpdatedResponse {
  const factory StudentProfilePictureUpdatedResponse({
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "doc") required ProfilePicture doc,
  }) = _StudentProfilePictureUpdatedResponse;

  factory StudentProfilePictureUpdatedResponse.fromJson(
          Map<String, dynamic> json) =>
      _$StudentProfilePictureUpdatedResponseFromJson(json);
}
