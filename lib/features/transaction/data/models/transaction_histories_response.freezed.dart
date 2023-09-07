// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_histories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionHistoryResponse _$TransactionHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistoryResponse {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<DataTransactionResponse>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<LinkTransactionHistoryResponse>? get links =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryResponseCopyWith<TransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryResponseCopyWith<$Res> {
  factory $TransactionHistoryResponseCopyWith(TransactionHistoryResponse value,
          $Res Function(TransactionHistoryResponse) then) =
      _$TransactionHistoryResponseCopyWithImpl<$Res,
          TransactionHistoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
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
      int? total});
}

/// @nodoc
class _$TransactionHistoryResponseCopyWithImpl<$Res,
        $Val extends TransactionHistoryResponse>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  _$TransactionHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionResponse>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkTransactionHistoryResponse>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionHistoryResponseCopyWith<$Res>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  factory _$$_TransactionHistoryResponseCopyWith(
          _$_TransactionHistoryResponse value,
          $Res Function(_$_TransactionHistoryResponse) then) =
      __$$_TransactionHistoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
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
      int? total});
}

/// @nodoc
class __$$_TransactionHistoryResponseCopyWithImpl<$Res>
    extends _$TransactionHistoryResponseCopyWithImpl<$Res,
        _$_TransactionHistoryResponse>
    implements _$$_TransactionHistoryResponseCopyWith<$Res> {
  __$$_TransactionHistoryResponseCopyWithImpl(
      _$_TransactionHistoryResponse _value,
      $Res Function(_$_TransactionHistoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_TransactionHistoryResponse(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionResponse>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkTransactionHistoryResponse>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionHistoryResponse extends _TransactionHistoryResponse {
  const _$_TransactionHistoryResponse(
      {@JsonKey(name: 'current_page') this.currentPage,
      final List<DataTransactionResponse>? data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      final List<LinkTransactionHistoryResponse>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links,
        super._();

  factory _$_TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionHistoryResponseFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<DataTransactionResponse>? _data;
  @override
  List<DataTransactionResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<LinkTransactionHistoryResponse>? _links;
  @override
  List<LinkTransactionHistoryResponse>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'TransactionHistoryResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionHistoryResponse &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionHistoryResponseCopyWith<_$_TransactionHistoryResponse>
      get copyWith => __$$_TransactionHistoryResponseCopyWithImpl<
          _$_TransactionHistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionHistoryResponseToJson(
      this,
    );
  }
}

abstract class _TransactionHistoryResponse extends TransactionHistoryResponse {
  const factory _TransactionHistoryResponse(
      {@JsonKey(name: 'current_page') final int? currentPage,
      final List<DataTransactionResponse>? data,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      final List<LinkTransactionHistoryResponse>? links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      final int? to,
      final int? total}) = _$_TransactionHistoryResponse;
  const _TransactionHistoryResponse._() : super._();

  factory _TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionHistoryResponse.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<DataTransactionResponse>? get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<LinkTransactionHistoryResponse>? get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionHistoryResponseCopyWith<_$_TransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DataTransactionResponse _$DataTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _DataTransactionResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTransactionResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_type_id')
  String? get transactionTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_id')
  String? get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_code')
  String? get transactionCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  DataPaymentMethodResponse? get paymentMethod =>
      throw _privateConstructorUsedError;
  DataTransactionTypeResponse? get transactionType =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTransactionResponseCopyWith<DataTransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransactionResponseCopyWith<$Res> {
  factory $DataTransactionResponseCopyWith(DataTransactionResponse value,
          $Res Function(DataTransactionResponse) then) =
      _$DataTransactionResponseCopyWithImpl<$Res, DataTransactionResponse>;
  @useResult
  $Res call(
      {int? id,
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
      DataTransactionTypeResponse? transactionType});

  $DataPaymentMethodResponseCopyWith<$Res>? get paymentMethod;
  $DataTransactionTypeResponseCopyWith<$Res>? get transactionType;
}

/// @nodoc
class _$DataTransactionResponseCopyWithImpl<$Res,
        $Val extends DataTransactionResponse>
    implements $DataTransactionResponseCopyWith<$Res> {
  _$DataTransactionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? transactionTypeId = freezed,
    Object? paymentMethodId = freezed,
    Object? productId = freezed,
    Object? amount = freezed,
    Object? transactionCode = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? paymentMethod = freezed,
    Object? transactionType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTypeId: freezed == transactionTypeId
          ? _value.transactionTypeId
          : transactionTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as DataPaymentMethodResponse?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as DataTransactionTypeResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataPaymentMethodResponseCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $DataPaymentMethodResponseCopyWith<$Res>(_value.paymentMethod!,
        (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataTransactionTypeResponseCopyWith<$Res>? get transactionType {
    if (_value.transactionType == null) {
      return null;
    }

    return $DataTransactionTypeResponseCopyWith<$Res>(_value.transactionType!,
        (value) {
      return _then(_value.copyWith(transactionType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataTransactionResponseCopyWith<$Res>
    implements $DataTransactionResponseCopyWith<$Res> {
  factory _$$_DataTransactionResponseCopyWith(_$_DataTransactionResponse value,
          $Res Function(_$_DataTransactionResponse) then) =
      __$$_DataTransactionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      DataTransactionTypeResponse? transactionType});

  @override
  $DataPaymentMethodResponseCopyWith<$Res>? get paymentMethod;
  @override
  $DataTransactionTypeResponseCopyWith<$Res>? get transactionType;
}

/// @nodoc
class __$$_DataTransactionResponseCopyWithImpl<$Res>
    extends _$DataTransactionResponseCopyWithImpl<$Res,
        _$_DataTransactionResponse>
    implements _$$_DataTransactionResponseCopyWith<$Res> {
  __$$_DataTransactionResponseCopyWithImpl(_$_DataTransactionResponse _value,
      $Res Function(_$_DataTransactionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? transactionTypeId = freezed,
    Object? paymentMethodId = freezed,
    Object? productId = freezed,
    Object? amount = freezed,
    Object? transactionCode = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? paymentMethod = freezed,
    Object? transactionType = freezed,
  }) {
    return _then(_$_DataTransactionResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTypeId: freezed == transactionTypeId
          ? _value.transactionTypeId
          : transactionTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as DataPaymentMethodResponse?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as DataTransactionTypeResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataTransactionResponse implements _DataTransactionResponse {
  const _$_DataTransactionResponse(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'transaction_type_id') this.transactionTypeId,
      @JsonKey(name: 'payment_method_id') this.paymentMethodId,
      @JsonKey(name: 'product_id') this.productId,
      this.amount,
      @JsonKey(name: 'transaction_code') this.transactionCode,
      this.description,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      this.paymentMethod,
      this.transactionType});

  factory _$_DataTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataTransactionResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'transaction_type_id')
  final String? transactionTypeId;
  @override
  @JsonKey(name: 'payment_method_id')
  final String? paymentMethodId;
  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  final String? amount;
  @override
  @JsonKey(name: 'transaction_code')
  final String? transactionCode;
  @override
  final String? description;
  @override
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final DataPaymentMethodResponse? paymentMethod;
  @override
  final DataTransactionTypeResponse? transactionType;

  @override
  String toString() {
    return 'DataTransactionResponse(id: $id, userId: $userId, transactionTypeId: $transactionTypeId, paymentMethodId: $paymentMethodId, productId: $productId, amount: $amount, transactionCode: $transactionCode, description: $description, status: $status, createdAt: $createdAt, paymentMethod: $paymentMethod, transactionType: $transactionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTransactionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.transactionTypeId, transactionTypeId) ||
                other.transactionTypeId == transactionTypeId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      transactionTypeId,
      paymentMethodId,
      productId,
      amount,
      transactionCode,
      description,
      status,
      createdAt,
      paymentMethod,
      transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTransactionResponseCopyWith<_$_DataTransactionResponse>
      get copyWith =>
          __$$_DataTransactionResponseCopyWithImpl<_$_DataTransactionResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTransactionResponseToJson(
      this,
    );
  }
}

abstract class _DataTransactionResponse implements DataTransactionResponse {
  const factory _DataTransactionResponse(
          {final int? id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'transaction_type_id') final String? transactionTypeId,
          @JsonKey(name: 'payment_method_id') final String? paymentMethodId,
          @JsonKey(name: 'product_id') final String? productId,
          final String? amount,
          @JsonKey(name: 'transaction_code') final String? transactionCode,
          final String? description,
          final String? status,
          @JsonKey(name: 'created_at') final String? createdAt,
          final DataPaymentMethodResponse? paymentMethod,
          final DataTransactionTypeResponse? transactionType}) =
      _$_DataTransactionResponse;

  factory _DataTransactionResponse.fromJson(Map<String, dynamic> json) =
      _$_DataTransactionResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'transaction_type_id')
  String? get transactionTypeId;
  @override
  @JsonKey(name: 'payment_method_id')
  String? get paymentMethodId;
  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  String? get amount;
  @override
  @JsonKey(name: 'transaction_code')
  String? get transactionCode;
  @override
  String? get description;
  @override
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  DataPaymentMethodResponse? get paymentMethod;
  @override
  DataTransactionTypeResponse? get transactionType;
  @override
  @JsonKey(ignore: true)
  _$$_DataTransactionResponseCopyWith<_$_DataTransactionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DataPaymentMethodResponse _$DataPaymentMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _DataPaymentMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$DataPaymentMethodResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPaymentMethodResponseCopyWith<DataPaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPaymentMethodResponseCopyWith<$Res> {
  factory $DataPaymentMethodResponseCopyWith(DataPaymentMethodResponse value,
          $Res Function(DataPaymentMethodResponse) then) =
      _$DataPaymentMethodResponseCopyWithImpl<$Res, DataPaymentMethodResponse>;
  @useResult
  $Res call({int? id, String? name, String? code, String? thumbnail});
}

/// @nodoc
class _$DataPaymentMethodResponseCopyWithImpl<$Res,
        $Val extends DataPaymentMethodResponse>
    implements $DataPaymentMethodResponseCopyWith<$Res> {
  _$DataPaymentMethodResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataPaymentMethodResponseCopyWith<$Res>
    implements $DataPaymentMethodResponseCopyWith<$Res> {
  factory _$$_DataPaymentMethodResponseCopyWith(
          _$_DataPaymentMethodResponse value,
          $Res Function(_$_DataPaymentMethodResponse) then) =
      __$$_DataPaymentMethodResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? code, String? thumbnail});
}

/// @nodoc
class __$$_DataPaymentMethodResponseCopyWithImpl<$Res>
    extends _$DataPaymentMethodResponseCopyWithImpl<$Res,
        _$_DataPaymentMethodResponse>
    implements _$$_DataPaymentMethodResponseCopyWith<$Res> {
  __$$_DataPaymentMethodResponseCopyWithImpl(
      _$_DataPaymentMethodResponse _value,
      $Res Function(_$_DataPaymentMethodResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_DataPaymentMethodResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataPaymentMethodResponse extends _DataPaymentMethodResponse {
  const _$_DataPaymentMethodResponse(
      {this.id, this.name, this.code, this.thumbnail})
      : super._();

  factory _$_DataPaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataPaymentMethodResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'DataPaymentMethodResponse(id: $id, name: $name, code: $code, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataPaymentMethodResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataPaymentMethodResponseCopyWith<_$_DataPaymentMethodResponse>
      get copyWith => __$$_DataPaymentMethodResponseCopyWithImpl<
          _$_DataPaymentMethodResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataPaymentMethodResponseToJson(
      this,
    );
  }
}

abstract class _DataPaymentMethodResponse extends DataPaymentMethodResponse {
  const factory _DataPaymentMethodResponse(
      {final int? id,
      final String? name,
      final String? code,
      final String? thumbnail}) = _$_DataPaymentMethodResponse;
  const _DataPaymentMethodResponse._() : super._();

  factory _DataPaymentMethodResponse.fromJson(Map<String, dynamic> json) =
      _$_DataPaymentMethodResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_DataPaymentMethodResponseCopyWith<_$_DataPaymentMethodResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DataTransactionTypeResponse _$DataTransactionTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _DataTransactionTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTransactionTypeResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTransactionTypeResponseCopyWith<DataTransactionTypeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransactionTypeResponseCopyWith<$Res> {
  factory $DataTransactionTypeResponseCopyWith(
          DataTransactionTypeResponse value,
          $Res Function(DataTransactionTypeResponse) then) =
      _$DataTransactionTypeResponseCopyWithImpl<$Res,
          DataTransactionTypeResponse>;
  @useResult
  $Res call(
      {int? id, String? name, String? code, String? action, String? thumbnail});
}

/// @nodoc
class _$DataTransactionTypeResponseCopyWithImpl<$Res,
        $Val extends DataTransactionTypeResponse>
    implements $DataTransactionTypeResponseCopyWith<$Res> {
  _$DataTransactionTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? action = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTransactionTypeResponseCopyWith<$Res>
    implements $DataTransactionTypeResponseCopyWith<$Res> {
  factory _$$_DataTransactionTypeResponseCopyWith(
          _$_DataTransactionTypeResponse value,
          $Res Function(_$_DataTransactionTypeResponse) then) =
      __$$_DataTransactionTypeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, String? code, String? action, String? thumbnail});
}

/// @nodoc
class __$$_DataTransactionTypeResponseCopyWithImpl<$Res>
    extends _$DataTransactionTypeResponseCopyWithImpl<$Res,
        _$_DataTransactionTypeResponse>
    implements _$$_DataTransactionTypeResponseCopyWith<$Res> {
  __$$_DataTransactionTypeResponseCopyWithImpl(
      _$_DataTransactionTypeResponse _value,
      $Res Function(_$_DataTransactionTypeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? action = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_DataTransactionTypeResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataTransactionTypeResponse extends _DataTransactionTypeResponse {
  const _$_DataTransactionTypeResponse(
      {this.id, this.name, this.code, this.action, this.thumbnail})
      : super._();

  factory _$_DataTransactionTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataTransactionTypeResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? action;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'DataTransactionTypeResponse(id: $id, name: $name, code: $code, action: $action, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTransactionTypeResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, code, action, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTransactionTypeResponseCopyWith<_$_DataTransactionTypeResponse>
      get copyWith => __$$_DataTransactionTypeResponseCopyWithImpl<
          _$_DataTransactionTypeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTransactionTypeResponseToJson(
      this,
    );
  }
}

abstract class _DataTransactionTypeResponse
    extends DataTransactionTypeResponse {
  const factory _DataTransactionTypeResponse(
      {final int? id,
      final String? name,
      final String? code,
      final String? action,
      final String? thumbnail}) = _$_DataTransactionTypeResponse;
  const _DataTransactionTypeResponse._() : super._();

  factory _DataTransactionTypeResponse.fromJson(Map<String, dynamic> json) =
      _$_DataTransactionTypeResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get action;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_DataTransactionTypeResponseCopyWith<_$_DataTransactionTypeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

LinkTransactionHistoryResponse _$LinkTransactionHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _LinkTransactionHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$LinkTransactionHistoryResponse {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkTransactionHistoryResponseCopyWith<LinkTransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkTransactionHistoryResponseCopyWith<$Res> {
  factory $LinkTransactionHistoryResponseCopyWith(
          LinkTransactionHistoryResponse value,
          $Res Function(LinkTransactionHistoryResponse) then) =
      _$LinkTransactionHistoryResponseCopyWithImpl<$Res,
          LinkTransactionHistoryResponse>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkTransactionHistoryResponseCopyWithImpl<$Res,
        $Val extends LinkTransactionHistoryResponse>
    implements $LinkTransactionHistoryResponseCopyWith<$Res> {
  _$LinkTransactionHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkTransactionHistoryResponseCopyWith<$Res>
    implements $LinkTransactionHistoryResponseCopyWith<$Res> {
  factory _$$_LinkTransactionHistoryResponseCopyWith(
          _$_LinkTransactionHistoryResponse value,
          $Res Function(_$_LinkTransactionHistoryResponse) then) =
      __$$_LinkTransactionHistoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinkTransactionHistoryResponseCopyWithImpl<$Res>
    extends _$LinkTransactionHistoryResponseCopyWithImpl<$Res,
        _$_LinkTransactionHistoryResponse>
    implements _$$_LinkTransactionHistoryResponseCopyWith<$Res> {
  __$$_LinkTransactionHistoryResponseCopyWithImpl(
      _$_LinkTransactionHistoryResponse _value,
      $Res Function(_$_LinkTransactionHistoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_LinkTransactionHistoryResponse(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkTransactionHistoryResponse
    implements _LinkTransactionHistoryResponse {
  _$_LinkTransactionHistoryResponse({this.url, this.label, this.active});

  factory _$_LinkTransactionHistoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_LinkTransactionHistoryResponseFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'LinkTransactionHistoryResponse(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkTransactionHistoryResponse &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkTransactionHistoryResponseCopyWith<_$_LinkTransactionHistoryResponse>
      get copyWith => __$$_LinkTransactionHistoryResponseCopyWithImpl<
          _$_LinkTransactionHistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkTransactionHistoryResponseToJson(
      this,
    );
  }
}

abstract class _LinkTransactionHistoryResponse
    implements LinkTransactionHistoryResponse {
  factory _LinkTransactionHistoryResponse(
      {final String? url,
      final String? label,
      final bool? active}) = _$_LinkTransactionHistoryResponse;

  factory _LinkTransactionHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_LinkTransactionHistoryResponse.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_LinkTransactionHistoryResponseCopyWith<_$_LinkTransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}
