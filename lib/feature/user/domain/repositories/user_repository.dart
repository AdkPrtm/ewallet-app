import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/feature/user/data/models/searching_byusername_response.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

abstract class UserRepository {
  Future<Either<Failure, String>> updateUser(
      UpdateProfileUserParams updateProfileUserParams);

  Future<Either<Failure, ResponseSearchUsername>> getByUsername(
      String username);

  Future<Either<Failure, String>> changePinUser(
      UpdatePinParams updatePinParams);
}
