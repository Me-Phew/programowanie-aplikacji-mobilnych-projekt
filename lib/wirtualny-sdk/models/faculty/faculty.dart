import 'package:flutter_application/wirtualny-sdk/models/address/address.dart';
import 'package:flutter_application/wirtualny-sdk/models/contact/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faculty.freezed.dart';
part 'faculty.g.dart';

@freezed
class Faculty with _$Faculty {
  const factory Faculty({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "university") required int university,
    @JsonKey(name: "classrooms") required List<int> classrooms,
    @JsonKey(name: "coursesOfStudy") required List<int> coursesOfStudy,
    @JsonKey(name: "address") required Address address,
    @JsonKey(name: "contact") required Contact contact,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);
}
