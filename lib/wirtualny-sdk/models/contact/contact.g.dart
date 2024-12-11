// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhoneNumberImpl _$$PhoneNumberImplFromJson(Map<String, dynamic> json) =>
    _$PhoneNumberImpl(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String,
      info: json['info'] as String,
    );

Map<String, dynamic> _$$PhoneNumberImplToJson(_$PhoneNumberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'info': instance.info,
    };

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => PhoneNumber.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'phoneNumbers': instance.phoneNumbers,
      'email': instance.email,
    };
