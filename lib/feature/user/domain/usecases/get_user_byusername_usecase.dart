import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

class GetUserByUsernameUsecase
    extends UseCase<Either<Failure, ResponseSearchUsername>, String> {
  final UserRepository _userRepository;

  GetUserByUsernameUsecase(this._userRepository);

  @override
  Future<Either<Failure, ResponseSearchUsername>> call({String? params}) =>
      _userRepository.getByUsername(params!);
}
