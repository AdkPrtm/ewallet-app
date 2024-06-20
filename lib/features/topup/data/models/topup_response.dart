import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';

part 'topup_response.freezed.dart';
part 'topup_response.g.dart';

@freezed
class TopUpResponse with _$TopUpResponse {
  const factory TopUpResponse({
    @JsonKey(name: 'link_payment') String? redirectUrl,
    @JsonKey(name: 'reference_id') String? invoiceId,
    @JsonKey(name: 'charge_amount') int? amount,
  }) = _TopUpResponse;

  const TopUpResponse._();

  factory TopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$TopUpResponseFromJson(json);

  TopUpEntity toEntity() => TopUpEntity(
        redirectUrl: redirectUrl,
        invoiceId: invoiceId,
        amount: amount,
      );
}
