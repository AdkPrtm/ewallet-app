// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searching_byusername_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchingByUsernameResponseImpl _$$SearchingByUsernameResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchingByUsernameResponseImpl(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      verified: json['verified'] as bool?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$SearchingByUsernameResponseImplToJson(
        _$SearchingByUsernameResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'verified': instance.verified,
      'profile_picture': instance.profilePicture,
    };
