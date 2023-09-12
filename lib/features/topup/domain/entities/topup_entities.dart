import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_entities.freezed.dart';

@freezed
class TopUpEntity with _$TopUpEntity {
  const factory TopUpEntity({
    String? status,
    String? message,
    ResultTopUpEntity? data,
  }) = _TopUpEntity;
}

@freezed
class ResultTopUpEntity with _$ResultTopUpEntity {
  const factory ResultTopUpEntity({
    String? redirectUrl,
    String? token,
  }) = _ResultTopUpEntity;
}
