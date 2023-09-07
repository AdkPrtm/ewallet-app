// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransferHistoryResponse _$$_TransferHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TransferHistoryResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTransferResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map(
              (e) => LinksTransferResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_TransferHistoryResponseToJson(
        _$_TransferHistoryResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_DataTransferResponse _$$_DataTransferResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataTransferResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      verified: json['verified'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$_DataTransferResponseToJson(
        _$_DataTransferResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'verified': instance.verified,
      'profile_picture': instance.profilePicture,
    };

_$_LinksTransferResponse _$$_LinksTransferResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LinksTransferResponse(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinksTransferResponseToJson(
        _$_LinksTransferResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
