// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePinParams _$UpdatePinParamsFromJson(Map<String, dynamic> json) =>
    UpdatePinParams(
      json['previous_pin'] as String,
      json['new_pin'] as String,
    );

Map<String, dynamic> _$UpdatePinParamsToJson(UpdatePinParams instance) =>
    <String, dynamic>{
      'previous_pin': instance.oldPin,
      'new_pin': instance.newPin,
    };
