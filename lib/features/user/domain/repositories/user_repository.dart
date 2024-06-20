import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/features/user/domain/domain.dart';

abstract class UserRepository {
  Future<Either<Failure, String>> updateUser(
      UpdateProfileUserParams updateProfileUserParams);

  Future<Either<Failure, UserEntity>> getCurrentUser();

  Future<Either<Failure, String>> changePinUser(
      UpdatePinParams updatePinParams);
}
