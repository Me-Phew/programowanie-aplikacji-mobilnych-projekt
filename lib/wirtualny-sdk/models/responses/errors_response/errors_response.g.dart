// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorsResponseImpl _$$ErrorsResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorsResponseImpl(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ErrorsResponseImplToJson(
        _$ErrorsResponseImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
