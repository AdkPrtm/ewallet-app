// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_topup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodTopupResponseImpl _$$PaymentMethodTopupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodTopupResponseImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
      thumbnail: json['thumbnail'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$PaymentMethodTopupResponseImplToJson(
        _$PaymentMethodTopupResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
    };
