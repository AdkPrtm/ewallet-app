// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpParamsImpl _$$SignUpParamsImplFromJson(Map<String, dynamic> json) =>
    _$SignUpParamsImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      pin: json['pin'] as String?,
      profilePicture: json['profile_picture'] as String?,
      tokenFCM: json['token_device'] as String?,
    );

Map<String, dynamic> _$$SignUpParamsImplToJson(_$SignUpParamsImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'pin': instance.pin,
      'profile_picture': instance.profilePicture,
      'token_device': instance.tokenFCM,
    };
