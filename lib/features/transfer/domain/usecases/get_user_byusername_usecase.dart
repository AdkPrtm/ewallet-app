import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/repositories/repositories.dart';

class GetUserByUsernameUsecase
    extends UseCase<Either<Failure, ResponseSearchUsername>, String> {
  final TransferRepository _transferRepository;

  GetUserByUsernameUsecase(this._transferRepository);

  @override
  Future<Either<Failure, ResponseSearchUsername>> call({String? params}) =>
      _transferRepository.getByUsername(params!);
}
