// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckDataResponseImpl _$$CheckDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckDataResponseImpl(
      json['is_email_exists'] as bool,
      json['is_username_exists'] as bool,
    );

Map<String, dynamic> _$$CheckDataResponseImplToJson(
        _$CheckDataResponseImpl instance) =>
    <String, dynamic>{
      'is_email_exists': instance.email,
      'is_username_exists': instance.username,
    };
