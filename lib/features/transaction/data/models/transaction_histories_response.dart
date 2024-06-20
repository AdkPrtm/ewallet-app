import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/transaction/domain/entities/entities.dart';

part 'transaction_histories_response.freezed.dart';
part 'transaction_histories_response.g.dart';

@freezed
class TransactionHistoryResponse with _$TransactionHistoryResponse {
  const factory TransactionHistoryResponse({
    List<DataTransactionResponse>? data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _TransactionHistoryResponse;

  const TransactionHistoryResponse._();

  factory TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryResponseFromJson(json);

  TransactionHistoryEntity toEntity() {
    final listData = data!
        .map<DataTransactionHistoryEntity>(
            (data) => DataTransactionHistoryEntity(
                  id: data.id,
                  amount: data.amount,
                  transactionAction: data.transactionAction,
                  transactionName: data.transactionName,
                  transactionThumbnail: data.transactionThumbnail,
                  transactionCode: data.transactionCode,
                  status: data.status,
                  createdAt: data.createdAt,
                ))
        .toList();

    return TransactionHistoryEntity(
      data: listData,
      currentPage: currentPage,
      lastPage: lastPage,
    );
  }
}

@freezed
class DataTransactionResponse with _$DataTransactionResponse {
  const factory DataTransactionResponse({
    String? id,
    int? amount,
    @JsonKey(name: 'transaction_name') String? transactionName,
    @JsonKey(name: 'transaction_action') String? transactionAction,
    @JsonKey(name: 'transaction_thumbnail') String? transactionThumbnail,
    @JsonKey(name: 'transaction_code') String? transactionCode,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DataTransactionResponse;

  factory DataTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTransactionResponseFromJson(json);
}
