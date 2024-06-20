import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_dataplans_response.freezed.dart';
part 'buy_dataplans_response.g.dart';

@freezed
class BuyDataPlansResponse with _$BuyDataPlansResponse {
  const factory BuyDataPlansResponse({
    String? status,
  }) = _BuyDataPlansResponse;

  factory BuyDataPlansResponse.fromJson(Map<String, dynamic> json) =>
      _$BuyDataPlansResponseFromJson(json);
  
}
