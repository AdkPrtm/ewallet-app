import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';
import 'package:template_clean_architecture/features/user/user.dart';

abstract class UserRepository {
  Future<Either<Failure, String>> updateUser(
      UpdateProfileUserParams updateProfileUserParams);

  Future<Either<Failure, UserResponseEntity>> getCurrentUser();

  Future<Either<Failure, String>> changePinUser(
      UpdatePinParams updatePinParams);
}
