import 'dart:convert';

class Address {
  String country;
  String zipCode;
  String city;
  String street;
  String buildingNumber;

  Address({
    required this.country,
    required this.zipCode,
    required this.city,
    required this.street,
    required this.buildingNumber,
  });

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        country: json["country"],
        zipCode: json["zipCode"],
        city: json["city"],
        street: json["street"],
        buildingNumber: json["buildingNumber"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "zipCode": zipCode,
        "city": city,
        "street": street,
        "buildingNumber": buildingNumber,
      };
}

class Contact {
  List<PhoneNumber> phoneNumbers;
  String email;

  Contact({
    required this.phoneNumbers,
    required this.email,
  });

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        phoneNumbers: List<PhoneNumber>.from(
            json["phoneNumbers"].map((x) => PhoneNumber.fromJson(x))),
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "phoneNumbers": List<dynamic>.from(phoneNumbers.map((x) => x.toJson())),
        "email": email,
      };
}

class PhoneNumber {
  String id;
  String phoneNumber;
  String info;

  PhoneNumber({
    required this.id,
    required this.phoneNumber,
    required this.info,
  });

  factory PhoneNumber.fromRawJson(String str) =>
      PhoneNumber.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PhoneNumber.fromJson(Map<String, dynamic> json) => PhoneNumber(
        id: json["id"],
        phoneNumber: json["phoneNumber"],
        info: json["info"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "phoneNumber": phoneNumber,
        "info": info,
      };
}
