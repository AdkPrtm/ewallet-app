import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

abstract class UserRepository {
  Future<Either<Failure, String>> updateUser(UpdateProfileUserParams updateProfileUserParams);
}