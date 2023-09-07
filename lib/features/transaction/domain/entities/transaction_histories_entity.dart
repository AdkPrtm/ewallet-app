import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_histories_entity.freezed.dart';

@freezed
class TransactionHistoryEntity with _$TransactionHistoryEntity {
  const factory TransactionHistoryEntity({
    int? currentPage,
    List<DataTransactionHistoryEntity>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<LinkTransactionHistoriesHistory>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    String? prevPageUrl,
    int? to,
    int? total,
  }) = _TransactionHistoryEntity;
}

@freezed
class DataTransactionHistoryEntity with _$DataTransactionHistoryEntity {
  const factory DataTransactionHistoryEntity({
    int? id,
    String? userId,
    String? transactionTypeId,
    String? paymentMethodId,
    String? productId,
    String? amount,
    String? transactionCode,
    String? description,
    String? status,
    String? createdAt,
    DataPaymentMethodEntity? paymentMethod,
    DataTransactionTypeEntity? transactionType,
  }) = _DataTransactionHistoryEntity;
}

@freezed 
class DataPaymentMethodEntity with _$DataPaymentMethodEntity {
  const factory DataPaymentMethodEntity({
    int? id,
    String? name,
    String? code,
    String? thumbnail,
  }) = _DataPaymentMethodEntity;
}

@freezed
class DataTransactionTypeEntity with _$DataTransactionTypeEntity {
  const factory DataTransactionTypeEntity({
    int? id,
    String? name,
    String? code,
    String? action,
    String? thumbnail,
  }) = _DataTransactionTypeEntity;
}

@freezed
class LinkTransactionHistoriesHistory with _$LinkTransactionHistoriesHistory {
  factory LinkTransactionHistoriesHistory({
    String? url,
    String? label,
    bool? active,
  }) = _LinkTransactionHistoriesHistory;
}
