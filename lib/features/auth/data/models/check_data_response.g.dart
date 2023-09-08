// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckDataResponse _$$_CheckDataResponseFromJson(Map<String, dynamic> json) =>
    _$_CheckDataResponse(
      email: json['is_email_exists'].toString(),
      username: json['is_username_exists'].toString(),
    );

Map<String, dynamic> _$$_CheckDataResponseToJson(
        _$_CheckDataResponse instance) =>
    <String, dynamic>{
      'is_email_exists': instance.email,
      'is_username_exists': instance.username,
    };
