import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ewallet/features/auth/auth.dart';
import 'package:ewallet/features/auth/domain/usecases/get_credential_usecase.dart';
import 'package:ewallet/features/auth/domain/usecases/request_otp_usecase.dart';
import 'package:ewallet/features/auth/domain/usecases/verify_otp_usecase.dart';

part 'request_otp_event.dart';
part 'request_otp_state.dart';

class RequestOtpBloc extends Bloc<RequestOtpEvent, RequestOtpState> {
  final RequestOtpUsecase _requestOtpUsecase;
  final VerifyOtpUsecase _verifyOtpUsecase;
  final GetCredentialUseCase _getCredentialUseCase;
  RequestOtpBloc(
    this._requestOtpUsecase,
    this._verifyOtpUsecase,
    this._getCredentialUseCase,
  ) : super(RequestOtpInitial()) {
    on<RequestOtpProses>(onRequestOTPProses);
    on<VerifyOtpProses>(onVerifyOTPProses);
  }
  Future<void> onRequestOTPProses(
      RequestOtpProses event, Emitter<RequestOtpState> emit) async {
    emit(LoadingStateOTP());
    final token = await _getCredentialUseCase.call();
    if (token == '' || token == 'Something went wrong') {
      return emit(const FailedStateOTP(message: 'null token'));
    }
    final result = await _requestOtpUsecase.call(params: token);
    result.fold(
      (failure) {
        emit(FailedStateOTP(message: failure.message));
      },
      (data) async {
        emit(SuccessRequestOTP(message: data));
      },
    );
  }

  Future<void> onVerifyOTPProses(
      VerifyOtpProses event, Emitter<RequestOtpState> emit) async {
    emit(LoadingStateOTP());
    final result = await _verifyOtpUsecase.call(params: event.otp);
    result.fold(
      (failure) {
        emit(FailedStateOTP(message: failure.message));
      },
      (data) async {
        emit(SuccessVerifyOTP(message: data));
      },
    );
  }
}
