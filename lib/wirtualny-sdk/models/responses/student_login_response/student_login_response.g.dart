// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentLoginResponseImpl _$$StudentLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentLoginResponseImpl(
      message: json['message'] as String,
      exp: (json['exp'] as num).toInt(),
      token: json['token'] as String,
      user: Student.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentLoginResponseImplToJson(
        _$StudentLoginResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'exp': instance.exp,
      'token': instance.token,
      'user': instance.user,
    };
