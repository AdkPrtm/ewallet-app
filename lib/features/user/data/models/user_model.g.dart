// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      verified: json['verified'] as String?,
      profilePicture: json['profile_picture'] as String?,
      ktp: json['ktp'] as String?,
      balance: json['balance'] as String?,
      cardNumber: json['card_number'] as String?,
      pin: json['pin'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'verified': instance.verified,
      'profile_picture': instance.profilePicture,
      'ktp': instance.ktp,
      'balance': instance.balance,
      'card_number': instance.cardNumber,
      'pin': instance.pin,
      'token': instance.token,
    };
