import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_histories_entity.freezed.dart';

@freezed
class TransactionHistoryEntity with _$TransactionHistoryEntity {
  const factory TransactionHistoryEntity({
    int? currentPage,
    List<DataTransactionHistoryEntity>? data,
    int? lastPage,
  }) = _TransactionHistoryEntity;
}

@freezed
class DataTransactionHistoryEntity with _$DataTransactionHistoryEntity {
  const factory DataTransactionHistoryEntity({
    String? id,
    int? amount,
    String? transactionName,
    String? transactionAction,
    String? transactionThumbnail,
    String? transactionCode,
    String? status,
    DateTime? createdAt,
  }) = _DataTransactionHistoryEntity;
}
