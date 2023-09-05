import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/auth/domain/entities/entities.dart';

part 'check_data_response.freezed.dart';
part 'check_data_response.g.dart';

@freezed
class CheckDataResponse with _$CheckDataResponse {
  const factory CheckDataResponse({
    @JsonKey(name: 'is_email_exists') String? email,
    @JsonKey(name: 'is_username_exists') String? username,
  }) = _CheckDataResponse;

  const CheckDataResponse._();

  factory CheckDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckDataResponseFromJson(json);

  CheckDataEntity toEntity() => CheckDataEntity(
        email: email,
        username: username,
      );
}
