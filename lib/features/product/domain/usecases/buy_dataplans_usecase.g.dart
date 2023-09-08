// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_dataplans_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyDataPlansParams _$BuyDataPlansParamsFromJson(Map<String, dynamic> json) =>
    BuyDataPlansParams(
      idPlans: json['data_plan_id'] as int?,
      phoneNumber: json['phone_number'] as String?,
      pin: json['pin'] as String?,
    );

Map<String, dynamic> _$BuyDataPlansParamsToJson(BuyDataPlansParams instance) =>
    <String, dynamic>{
      'data_plan_id': instance.idPlans,
      'phone_number': instance.phoneNumber,
      'pin': instance.pin,
    };
