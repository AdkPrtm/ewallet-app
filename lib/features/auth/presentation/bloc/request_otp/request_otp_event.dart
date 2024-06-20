part of 'request_otp_bloc.dart';

sealed class RequestOtpEvent extends Equatable {
  const RequestOtpEvent();

  @override
  List<Object> get props => [];
}

class RequestOtpProses extends RequestOtpEvent {}

class VerifyOtpProses extends RequestOtpEvent {
  final VerifyOTPBody otp;
  const VerifyOtpProses({required this.otp});
}