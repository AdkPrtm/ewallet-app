import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';

part 'topup_response.freezed.dart';
part 'topup_response.g.dart';

@freezed
class TopUpResponse with _$TopUpResponse {
  const factory TopUpResponse({
    @JsonKey(name: 'redirect_url') String? redirectUrl,
    String? token,
  }) = _TopUpResponse;

  const TopUpResponse._();

  factory TopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$TopUpResponseFromJson(json);

  TopUpEntity toEntity() => TopUpEntity(
        redirectUrl: redirectUrl,
        token: token,
      );
}
