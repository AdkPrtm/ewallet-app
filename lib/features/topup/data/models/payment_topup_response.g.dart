// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_topup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodTopupResponse _$$_PaymentMethodTopupResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentMethodTopupResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              PaymentTopUpDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaymentMethodTopupResponseToJson(
        _$_PaymentMethodTopupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_PaymentTopUpDataResponse _$$_PaymentTopUpDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentTopUpDataResponse(
      name: json['name'] as String?,
      code: json['code'] as String?,
      thumbnail: json['thumbnail'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_PaymentTopUpDataResponseToJson(
        _$_PaymentTopUpDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
    };
