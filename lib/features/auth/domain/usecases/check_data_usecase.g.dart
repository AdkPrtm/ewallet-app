// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_data_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckDataParams _$CheckDataParamsFromJson(Map<String, dynamic> json) =>
    CheckDataParams(
      email: json['is_email_exists'] as String?,
      username: json['is_username_exists'] as String?,
    );

Map<String, dynamic> _$CheckDataParamsToJson(CheckDataParams instance) =>
    <String, dynamic>{
      'is_email_exists': instance.email,
      'is_username_exists': instance.username,
    };
