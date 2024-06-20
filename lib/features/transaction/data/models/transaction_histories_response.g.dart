// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_histories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionHistoryResponseImpl _$$TransactionHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DataTransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TransactionHistoryResponseImplToJson(
        _$TransactionHistoryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };

_$DataTransactionResponseImpl _$$DataTransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataTransactionResponseImpl(
      id: json['id'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      transactionName: json['transaction_name'] as String?,
      transactionAction: json['transaction_action'] as String?,
      transactionThumbnail: json['transaction_thumbnail'] as String?,
      transactionCode: json['transaction_code'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DataTransactionResponseImplToJson(
        _$DataTransactionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'transaction_name': instance.transactionName,
      'transaction_action': instance.transactionAction,
      'transaction_thumbnail': instance.transactionThumbnail,
      'transaction_code': instance.transactionCode,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
    };
