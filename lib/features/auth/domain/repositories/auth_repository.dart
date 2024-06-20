import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/features/auth/domain/domain.dart';
import 'package:ewallet/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:ewallet/features/user/domain/entities/user_entities.dart';

abstract class AuthRepository {
  //REMOTE SERVICE
  Future<Either<Failure, CheckDataEntity>> checkData(
      CheckDataParams checkDataParams);
  Future<Either<Failure, UserEntity>> signin(SignInParams signInParams);
  Future<Either<Failure, UserEntity>> signup(SignUpParams signUpParams);
  Future<Either<Failure, UserEntity>> validationToken(String token);
  Future<Either<Failure, String>> requestOTP(String token);
  Future<Either<Failure, String>> verifyOTP(VerifyOTPBody verifyBody);

  //LOCAL SERVICE
  Future<bool> setCredential(String token);
  Future<String> getCredential();
  Future<bool> removeCredential();
}
