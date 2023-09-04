// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_data_user_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProfileUserParams _$$_UpdateProfileUserParamsFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProfileUserParams(
      username: json['username'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_UpdateProfileUserParamsToJson(
        _$_UpdateProfileUserParams instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
