import 'package:flutter_application/wirtualny-sdk/models/lecturer_address/lecturer_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer {
  const factory Lecturer({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "academicTitles") required List<String> academicTitles,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "middleName") required String middleName,
    @JsonKey(name: "familyName") required String familyName,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "profilePicture") required dynamic profilePicture,
    @JsonKey(name: "address") required LecturerAddress address,
    @JsonKey(name: "phoneNumber") required String phoneNumber,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Lecturer;

  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);
}
