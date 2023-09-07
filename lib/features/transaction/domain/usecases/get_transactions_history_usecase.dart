import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/transaction/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/transaction/domain/repositories/repositories.dart';

class GetTransactionHistoryUseCase
    extends UseCase<Either<Failure, TransactionHistoryEntity>, String> {
  final TransactionRepository _transactionRepository;

  GetTransactionHistoryUseCase(this._transactionRepository);
  
  @override
  Future<Either<Failure, TransactionHistoryEntity>> call({String? params}) =>
      _transactionRepository.getTransactionHistory(params!);
}
