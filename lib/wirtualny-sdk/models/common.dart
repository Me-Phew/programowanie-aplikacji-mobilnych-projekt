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
}

class Contact {
  List<PhoneNumber> phoneNumbers;
  String email;

  Contact({
    required this.phoneNumbers,
    required this.email,
  });
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
}
