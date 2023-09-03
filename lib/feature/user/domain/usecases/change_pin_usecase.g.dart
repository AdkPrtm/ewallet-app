// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePinParams _$UpdatePinParamsFromJson(Map<String, dynamic> json) =>
    UpdatePinParams(
      oldPin: json['previous_pin'] as int?,
      newPin: json['new_pin'] as int?,
    );

Map<String, dynamic> _$UpdatePinParamsToJson(UpdatePinParams instance) =>
    <String, dynamic>{
      'previous_pin': instance.oldPin,
      'new_pin': instance.newPin,
    };
