// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_histories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionHistoryResponse _$$_TransactionHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionHistoryResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DataTransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => LinkTransactionHistoryResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_TransactionHistoryResponseToJson(
        _$_TransactionHistoryResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_DataTransactionResponse _$$_DataTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataTransactionResponse(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      transactionTypeId: json['transaction_type_id'] as String?,
      paymentMethodId: json['payment_method_id'] as String?,
      productId: json['product_id'] as String?,
      amount: json['amount'] as String?,
      transactionCode: json['transaction_code'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      paymentMethod: json['paymentMethod'] == null
          ? null
          : DataPaymentMethodResponse.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      transactionType: json['transactionType'] == null
          ? null
          : DataTransactionTypeResponse.fromJson(
              json['transactionType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataTransactionResponseToJson(
        _$_DataTransactionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'transaction_type_id': instance.transactionTypeId,
      'payment_method_id': instance.paymentMethodId,
      'product_id': instance.productId,
      'amount': instance.amount,
      'transaction_code': instance.transactionCode,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.createdAt,
      'paymentMethod': instance.paymentMethod,
      'transactionType': instance.transactionType,
    };

_$_DataPaymentMethodResponse _$$_DataPaymentMethodResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataPaymentMethodResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_DataPaymentMethodResponseToJson(
        _$_DataPaymentMethodResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'thumbnail': instance.thumbnail,
    };

_$_DataTransactionTypeResponse _$$_DataTransactionTypeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataTransactionTypeResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      action: json['action'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_DataTransactionTypeResponseToJson(
        _$_DataTransactionTypeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'action': instance.action,
      'thumbnail': instance.thumbnail,
    };

_$_LinkTransactionHistoryResponse _$$_LinkTransactionHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LinkTransactionHistoryResponse(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinkTransactionHistoryResponseToJson(
        _$_LinkTransactionHistoryResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
