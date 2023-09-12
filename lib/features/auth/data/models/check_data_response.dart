// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/auth/domain/entities/entities.dart';

part 'check_data_response.freezed.dart';
part 'check_data_response.g.dart';

@freezed
class CheckDataResponse with _$CheckDataResponse {
  const factory CheckDataResponse({
    String? status,
    String? message,
    DataCheckDataResponse? data,
  }) = _CheckDataResponse;

  const CheckDataResponse._();

  factory CheckDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckDataResponseFromJson(json);

  CheckDataEntity toEntity() => CheckDataEntity(
        status: status,
        message: message,
        data: data?.toEntity(),
      );
}

@freezed
class DataCheckDataResponse with _$DataCheckDataResponse {
  const factory DataCheckDataResponse({
    @JsonKey(name: 'is_email_exists') bool? email,
    @JsonKey(name: 'is_username_exists') bool? username,
  }) = _DataCheckDataResponse;

  const DataCheckDataResponse._();

  factory DataCheckDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataCheckDataResponseFromJson(json);

  DataCheckDataEntity toEntity() => DataCheckDataEntity(
    email: email,
    username: username,
  );
}
