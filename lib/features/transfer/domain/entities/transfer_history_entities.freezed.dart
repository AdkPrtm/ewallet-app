// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_history_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferHistoryEntity {
  List<DataTransferHistory>? get data => throw _privateConstructorUsedError;
  set data(List<DataTransferHistory>? value) =>
      throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  set currentPage(int? value) => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  set lastPage(int? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferHistoryEntityCopyWith<TransferHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferHistoryEntityCopyWith<$Res> {
  factory $TransferHistoryEntityCopyWith(TransferHistoryEntity value,
          $Res Function(TransferHistoryEntity) then) =
      _$TransferHistoryEntityCopyWithImpl<$Res, TransferHistoryEntity>;
  @useResult
  $Res call({List<DataTransferHistory>? data, int? currentPage, int? lastPage});
}

/// @nodoc
class _$TransferHistoryEntityCopyWithImpl<$Res,
        $Val extends TransferHistoryEntity>
    implements $TransferHistoryEntityCopyWith<$Res> {
  _$TransferHistoryEntityCopyWithImpl(this._value, this._then);

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
              as List<DataTransferHistory>?,
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
abstract class _$$TransferHistoryEntityImplCopyWith<$Res>
    implements $TransferHistoryEntityCopyWith<$Res> {
  factory _$$TransferHistoryEntityImplCopyWith(
          _$TransferHistoryEntityImpl value,
          $Res Function(_$TransferHistoryEntityImpl) then) =
      __$$TransferHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataTransferHistory>? data, int? currentPage, int? lastPage});
}

/// @nodoc
class __$$TransferHistoryEntityImplCopyWithImpl<$Res>
    extends _$TransferHistoryEntityCopyWithImpl<$Res,
        _$TransferHistoryEntityImpl>
    implements _$$TransferHistoryEntityImplCopyWith<$Res> {
  __$$TransferHistoryEntityImplCopyWithImpl(_$TransferHistoryEntityImpl _value,
      $Res Function(_$TransferHistoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$TransferHistoryEntityImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransferHistory>?,
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

class _$TransferHistoryEntityImpl implements _TransferHistoryEntity {
  _$TransferHistoryEntityImpl({this.data, this.currentPage, this.lastPage});

  @override
  List<DataTransferHistory>? data;
  @override
  int? currentPage;
  @override
  int? lastPage;

  @override
  String toString() {
    return 'TransferHistoryEntity(data: $data, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferHistoryEntityImplCopyWith<_$TransferHistoryEntityImpl>
      get copyWith => __$$TransferHistoryEntityImplCopyWithImpl<
          _$TransferHistoryEntityImpl>(this, _$identity);
}

abstract class _TransferHistoryEntity implements TransferHistoryEntity {
  factory _TransferHistoryEntity(
      {List<DataTransferHistory>? data,
      int? currentPage,
      int? lastPage}) = _$TransferHistoryEntityImpl;

  @override
  List<DataTransferHistory>? get data;
  set data(List<DataTransferHistory>? value);
  @override
  int? get currentPage;
  set currentPage(int? value);
  @override
  int? get lastPage;
  set lastPage(int? value);
  @override
  @JsonKey(ignore: true)
  _$$TransferHistoryEntityImplCopyWith<_$TransferHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataTransferHistory {
  String? get firstName => throw _privateConstructorUsedError;
  set firstName(String? value) => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  set lastName(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  set verified(bool? value) => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  set profilePicture(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataTransferHistoryCopyWith<DataTransferHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransferHistoryCopyWith<$Res> {
  factory $DataTransferHistoryCopyWith(
          DataTransferHistory value, $Res Function(DataTransferHistory) then) =
      _$DataTransferHistoryCopyWithImpl<$Res, DataTransferHistory>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? username,
      bool? verified,
      String? profilePicture});
}

/// @nodoc
class _$DataTransferHistoryCopyWithImpl<$Res, $Val extends DataTransferHistory>
    implements $DataTransferHistoryCopyWith<$Res> {
  _$DataTransferHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataTransferHistoryImplCopyWith<$Res>
    implements $DataTransferHistoryCopyWith<$Res> {
  factory _$$DataTransferHistoryImplCopyWith(_$DataTransferHistoryImpl value,
          $Res Function(_$DataTransferHistoryImpl) then) =
      __$$DataTransferHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? username,
      bool? verified,
      String? profilePicture});
}

/// @nodoc
class __$$DataTransferHistoryImplCopyWithImpl<$Res>
    extends _$DataTransferHistoryCopyWithImpl<$Res, _$DataTransferHistoryImpl>
    implements _$$DataTransferHistoryImplCopyWith<$Res> {
  __$$DataTransferHistoryImplCopyWithImpl(_$DataTransferHistoryImpl _value,
      $Res Function(_$DataTransferHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$DataTransferHistoryImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataTransferHistoryImpl implements _DataTransferHistory {
  _$DataTransferHistoryImpl(
      {this.firstName,
      this.lastName,
      this.username,
      this.verified,
      this.profilePicture});

  @override
  String? firstName;
  @override
  String? lastName;
  @override
  String? username;
  @override
  bool? verified;
  @override
  String? profilePicture;

  @override
  String toString() {
    return 'DataTransferHistory(firstName: $firstName, lastName: $lastName, username: $username, verified: $verified, profilePicture: $profilePicture)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTransferHistoryImplCopyWith<_$DataTransferHistoryImpl> get copyWith =>
      __$$DataTransferHistoryImplCopyWithImpl<_$DataTransferHistoryImpl>(
          this, _$identity);
}

abstract class _DataTransferHistory implements DataTransferHistory {
  factory _DataTransferHistory(
      {String? firstName,
      String? lastName,
      String? username,
      bool? verified,
      String? profilePicture}) = _$DataTransferHistoryImpl;

  @override
  String? get firstName;
  set firstName(String? value);
  @override
  String? get lastName;
  set lastName(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  bool? get verified;
  set verified(bool? value);
  @override
  String? get profilePicture;
  set profilePicture(String? value);
  @override
  @JsonKey(ignore: true)
  _$$DataTransferHistoryImplCopyWith<_$DataTransferHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
