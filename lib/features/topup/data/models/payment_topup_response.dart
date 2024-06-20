import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';

part 'payment_topup_response.freezed.dart';
part 'payment_topup_response.g.dart';

@freezed
class PaymentMethodTopupResponse with _$PaymentMethodTopupResponse {
  const factory PaymentMethodTopupResponse({
    String? name,
    String? code,
    String? thumbnail,
    String? status,
  }) = _PaymentMethodTopupResponse;

  const PaymentMethodTopupResponse._();

  factory PaymentMethodTopupResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodTopupResponseFromJson(json);

  PaymentDataTopupEntity toEntity() => PaymentDataTopupEntity(
        name: name,
        code: code,
        thumbnail: thumbnail,
        status: status,
      );
}
