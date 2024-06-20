import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_topup_entity.freezed.dart';

@freezed
class PaymentDataTopupEntity with _$PaymentDataTopupEntity {
  const factory PaymentDataTopupEntity({
    String? name,
    String? code,
    String? thumbnail,
    String? status,
  }) = _PaymentDataTopupEntity;
}
