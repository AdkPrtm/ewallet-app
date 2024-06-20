// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferParamsImpl _$$TransferParamsImplFromJson(Map<String, dynamic> json) =>
    _$TransferParamsImpl(
      (json['amount'] as num).toInt(),
      json['pin'] as String,
      json['send_to'] as String?,
    );

Map<String, dynamic> _$$TransferParamsImplToJson(
        _$TransferParamsImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'pin': instance.pin,
      'send_to': instance.sendToUsername,
    };
