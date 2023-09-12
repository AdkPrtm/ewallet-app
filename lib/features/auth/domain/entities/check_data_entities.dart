import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_data_entities.freezed.dart';

@freezed
class CheckDataEntity with _$CheckDataEntity {
  const factory CheckDataEntity({
    String? status,
    String? message,
    DataCheckDataEntity? data,
  }) = _CheckDataEntity;
}

@freezed
class DataCheckDataEntity with _$DataCheckDataEntity {
  const factory DataCheckDataEntity({
    bool? email,
    bool? username,
  }) = _DataCheckDataEntity;
}
