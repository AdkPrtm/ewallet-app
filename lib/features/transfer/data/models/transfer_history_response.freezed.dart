// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferHistoryResponse _$TransferHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _TransferHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$TransferHistoryResponse {
  List<DataTransferResponse>? get data => throw _privateConstructorUsedError;
  set data(List<DataTransferResponse>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  set currentPage(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  set lastPage(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferHistoryResponseCopyWith<TransferHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferHistoryResponseCopyWith<$Res> {
  factory $TransferHistoryResponseCopyWith(TransferHistoryResponse value,
          $Res Function(TransferHistoryResponse) then) =
      _$TransferHistoryResponseCopyWithImpl<$Res, TransferHistoryResponse>;
  @useResult
  $Res call(
      {List<DataTransferResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$TransferHistoryResponseCopyWithImpl<$Res,
        $Val extends TransferHistoryResponse>
    implements $TransferHistoryResponseCopyWith<$Res> {
  _$TransferHistoryResponseCopyWithImpl(this._value, this._then);

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
              as List<DataTransferResponse>?,
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
abstract class _$$TransferHistoryResponseImplCopyWith<$Res>
    implements $TransferHistoryResponseCopyWith<$Res> {
  factory _$$TransferHistoryResponseImplCopyWith(
          _$TransferHistoryResponseImpl value,
          $Res Function(_$TransferHistoryResponseImpl) then) =
      __$$TransferHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DataTransferResponse>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$TransferHistoryResponseImplCopyWithImpl<$Res>
    extends _$TransferHistoryResponseCopyWithImpl<$Res,
        _$TransferHistoryResponseImpl>
    implements _$$TransferHistoryResponseImplCopyWith<$Res> {
  __$$TransferHistoryResponseImplCopyWithImpl(
      _$TransferHistoryResponseImpl _value,
      $Res Function(_$TransferHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$TransferHistoryResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransferResponse>?,
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
class _$TransferHistoryResponseImpl extends _TransferHistoryResponse {
  _$TransferHistoryResponseImpl(
      {this.data,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage})
      : super._();

  factory _$TransferHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferHistoryResponseImplFromJson(json);

  @override
  List<DataTransferResponse>? data;
  @override
  @JsonKey(name: 'current_page')
  int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  int? lastPage;

  @override
  String toString() {
    return 'TransferHistoryResponse(data: $data, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferHistoryResponseImplCopyWith<_$TransferHistoryResponseImpl>
      get copyWith => __$$TransferHistoryResponseImplCopyWithImpl<
          _$TransferHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _TransferHistoryResponse extends TransferHistoryResponse {
  factory _TransferHistoryResponse(
          {List<DataTransferResponse>? data,
          @JsonKey(name: 'current_page') int? currentPage,
          @JsonKey(name: 'last_page') int? lastPage}) =
      _$TransferHistoryResponseImpl;
  _TransferHistoryResponse._() : super._();

  factory _TransferHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$TransferHistoryResponseImpl.fromJson;

  @override
  List<DataTransferResponse>? get data;
  set data(List<DataTransferResponse>? value);
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'current_page')
  set currentPage(int? value);
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @JsonKey(name: 'last_page')
  set lastPage(int? value);
  @override
  @JsonKey(ignore: true)
  _$$TransferHistoryResponseImplCopyWith<_$TransferHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataTransferResponse _$DataTransferResponseFromJson(Map<String, dynamic> json) {
  return _DataTransferResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTransferResponse {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  set firstName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  set lastName(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  set verified(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  set profilePicture(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTransferResponseCopyWith<DataTransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransferResponseCopyWith<$Res> {
  factory $DataTransferResponseCopyWith(DataTransferResponse value,
          $Res Function(DataTransferResponse) then) =
      _$DataTransferResponseCopyWithImpl<$Res, DataTransferResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      bool? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class _$DataTransferResponseCopyWithImpl<$Res,
        $Val extends DataTransferResponse>
    implements $DataTransferResponseCopyWith<$Res> {
  _$DataTransferResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$DataTransferResponseImplCopyWith<$Res>
    implements $DataTransferResponseCopyWith<$Res> {
  factory _$$DataTransferResponseImplCopyWith(_$DataTransferResponseImpl value,
          $Res Function(_$DataTransferResponseImpl) then) =
      __$$DataTransferResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      bool? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class __$$DataTransferResponseImplCopyWithImpl<$Res>
    extends _$DataTransferResponseCopyWithImpl<$Res, _$DataTransferResponseImpl>
    implements _$$DataTransferResponseImplCopyWith<$Res> {
  __$$DataTransferResponseImplCopyWithImpl(_$DataTransferResponseImpl _value,
      $Res Function(_$DataTransferResponseImpl) _then)
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
    return _then(_$DataTransferResponseImpl(
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
@JsonSerializable()
class _$DataTransferResponseImpl implements _DataTransferResponse {
  _$DataTransferResponseImpl(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.username,
      this.verified,
      @JsonKey(name: 'profile_picture') this.profilePicture});

  factory _$DataTransferResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataTransferResponseImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  String? firstName;
  @override
  @JsonKey(name: 'last_name')
  String? lastName;
  @override
  String? username;
  @override
  bool? verified;
  @override
  @JsonKey(name: 'profile_picture')
  String? profilePicture;

  @override
  String toString() {
    return 'DataTransferResponse(firstName: $firstName, lastName: $lastName, username: $username, verified: $verified, profilePicture: $profilePicture)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTransferResponseImplCopyWith<_$DataTransferResponseImpl>
      get copyWith =>
          __$$DataTransferResponseImplCopyWithImpl<_$DataTransferResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataTransferResponseImplToJson(
      this,
    );
  }
}

abstract class _DataTransferResponse implements DataTransferResponse {
  factory _DataTransferResponse(
          {@JsonKey(name: 'first_name') String? firstName,
          @JsonKey(name: 'last_name') String? lastName,
          String? username,
          bool? verified,
          @JsonKey(name: 'profile_picture') String? profilePicture}) =
      _$DataTransferResponseImpl;

  factory _DataTransferResponse.fromJson(Map<String, dynamic> json) =
      _$DataTransferResponseImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'first_name')
  set firstName(String? value);
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @JsonKey(name: 'last_name')
  set lastName(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  bool? get verified;
  set verified(bool? value);
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @JsonKey(name: 'profile_picture')
  set profilePicture(String? value);
  @override
  @JsonKey(ignore: true)
  _$$DataTransferResponseImplCopyWith<_$DataTransferResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
