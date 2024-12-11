// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      country: json['country'] as String,
      zipCode: json['zipCode'] as String,
      city: json['city'] as String,
      street: json['street'] as String,
      buildingNumber: json['buildingNumber'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'zipCode': instance.zipCode,
      'city': instance.city,
      'street': instance.street,
      'buildingNumber': instance.buildingNumber,
    };
