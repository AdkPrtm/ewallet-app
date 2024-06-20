// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_dataplans_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyDataPlansParams _$BuyDataPlansParamsFromJson(Map<String, dynamic> json) =>
    BuyDataPlansParams(
      idPlans: json['data_plan_id'] as String,
      phoneNumber: json['number_phone'] as String,
      pin: json['pin'] as String,
    );

Map<String, dynamic> _$BuyDataPlansParamsToJson(BuyDataPlansParams instance) =>
    <String, dynamic>{
      'data_plan_id': instance.idPlans,
      'number_phone': instance.phoneNumber,
      'pin': instance.pin,
    };
