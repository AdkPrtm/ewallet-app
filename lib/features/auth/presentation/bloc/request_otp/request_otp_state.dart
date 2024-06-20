part of 'request_otp_bloc.dart';

sealed class RequestOtpState extends Equatable {
  const RequestOtpState();

  @override
  List<Object> get props => [];
}

final class RequestOtpInitial extends RequestOtpState {}

final class SuccessRequestOTP extends RequestOtpState {
  final String message;
  const SuccessRequestOTP({required this.message});
}

final class SuccessVerifyOTP extends RequestOtpState {
  final String message;
  const SuccessVerifyOTP({required this.message});
}

final class FailedStateOTP extends RequestOtpState {
  final String message;
  const FailedStateOTP({required this.message});
}

class LoadingStateOTP extends RequestOtpState {}
