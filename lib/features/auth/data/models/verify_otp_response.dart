import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.freezed.dart';
part 'verify_otp_response.g.dart';

@freezed
class VerifyOTPResponse with _$VerifyOTPResponse {
  const factory VerifyOTPResponse(
    String message,
  ) = _VerifyOTPResponse;

  const VerifyOTPResponse._();

  factory VerifyOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPResponseFromJson(json);
}
