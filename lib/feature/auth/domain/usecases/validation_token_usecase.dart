import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/entities.dart';

class ValidationTokenUseCase
    extends UseCase<Either<Failure, UserEntity>, String> {
  final AuthRepository _authRepository;

  ValidationTokenUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({String? params}) =>
      _authRepository.validationToken(params!);
}
