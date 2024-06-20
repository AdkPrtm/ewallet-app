// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInParamsImpl _$$SignInParamsImplFromJson(Map<String, dynamic> json) =>
    _$SignInParamsImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      tokenFCM: json['token_device'] as String?,
    );

Map<String, dynamic> _$$SignInParamsImplToJson(_$SignInParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'token_device': instance.tokenFCM,
    };
