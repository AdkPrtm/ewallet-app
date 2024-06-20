// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TipsResponseImpl _$$TipsResponseImplFromJson(Map<String, dynamic> json) =>
    _$TipsResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTipsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TipsResponseImplToJson(_$TipsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };

_$DataTipsResponseImpl _$$DataTipsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataTipsResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$DataTipsResponseImplToJson(
        _$DataTipsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnail': instance.thumbnail,
    };
