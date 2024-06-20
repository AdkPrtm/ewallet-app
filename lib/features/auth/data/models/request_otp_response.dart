import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_otp_response.freezed.dart';
part 'request_otp_response.g.dart';

@freezed
class RequestOTPResponse with _$RequestOTPResponse {
  const factory RequestOTPResponse(
    String message,
  ) = _RequestOTPResponse;

  const RequestOTPResponse._();

  factory RequestOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestOTPResponseFromJson(json);
}
