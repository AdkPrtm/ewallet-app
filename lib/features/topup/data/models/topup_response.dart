import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';

part 'topup_response.freezed.dart';
part 'topup_response.g.dart';

@freezed
class TopUpResponse with _$TopUpResponse {
  const factory TopUpResponse({
    String? status,
    String? message,
    ResultTopUpResponse? data,
  }) = _TopUpResponse;

  const TopUpResponse._();

  factory TopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$TopUpResponseFromJson(json);

  TopUpEntity toEntity() => TopUpEntity(
        status: status,
        message: message,
        data: data?.toEntity(),
      );
}

@freezed
class ResultTopUpResponse with _$ResultTopUpResponse {
  const factory ResultTopUpResponse({
    @JsonKey(name: 'redirect_url') String? redirectUrl,
    String? token,
  }) = _ResultTopUpResponse;

  const ResultTopUpResponse._();

  factory ResultTopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultTopUpResponseFromJson(json);

  ResultTopUpEntity toEntity() => ResultTopUpEntity(
        redirectUrl: redirectUrl,
        token: token,
      );
}
