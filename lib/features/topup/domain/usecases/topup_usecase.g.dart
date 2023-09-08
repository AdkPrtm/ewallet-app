// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopupParams _$TopupParamsFromJson(Map<String, dynamic> json) => TopupParams(
      amount: json['amount'] as int?,
      pin: json['pin'] as String?,
      paymentMethod: json['payment_method_code'] as String?,
    );

Map<String, dynamic> _$TopupParamsToJson(TopupParams instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'pin': instance.pin,
      'payment_method_code': instance.paymentMethod,
    };
