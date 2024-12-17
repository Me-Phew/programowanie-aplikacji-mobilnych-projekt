import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "zipCode") required String zipCode,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "street") required String street,
    @JsonKey(name: "buildingNumber") required String buildingNumber,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
