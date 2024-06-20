import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/transaction/domain/entities/entities.dart';
import 'package:ewallet/features/transaction/domain/repositories/repositories.dart';

class GetTransactionHistoryUseCase extends UseCase<
    Either<Failure, TransactionHistoryEntity>, GetTransactionHistoryQuery> {
  final TransactionRepository _transactionRepository;

  GetTransactionHistoryUseCase(this._transactionRepository);

  @override
  Future<Either<Failure, TransactionHistoryEntity>> call(
          {GetTransactionHistoryQuery? params}) =>
      _transactionRepository.getTransactionHistory(params!);
}

class GetTransactionHistoryQuery {
  int? page;
  int? limit;

  GetTransactionHistoryQuery({this.page = 1, this.limit = 6});
}
