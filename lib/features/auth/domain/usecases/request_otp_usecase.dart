import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/auth.dart';

class RequestOtpUsecase extends UseCase<Either<Failure, String>, String> {
  final AuthRepository _authRepository;

  RequestOtpUsecase(this._authRepository);

  @override
  Future<Either<Failure, String>> call({String? params}) =>
      _authRepository.requestOTP(params ?? '');
}
