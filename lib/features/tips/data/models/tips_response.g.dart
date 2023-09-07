// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TipsResponse _$$_TipsResponseFromJson(Map<String, dynamic> json) =>
    _$_TipsResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTipsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => LinksTipsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_TipsResponseToJson(_$_TipsResponse instance) =>
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

_$_DataTipsResponse _$$_DataTipsResponseFromJson(Map<String, dynamic> json) =>
    _$_DataTipsResponse(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_DataTipsResponseToJson(_$_DataTipsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnail': instance.thumbnail,
    };

_$_LinksTipsResponse _$$_LinksTipsResponseFromJson(Map<String, dynamic> json) =>
    _$_LinksTipsResponse(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinksTipsResponseToJson(
        _$_LinksTipsResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
