import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/user/domain/domain.dart';

class GetCurrentUserUseCase extends UseCase<Either<Failure, UserEntity>, void> {
  final UserRepository _userRepository;

  GetCurrentUserUseCase(this._userRepository);

  @override
  Future<Either<Failure, UserEntity>> call({void params}) =>
      _userRepository.getCurrentUser();
}
