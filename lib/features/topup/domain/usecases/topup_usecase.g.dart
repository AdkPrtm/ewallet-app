// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopupParams _$TopupParamsFromJson(Map<String, dynamic> json) => TopupParams(
      amount: (json['amount'] as num).toInt(),
      pin: json['pin'] as String,
      paymentMethod: json['payment_code'] as String,
      transactionType: json['transaction_type'] as String,
    );

Map<String, dynamic> _$TopupParamsToJson(TopupParams instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'pin': instance.pin,
      'payment_code': instance.paymentMethod,
      'transaction_type': instance.transactionType,
    };
