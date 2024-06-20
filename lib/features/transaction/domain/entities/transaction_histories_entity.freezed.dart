// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_histories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionHistoryEntity {
  int? get currentPage => throw _privateConstructorUsedError;
  List<DataTransactionHistoryEntity>? get data =>
      throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionHistoryEntityCopyWith<TransactionHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryEntityCopyWith<$Res> {
  factory $TransactionHistoryEntityCopyWith(TransactionHistoryEntity value,
          $Res Function(TransactionHistoryEntity) then) =
      _$TransactionHistoryEntityCopyWithImpl<$Res, TransactionHistoryEntity>;
  @useResult
  $Res call(
      {int? currentPage,
      List<DataTransactionHistoryEntity>? data,
      int? lastPage});
}

/// @nodoc
class _$TransactionHistoryEntityCopyWithImpl<$Res,
        $Val extends TransactionHistoryEntity>
    implements $TransactionHistoryEntityCopyWith<$Res> {
  _$TransactionHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionHistoryEntity>?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryEntityImplCopyWith<$Res>
    implements $TransactionHistoryEntityCopyWith<$Res> {
  factory _$$TransactionHistoryEntityImplCopyWith(
          _$TransactionHistoryEntityImpl value,
          $Res Function(_$TransactionHistoryEntityImpl) then) =
      __$$TransactionHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      List<DataTransactionHistoryEntity>? data,
      int? lastPage});
}

/// @nodoc
class __$$TransactionHistoryEntityImplCopyWithImpl<$Res>
    extends _$TransactionHistoryEntityCopyWithImpl<$Res,
        _$TransactionHistoryEntityImpl>
    implements _$$TransactionHistoryEntityImplCopyWith<$Res> {
  __$$TransactionHistoryEntityImplCopyWithImpl(
      _$TransactionHistoryEntityImpl _value,
      $Res Function(_$TransactionHistoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$TransactionHistoryEntityImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionHistoryEntity>?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TransactionHistoryEntityImpl implements _TransactionHistoryEntity {
  const _$TransactionHistoryEntityImpl(
      {this.currentPage,
      final List<DataTransactionHistoryEntity>? data,
      this.lastPage})
      : _data = data;

  @override
  final int? currentPage;
  final List<DataTransactionHistoryEntity>? _data;
  @override
  List<DataTransactionHistoryEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? lastPage;

  @override
  String toString() {
    return 'TransactionHistoryEntity(currentPage: $currentPage, data: $data, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryEntityImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage,
      const DeepCollectionEquality().hash(_data), lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryEntityImplCopyWith<_$TransactionHistoryEntityImpl>
      get copyWith => __$$TransactionHistoryEntityImplCopyWithImpl<
          _$TransactionHistoryEntityImpl>(this, _$identity);
}

abstract class _TransactionHistoryEntity implements TransactionHistoryEntity {
  const factory _TransactionHistoryEntity(
      {final int? currentPage,
      final List<DataTransactionHistoryEntity>? data,
      final int? lastPage}) = _$TransactionHistoryEntityImpl;

  @override
  int? get currentPage;
  @override
  List<DataTransactionHistoryEntity>? get data;
  @override
  int? get lastPage;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryEntityImplCopyWith<_$TransactionHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataTransactionHistoryEntity {
  String? get id => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get transactionName => throw _privateConstructorUsedError;
  String? get transactionAction => throw _privateConstructorUsedError;
  String? get transactionThumbnail => throw _privateConstructorUsedError;
  String? get transactionCode => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataTransactionHistoryEntityCopyWith<DataTransactionHistoryEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransactionHistoryEntityCopyWith<$Res> {
  factory $DataTransactionHistoryEntityCopyWith(
          DataTransactionHistoryEntity value,
          $Res Function(DataTransactionHistoryEntity) then) =
      _$DataTransactionHistoryEntityCopyWithImpl<$Res,
          DataTransactionHistoryEntity>;
  @useResult
  $Res call(
      {String? id,
      int? amount,
      String? transactionName,
      String? transactionAction,
      String? transactionThumbnail,
      String? transactionCode,
      String? status,
      DateTime? createdAt});
}

/// @nodoc
class _$DataTransactionHistoryEntityCopyWithImpl<$Res,
        $Val extends DataTransactionHistoryEntity>
    implements $DataTransactionHistoryEntityCopyWith<$Res> {
  _$DataTransactionHistoryEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$DataTransactionHistoryEntityImplCopyWith<$Res>
    implements $DataTransactionHistoryEntityCopyWith<$Res> {
  factory _$$DataTransactionHistoryEntityImplCopyWith(
          _$DataTransactionHistoryEntityImpl value,
          $Res Function(_$DataTransactionHistoryEntityImpl) then) =
      __$$DataTransactionHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? amount,
      String? transactionName,
      String? transactionAction,
      String? transactionThumbnail,
      String? transactionCode,
      String? status,
      DateTime? createdAt});
}

/// @nodoc
class __$$DataTransactionHistoryEntityImplCopyWithImpl<$Res>
    extends _$DataTransactionHistoryEntityCopyWithImpl<$Res,
        _$DataTransactionHistoryEntityImpl>
    implements _$$DataTransactionHistoryEntityImplCopyWith<$Res> {
  __$$DataTransactionHistoryEntityImplCopyWithImpl(
      _$DataTransactionHistoryEntityImpl _value,
      $Res Function(_$DataTransactionHistoryEntityImpl) _then)
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
    return _then(_$DataTransactionHistoryEntityImpl(
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

class _$DataTransactionHistoryEntityImpl
    implements _DataTransactionHistoryEntity {
  const _$DataTransactionHistoryEntityImpl(
      {this.id,
      this.amount,
      this.transactionName,
      this.transactionAction,
      this.transactionThumbnail,
      this.transactionCode,
      this.status,
      this.createdAt});

  @override
  final String? id;
  @override
  final int? amount;
  @override
  final String? transactionName;
  @override
  final String? transactionAction;
  @override
  final String? transactionThumbnail;
  @override
  final String? transactionCode;
  @override
  final String? status;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DataTransactionHistoryEntity(id: $id, amount: $amount, transactionName: $transactionName, transactionAction: $transactionAction, transactionThumbnail: $transactionThumbnail, transactionCode: $transactionCode, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataTransactionHistoryEntityImpl &&
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
  _$$DataTransactionHistoryEntityImplCopyWith<
          _$DataTransactionHistoryEntityImpl>
      get copyWith => __$$DataTransactionHistoryEntityImplCopyWithImpl<
          _$DataTransactionHistoryEntityImpl>(this, _$identity);
}

abstract class _DataTransactionHistoryEntity
    implements DataTransactionHistoryEntity {
  const factory _DataTransactionHistoryEntity(
      {final String? id,
      final int? amount,
      final String? transactionName,
      final String? transactionAction,
      final String? transactionThumbnail,
      final String? transactionCode,
      final String? status,
      final DateTime? createdAt}) = _$DataTransactionHistoryEntityImpl;

  @override
  String? get id;
  @override
  int? get amount;
  @override
  String? get transactionName;
  @override
  String? get transactionAction;
  @override
  String? get transactionThumbnail;
  @override
  String? get transactionCode;
  @override
  String? get status;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DataTransactionHistoryEntityImplCopyWith<
          _$DataTransactionHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
