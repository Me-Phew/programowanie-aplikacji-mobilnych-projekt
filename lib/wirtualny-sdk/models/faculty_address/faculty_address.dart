import 'package:freezed_annotation/freezed_annotation.dart';

part 'faculty_address.freezed.dart';
part 'faculty_address.g.dart';

@freezed
class FacultyAddress with _$FacultyAddress {
  const factory FacultyAddress({
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "zipCode") required String zipCode,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "street") required String street,
    @JsonKey(name: "buildingNumber") required String buildingNumber,
  }) = _Address;

  factory FacultyAddress.fromJson(Map<String, dynamic> json) =>
      _$FacultyAddressFromJson(json);
}
