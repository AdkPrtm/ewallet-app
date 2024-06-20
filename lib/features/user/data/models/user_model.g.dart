// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profile_picture'] as String?,
      verified: json['verified'] as bool?,
      balance: (json['balance'] as num?)?.toInt(),
      cardNumber: json['card_number'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'verified': instance.verified,
      'balance': instance.balance,
      'card_number': instance.cardNumber,
      'token': instance.token,
    };
