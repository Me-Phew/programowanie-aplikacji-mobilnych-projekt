import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "phoneNumber") required String phoneNumber,
    @JsonKey(name: "info") required String info,
  }) = _PhoneNumber;

  factory PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    @JsonKey(name: "phoneNumbers") required List<PhoneNumber> phoneNumbers,
    @JsonKey(name: "email") required String email,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
