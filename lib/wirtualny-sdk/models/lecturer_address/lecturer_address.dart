import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_address.freezed.dart';
part 'lecturer_address.g.dart';

@freezed
class LecturerAddress with _$LecturerAddress {
  const factory LecturerAddress({
    @JsonKey(name: "street") required String street,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "zipCode") required String zipCode,
  }) = _LecturerAddress;

  factory LecturerAddress.fromJson(Map<String, dynamic> json) =>
      _$LecturerAddressFromJson(json);
}
