import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';

part 'payment_topup_response.freezed.dart';
part 'payment_topup_response.g.dart';

@freezed
class PaymentMethodTopupResponse with _$PaymentMethodTopupResponse {
  const factory PaymentMethodTopupResponse({
    String? status,
    String? message,
    List<PaymentTopUpDataResponse>? data,
  }) = _PaymentMethodTopupResponse;

  const PaymentMethodTopupResponse._();

  factory PaymentMethodTopupResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodTopupResponseFromJson(json);

  ResponsePaymentTopupEntity toEntity() {
    final listData = data!
        .map<PaymentDataTopupEntity>(
          (model) => PaymentDataTopupEntity(
            name: model.name,
            code: model.code,
            thumbnail: model.thumbnail,
            status: model.status,
          ),
        )
        .toList();

    return ResponsePaymentTopupEntity(
      status: status,
      message: message,
      data: listData,
    );
  }
}

@freezed
class PaymentTopUpDataResponse with _$PaymentTopUpDataResponse {
  const factory PaymentTopUpDataResponse({
    String? name,
    String? code,
    String? thumbnail,
    String? status,
  }) = _PaymentTopUpDataResponse;

  factory PaymentTopUpDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentTopUpDataResponseFromJson(json);
}
