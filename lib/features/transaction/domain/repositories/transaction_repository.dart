import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/transaction/domain/entities/entities.dart';

abstract class TransactionRepository {
  Future<Either<Failure, TransactionHistoryEntity>> getTransactionHistory(String limit);
}
