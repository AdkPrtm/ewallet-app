// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpParams _$$_SignUpParamsFromJson(Map<String, dynamic> json) =>
    _$_SignUpParams(
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      pin: json['pin'] as String?,
      profilePicture: json['profile_picture'] as String?,
      ktp: json['ktp'] as String?,
    );

Map<String, dynamic> _$$_SignUpParamsToJson(_$_SignUpParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'pin': instance.pin,
      'profile_picture': instance.profilePicture,
      'ktp': instance.ktp,
    };
