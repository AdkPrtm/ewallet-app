// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_data_user_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileUserParamsImpl _$$UpdateProfileUserParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileUserParamsImpl(
      json['username'] as String,
      json['name'] as String,
      json['email'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$$UpdateProfileUserParamsImplToJson(
        _$UpdateProfileUserParamsImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
