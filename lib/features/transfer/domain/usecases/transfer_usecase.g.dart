// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransferParams _$$_TransferParamsFromJson(Map<String, dynamic> json) =>
    _$_TransferParams(
      amount: json['amount'] as int?,
      pin: json['pin'] as String?,
      sendToUsername: json['send_to'] as String?,
    );

Map<String, dynamic> _$$_TransferParamsToJson(_$_TransferParams instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'pin': instance.pin,
      'send_to': instance.sendToUsername,
    };
