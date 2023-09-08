// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searching_byusername_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchingByUsernameResponse _$$_SearchingByUsernameResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchingByUsernameResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ListDataUsername.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchingByUsernameResponseToJson(
        _$_SearchingByUsernameResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_ListDataUsername _$$_ListDataUsernameFromJson(Map<String, dynamic> json) =>
    _$_ListDataUsername(
      username: json['username'] as String?,
      verified: json['verified'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$_ListDataUsernameToJson(_$_ListDataUsername instance) =>
    <String, dynamic>{
      'username': instance.username,
      'verified': instance.verified,
      'profile_picture': instance.profilePicture,
    };
