import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/transaction/domain/entities/entities.dart';

part 'transaction_histories_response.freezed.dart';
part 'transaction_histories_response.g.dart';

@freezed
class TransactionHistoryResponse with _$TransactionHistoryResponse {
  const factory TransactionHistoryResponse({
    @JsonKey(name: 'current_page') int? currentPage,
    List<DataTransactionResponse>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<LinkTransactionHistoryResponse>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _TransactionHistoryResponse;

  const TransactionHistoryResponse._();

  factory TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryResponseFromJson(json);

  TransactionHistoryEntity toEntity() {
    final listData = data!
        .map<DataTransactionHistoryEntity>(
            (data) => DataTransactionHistoryEntity(
                  userId: data.userId,
                  transactionTypeId: data.transactionTypeId,
                  paymentMethodId: data.paymentMethodId,
                  productId: data.productId,
                  amount: data.amount,
                  transactionCode: data.transactionCode,
                  description: data.description,
                  status: data.status,
                  createdAt: data.createdAt,
                  paymentMethod: data.paymentMethod?.toEntity(),
                  transactionType: data.transactionType?.toEntity(),
                ))
        .toList();
    final listLink = links!
        .map<LinkTransactionHistoriesHistory>(
            (data) => LinkTransactionHistoriesHistory(
                  url: data.url,
                  label: data.label,
                  active: data.active,
                ))
        .toList();

    return TransactionHistoryEntity(
      currentPage: currentPage,
      data: listData,
      firstPageUrl: firstPageUrl,
      from: from,
      lastPage: lastPage,
      lastPageUrl: lastPageUrl,
      links: listLink,
      nextPageUrl: nextPageUrl,
      path: path,
      perPage: perPage,
      prevPageUrl: prevPageUrl,
      to: to,
      total: total,
    );
  }
}

@freezed
class DataTransactionResponse with _$DataTransactionResponse {
  const factory DataTransactionResponse({
    int? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'transaction_type_id') String? transactionTypeId,
    @JsonKey(name: 'payment_method_id') String? paymentMethodId,
    @JsonKey(name: 'product_id') String? productId,
    String? amount,
    @JsonKey(name: 'transaction_code') String? transactionCode,
    String? description,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    DataPaymentMethodResponse? paymentMethod,
    DataTransactionTypeResponse? transactionType,
  }) = _DataTransactionResponse;

  factory DataTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTransactionResponseFromJson(json);
}

@freezed
class DataPaymentMethodResponse with _$DataPaymentMethodResponse {
  const factory DataPaymentMethodResponse({
    int? id,
    String? name,
    String? code,
    String? thumbnail,
  }) = _DataPaymentMethodResponse;

  const DataPaymentMethodResponse._();

  factory DataPaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$DataPaymentMethodResponseFromJson(json);

  DataPaymentMethodEntity toEntity() => DataPaymentMethodEntity(
        id: id,
        name: name,
        code: code,
        thumbnail: thumbnail,
      );
}

@freezed
class DataTransactionTypeResponse with _$DataTransactionTypeResponse {
  const factory DataTransactionTypeResponse({
    int? id,
    String? name,
    String? code,
    String? action,
    String? thumbnail,
  }) = _DataTransactionTypeResponse;

  const DataTransactionTypeResponse._();

  factory DataTransactionTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTransactionTypeResponseFromJson(json);

  DataTransactionTypeEntity toEntity() => DataTransactionTypeEntity(
        id: id,
        name: name,
        code: code,
        action: action,
        thumbnail: thumbnail,
      );
}

@freezed
class LinkTransactionHistoryResponse with _$LinkTransactionHistoryResponse {
  factory LinkTransactionHistoryResponse({
    String? url,
    String? label,
    bool? active,
  }) = _LinkTransactionHistoryResponse;

  factory LinkTransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkTransactionHistoryResponseFromJson(json);
}
