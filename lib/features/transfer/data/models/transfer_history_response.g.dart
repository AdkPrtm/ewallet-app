// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferHistoryResponseImpl _$$TransferHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferHistoryResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTransferResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TransferHistoryResponseImplToJson(
        _$TransferHistoryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };

_$DataTransferResponseImpl _$$DataTransferResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataTransferResponseImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      verified: json['verified'] as bool?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$DataTransferResponseImplToJson(
        _$DataTransferResponseImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'verified': instance.verified,
      'profile_picture': instance.profilePicture,
    };
