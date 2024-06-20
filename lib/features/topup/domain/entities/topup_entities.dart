import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_entities.freezed.dart';

@freezed
class TopUpEntity with _$TopUpEntity {
  const factory TopUpEntity({
    @JsonKey(name: 'link_payment') String? redirectUrl,
    @JsonKey(name: 'reference_id') String? invoiceId,
    @JsonKey(name: 'charge_amount') int? amount,
  }) = _TopUpEntity;
}
