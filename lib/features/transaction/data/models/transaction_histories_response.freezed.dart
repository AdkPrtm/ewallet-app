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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionHistoryResponse _$TransactionHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistoryResponse {
  List<DataTransactionResponse>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;

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
      {List<DataTransactionResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
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
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionResponse>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryResponseImplCopyWith<$Res>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  factory _$$TransactionHistoryResponseImplCopyWith(
          _$TransactionHistoryResponseImpl value,
          $Res Function(_$TransactionHistoryResponseImpl) then) =
      __$$TransactionHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DataTransactionResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$TransactionHistoryResponseImplCopyWithImpl<$Res>
    extends _$TransactionHistoryResponseCopyWithImpl<$Res,
        _$TransactionHistoryResponseImpl>
    implements _$$TransactionHistoryResponseImplCopyWith<$Res> {
  __$$TransactionHistoryResponseImplCopyWithImpl(
      _$TransactionHistoryResponseImpl _value,
      $Res Function(_$TransactionHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$TransactionHistoryResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionResponse>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionHistoryResponseImpl extends _TransactionHistoryResponse {
  const _$TransactionHistoryResponseImpl(
      {final List<DataTransactionResponse>? data,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage})
      : _data = data,
        super._();

  factory _$TransactionHistoryResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionHistoryResponseImplFromJson(json);

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
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;

  @override
  String toString() {
    return 'TransactionHistoryResponse(data: $data, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), currentPage, lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryResponseImplCopyWith<_$TransactionHistoryResponseImpl>
      get copyWith => __$$TransactionHistoryResponseImplCopyWithImpl<
          _$TransactionHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionHistoryResponse extends TransactionHistoryResponse {
  const factory _TransactionHistoryResponse(
          {final List<DataTransactionResponse>? data,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'last_page') final int? lastPage}) =
      _$TransactionHistoryResponseImpl;
  const _TransactionHistoryResponse._() : super._();

  factory _TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryResponseImpl.fromJson;

  @override
  List<DataTransactionResponse>? get data;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryResponseImplCopyWith<_$TransactionHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataTransactionResponse _$DataTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _DataTransactionResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTransactionResponse {
  String? get id => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_name')
  String? get transactionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_action')
  String? get transactionAction => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_thumbnail')
  String? get transactionThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_code')
  String? get transactionCode => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

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
      {String? id,
      int? amount,
      @JsonKey(name: 'transaction_name') String? transactionName,
      @JsonKey(name: 'transaction_action') String? transactionAction,
      @JsonKey(name: 'transaction_thumbnail') String? transactionThumbnail,
      @JsonKey(name: 'transaction_code') String? transactionCode,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt});
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
    Object? amount = freezed,
    Object? transactionName = freezed,
    Object? transactionAction = freezed,
    Object? transactionThumbnail = freezed,
    Object? transactionCode = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionName: freezed == transactionName
          ? _value.transactionName
          : transactionName // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionAction: freezed == transactionAction
          ? _value.transactionAction
          : transactionAction // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionThumbnail: freezed == transactionThumbnail
          ? _value.transactionThumbnail
          : transactionThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataTransactionResponseImplCopyWith<$Res>
    implements $DataTransactionResponseCopyWith<$Res> {
  factory _$$DataTransactionResponseImplCopyWith(
          _$DataTransactionResponseImpl value,
          $Res Function(_$DataTransactionResponseImpl) then) =
      __$$DataTransactionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? amount,
      @JsonKey(name: 'transaction_name') String? transactionName,
      @JsonKey(name: 'transaction_action') String? transactionAction,
      @JsonKey(name: 'transaction_thumbnail') String? transactionThumbnail,
      @JsonKey(name: 'transaction_code') String? transactionCode,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$DataTransactionResponseImplCopyWithImpl<$Res>
    extends _$DataTransactionResponseCopyWithImpl<$Res,
        _$DataTransactionResponseImpl>
    implements _$$DataTransactionResponseImplCopyWith<$Res> {
  __$$DataTransactionResponseImplCopyWithImpl(
      _$DataTransactionResponseImpl _value,
      $Res Function(_$DataTransactionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? transactionName = freezed,
    Object? transactionAction = freezed,
    Object? transactionThumbnail = freezed,
    Object? transactionCode = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$DataTransactionResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionName: freezed == transactionName
          ? _value.transactionName
          : transactionName // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionAction: freezed == transactionAction
          ? _value.transactionAction
          : transactionAction // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionThumbnail: freezed == transactionThumbnail
          ? _value.transactionThumbnail
          : transactionThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataTransactionResponseImpl implements _DataTransactionResponse {
  const _$DataTransactionResponseImpl(
      {this.id,
      this.amount,
      @JsonKey(name: 'transaction_name') this.transactionName,
      @JsonKey(name: 'transaction_action') this.transactionAction,
      @JsonKey(name: 'transaction_thumbnail') this.transactionThumbnail,
      @JsonKey(name: 'transaction_code') this.transactionCode,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$DataTransactionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataTransactionResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final int? amount;
  @override
  @JsonKey(name: 'transaction_name')
  final String? transactionName;
  @override
  @JsonKey(name: 'transaction_action')
  final String? transactionAction;
  @override
  @JsonKey(name: 'transaction_thumbnail')
  final String? transactionThumbnail;
  @override
  @JsonKey(name: 'transaction_code')
  final String? transactionCode;
  @override
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DataTransactionResponse(id: $id, amount: $amount, transactionName: $transactionName, transactionAction: $transactionAction, transactionThumbnail: $transactionThumbnail, transactionCode: $transactionCode, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataTransactionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionName, transactionName) ||
                other.transactionName == transactionName) &&
            (identical(other.transactionAction, transactionAction) ||
                other.transactionAction == transactionAction) &&
            (identical(other.transactionThumbnail, transactionThumbnail) ||
                other.transactionThumbnail == transactionThumbnail) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      transactionName,
      transactionAction,
      transactionThumbnail,
      transactionCode,
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTransactionResponseImplCopyWith<_$DataTransactionResponseImpl>
      get copyWith => __$$DataTransactionResponseImplCopyWithImpl<
          _$DataTransactionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataTransactionResponseImplToJson(
      this,
    );
  }
}

abstract class _DataTransactionResponse implements DataTransactionResponse {
  const factory _DataTransactionResponse(
          {final String? id,
          final int? amount,
          @JsonKey(name: 'transaction_name') final String? transactionName,
          @JsonKey(name: 'transaction_action') final String? transactionAction,
          @JsonKey(name: 'transaction_thumbnail')
          final String? transactionThumbnail,
          @JsonKey(name: 'transaction_code') final String? transactionCode,
          final String? status,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$DataTransactionResponseImpl;

  factory _DataTransactionResponse.fromJson(Map<String, dynamic> json) =
      _$DataTransactionResponseImpl.fromJson;

  @override
  String? get id;
  @override
  int? get amount;
  @override
  @JsonKey(name: 'transaction_name')
  String? get transactionName;
  @override
  @JsonKey(name: 'transaction_action')
  String? get transactionAction;
  @override
  @JsonKey(name: 'transaction_thumbnail')
  String? get transactionThumbnail;
  @override
  @JsonKey(name: 'transaction_code')
  String? get transactionCode;
  @override
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DataTransactionResponseImplCopyWith<_$DataTransactionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
