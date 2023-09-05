import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_topup_entity.freezed.dart';

@freezed
class ResponsePaymentTopupEntity with _$ResponsePaymentTopupEntity {
  const factory ResponsePaymentTopupEntity({
    String? status,
    String? message,
    List<PaymentDataTopupEntity>? data,
  }) = _ResponsePaymentTopupEntity;
}

@freezed
class PaymentDataTopupEntity with _$PaymentDataTopupEntity {
  const factory PaymentDataTopupEntity({
    String? name,
    String? code,
    String? thumbnail,
    String? status,
  }) = _PaymentDataTopupEntity;
}
