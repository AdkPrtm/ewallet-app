import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

class GetCurrentUserUseCase
    extends UseCase<Either<Failure, UserEntity>, String> {
  final AuthRepository _authRepository;

  GetCurrentUserUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({String? params}) =>
      _authRepository.getCurrentUser(params!);
}
