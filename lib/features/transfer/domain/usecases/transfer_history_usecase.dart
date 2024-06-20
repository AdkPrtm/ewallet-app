import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/transfer/domain/entities/entities.dart';
import 'package:ewallet/features/transfer/domain/repositories/repositories.dart';

class TransferHistoryUseCase extends UseCase<
    Either<Failure, TransferHistoryEntity>, GetTransferHistoryQuery> {
  final TransferRepository transferRepository;

  TransferHistoryUseCase(this.transferRepository);

  @override
  Future<Either<Failure, TransferHistoryEntity>> call(
          {GetTransferHistoryQuery? params}) =>
      transferRepository.transferHistoryRespository(params!);
}

class GetTransferHistoryQuery {
  int page;
  int limit;

  GetTransferHistoryQuery({this.page = 1, this.limit = 6});
}
