import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/features/transaction/domain/entities/entities.dart';
import 'package:ewallet/features/transaction/domain/usecases/get_transactions_history_usecase.dart';

abstract class TransactionRepository {
  Future<Either<Failure, TransactionHistoryEntity>> getTransactionHistory(
      GetTransactionHistoryQuery? query);
}
