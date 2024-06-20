import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/domain/repositories/repositories.dart';
import 'package:ewallet/features/user/domain/entities/entities.dart';

class ValidationTokenUseCase
    extends UseCase<Either<Failure, UserEntity>, String> {
  final AuthRepository _authRepository;

  ValidationTokenUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({String? params}) =>
      _authRepository.validationToken(params!);
}

