import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:ewallet/features/transfer/domain/repositories/repositories.dart';

class GetUserByUsernameUsecase
    extends UseCase<Either<Failure, List<UserBySearchingEntity>>, String> {
  final TransferRepository _transferRepository;

  GetUserByUsernameUsecase(this._transferRepository);

  @override
  Future<Either<Failure, List<UserBySearchingEntity>>> call({String? params}) =>
      _transferRepository.getByUsername(params!);
}
