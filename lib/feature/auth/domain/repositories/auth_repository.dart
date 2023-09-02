import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/user_entities.dart';

abstract class AuthRepository {
  //REMOTE SERVICE
  Future<Either<Failure, CheckDataEntity>> checkData(
      CheckDataParams checkDataParams);
  Future<Either<Failure, UserEntity>> signin(SignInParams signInParams);
  Future<Either<Failure, UserEntity>> signup(SignUpParams signUpParams);
  Future<Either<Failure, UserEntity>> getCurrentUser(String token);

  //LOCAL SERVICE
  Future<bool> setCredential(String token);
  Future<String> getCredential();
}
