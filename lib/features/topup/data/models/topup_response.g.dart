// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpResponseImpl _$$TopUpResponseImplFromJson(Map<String, dynamic> json) =>
    _$TopUpResponseImpl(
      redirectUrl: json['link_payment'] as String?,
      invoiceId: json['reference_id'] as String?,
      amount: (json['charge_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopUpResponseImplToJson(_$TopUpResponseImpl instance) =>
    <String, dynamic>{
      'link_payment': instance.redirectUrl,
      'reference_id': instance.invoiceId,
      'charge_amount': instance.amount,
    };
