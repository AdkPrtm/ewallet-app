// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataplans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataPlansResponse _$$_DataPlansResponseFromJson(Map<String, dynamic> json) =>
    _$_DataPlansResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DataOpertorCardResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map(
              (e) => LinkDataPlansResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DataPlansResponseToJson(
        _$_DataPlansResponse instance) =>
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

_$_DataOpertorCardResponse _$$_DataOpertorCardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataOpertorCardResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      thumbnail: json['thumbnail'] as String?,
      dataPlans: (json['data_plans'] as List<dynamic>?)
          ?.map(
              (e) => DataPlansListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataOpertorCardResponseToJson(
        _$_DataOpertorCardResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'thumbnail': instance.thumbnail,
      'data_plans': instance.dataPlans,
    };

_$_DataPlansListResponse _$$_DataPlansListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataPlansListResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      operatorCardId: json['operator_card_id'] as String?,
    );

Map<String, dynamic> _$$_DataPlansListResponseToJson(
        _$_DataPlansListResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'operator_card_id': instance.operatorCardId,
    };

_$_LinkDataPlansResponse _$$_LinkDataPlansResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LinkDataPlansResponse(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinkDataPlansResponseToJson(
        _$_LinkDataPlansResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
