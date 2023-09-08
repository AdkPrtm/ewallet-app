import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/repositories/repositories.dart';

class TransferHistoryUseCase
    extends UseCase<Either<Failure, TransferHistoryEntity>, String> {
  final TransferRepository transferRepository;

  TransferHistoryUseCase(this.transferRepository);

  @override
  Future<Either<Failure, TransferHistoryEntity>> call({String? params}) =>
      transferRepository.transferHistoryRespository(params!);
}
