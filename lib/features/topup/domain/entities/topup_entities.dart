import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_entities.freezed.dart';

@freezed
class TopUpEntity with _$TopUpEntity  {
  const factory TopUpEntity({
    String? redirectUrl,
    String? token,
  }) = _TopUpEntity;
}