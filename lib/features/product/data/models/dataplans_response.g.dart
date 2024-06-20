// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataplans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataPlansResponseImpl _$$DataPlansResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataPlansResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DataOpertorCardResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataPlansResponseImplToJson(
        _$DataPlansResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };

_$DataOpertorCardResponseImpl _$$DataOpertorCardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataOpertorCardResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      thumbnail: json['thumbnail'] as String?,
      dataPlans: (json['data_plans'] as List<dynamic>?)
          ?.map(
              (e) => DataPlansListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataOpertorCardResponseImplToJson(
        _$DataOpertorCardResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'thumbnail': instance.thumbnail,
      'data_plans': instance.dataPlans,
    };

_$DataPlansListResponseImpl _$$DataPlansListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataPlansListResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      operatorCardId: json['operator_card_id'] as String?,
    );

Map<String, dynamic> _$$DataPlansListResponseImplToJson(
        _$DataPlansListResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'operator_card_id': instance.operatorCardId,
    };
