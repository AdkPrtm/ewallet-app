import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_usecase.g.dart';

class VerifyOtpUsecase extends UseCase<Either<Failure, String>, VerifyOTPBody> {
  final AuthRepository _authRepository;

  VerifyOtpUsecase(this._authRepository);

  @override
  Future<Either<Failure, String>> call({VerifyOTPBody? params}) =>
      _authRepository.verifyOTP(params ?? VerifyOTPBody(otp: '000000'));
}

@JsonSerializable()
class VerifyOTPBody {
  String otp;
  VerifyOTPBody({required this.otp});

  Map<String, dynamic> toJson() => _$VerifyOTPBodyToJson(this);
}
