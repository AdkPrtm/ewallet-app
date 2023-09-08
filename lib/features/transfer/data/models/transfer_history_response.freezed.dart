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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferHistoryResponse _$TransferHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _TransferHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$TransferHistoryResponse {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  set currentPage(int? value) => throw _privateConstructorUsedError;
  List<DataTransferResponse>? get data => throw _privateConstructorUsedError;
  set data(List<DataTransferResponse>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  set firstPageUrl(String? value) => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  set from(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  set lastPage(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  set lastPageUrl(String? value) => throw _privateConstructorUsedError;
  List<LinksTransferResponse>? get links => throw _privateConstructorUsedError;
  set links(List<LinksTransferResponse>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  set nextPageUrl(String? value) => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  set path(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  set perPage(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  set prevPageUrl(String? value) => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  set to(int? value) => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  set total(int? value) => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'current_page') int? currentPage,
      List<DataTransferResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinksTransferResponse>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
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
              as List<DataTransferResponse>?,
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
              as List<LinksTransferResponse>?,
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
abstract class _$$_TransferHistoryResponseCopyWith<$Res>
    implements $TransferHistoryResponseCopyWith<$Res> {
  factory _$$_TransferHistoryResponseCopyWith(_$_TransferHistoryResponse value,
          $Res Function(_$_TransferHistoryResponse) then) =
      __$$_TransferHistoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<DataTransferResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinksTransferResponse>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_TransferHistoryResponseCopyWithImpl<$Res>
    extends _$TransferHistoryResponseCopyWithImpl<$Res,
        _$_TransferHistoryResponse>
    implements _$$_TransferHistoryResponseCopyWith<$Res> {
  __$$_TransferHistoryResponseCopyWithImpl(_$_TransferHistoryResponse _value,
      $Res Function(_$_TransferHistoryResponse) _then)
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
    return _then(_$_TransferHistoryResponse(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransferResponse>?,
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
              as List<LinksTransferResponse>?,
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
class _$_TransferHistoryResponse extends _TransferHistoryResponse {
  _$_TransferHistoryResponse(
      {@JsonKey(name: 'current_page') this.currentPage,
      this.data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      this.links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : super._();

  factory _$_TransferHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TransferHistoryResponseFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  int? currentPage;
  @override
  List<DataTransferResponse>? data;
  @override
  @JsonKey(name: 'first_page_url')
  String? firstPageUrl;
  @override
  int? from;
  @override
  @JsonKey(name: 'last_page')
  int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? lastPageUrl;
  @override
  List<LinksTransferResponse>? links;
  @override
  @JsonKey(name: 'next_page_url')
  String? nextPageUrl;
  @override
  String? path;
  @override
  @JsonKey(name: 'per_page')
  int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? prevPageUrl;
  @override
  int? to;
  @override
  int? total;

  @override
  String toString() {
    return 'TransferHistoryResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransferHistoryResponseCopyWith<_$_TransferHistoryResponse>
      get copyWith =>
          __$$_TransferHistoryResponseCopyWithImpl<_$_TransferHistoryResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransferHistoryResponseToJson(
      this,
    );
  }
}

abstract class _TransferHistoryResponse extends TransferHistoryResponse {
  factory _TransferHistoryResponse(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<DataTransferResponse>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<LinksTransferResponse>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total}) = _$_TransferHistoryResponse;
  _TransferHistoryResponse._() : super._();

  factory _TransferHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_TransferHistoryResponse.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'current_page')
  set currentPage(int? value);
  @override
  List<DataTransferResponse>? get data;
  set data(List<DataTransferResponse>? value);
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @JsonKey(name: 'first_page_url')
  set firstPageUrl(String? value);
  @override
  int? get from;
  set from(int? value);
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @JsonKey(name: 'last_page')
  set lastPage(int? value);
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @JsonKey(name: 'last_page_url')
  set lastPageUrl(String? value);
  @override
  List<LinksTransferResponse>? get links;
  set links(List<LinksTransferResponse>? value);
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @JsonKey(name: 'next_page_url')
  set nextPageUrl(String? value);
  @override
  String? get path;
  set path(String? value);
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @JsonKey(name: 'per_page')
  set perPage(int? value);
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @JsonKey(name: 'prev_page_url')
  set prevPageUrl(String? value);
  @override
  int? get to;
  set to(int? value);
  @override
  int? get total;
  set total(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_TransferHistoryResponseCopyWith<_$_TransferHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DataTransferResponse _$DataTransferResponseFromJson(Map<String, dynamic> json) {
  return _DataTransferResponse.fromJson(json);
}

/// @nodoc
mixin _$DataTransferResponse {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  String? get verified => throw _privateConstructorUsedError;
  set verified(String? value) => throw _privateConstructorUsedError;
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
      {int? id,
      String? name,
      String? username,
      String? verified,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
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
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTransferResponseCopyWith<$Res>
    implements $DataTransferResponseCopyWith<$Res> {
  factory _$$_DataTransferResponseCopyWith(_$_DataTransferResponse value,
          $Res Function(_$_DataTransferResponse) then) =
      __$$_DataTransferResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class __$$_DataTransferResponseCopyWithImpl<$Res>
    extends _$DataTransferResponseCopyWithImpl<$Res, _$_DataTransferResponse>
    implements _$$_DataTransferResponseCopyWith<$Res> {
  __$$_DataTransferResponseCopyWithImpl(_$_DataTransferResponse _value,
      $Res Function(_$_DataTransferResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$_DataTransferResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataTransferResponse implements _DataTransferResponse {
  _$_DataTransferResponse(
      {this.id,
      this.name,
      this.username,
      this.verified,
      @JsonKey(name: 'profile_picture') this.profilePicture});

  factory _$_DataTransferResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataTransferResponseFromJson(json);

  @override
  int? id;
  @override
  String? name;
  @override
  String? username;
  @override
  String? verified;
  @override
  @JsonKey(name: 'profile_picture')
  String? profilePicture;

  @override
  String toString() {
    return 'DataTransferResponse(id: $id, name: $name, username: $username, verified: $verified, profilePicture: $profilePicture)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTransferResponseCopyWith<_$_DataTransferResponse> get copyWith =>
      __$$_DataTransferResponseCopyWithImpl<_$_DataTransferResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTransferResponseToJson(
      this,
    );
  }
}

abstract class _DataTransferResponse implements DataTransferResponse {
  factory _DataTransferResponse(
          {int? id,
          String? name,
          String? username,
          String? verified,
          @JsonKey(name: 'profile_picture') String? profilePicture}) =
      _$_DataTransferResponse;

  factory _DataTransferResponse.fromJson(Map<String, dynamic> json) =
      _$_DataTransferResponse.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  String? get verified;
  set verified(String? value);
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @JsonKey(name: 'profile_picture')
  set profilePicture(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_DataTransferResponseCopyWith<_$_DataTransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LinksTransferResponse _$LinksTransferResponseFromJson(
    Map<String, dynamic> json) {
  return _LinksTransferResponse.fromJson(json);
}

/// @nodoc
mixin _$LinksTransferResponse {
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  set label(String? value) => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  set active(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksTransferResponseCopyWith<LinksTransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksTransferResponseCopyWith<$Res> {
  factory $LinksTransferResponseCopyWith(LinksTransferResponse value,
          $Res Function(LinksTransferResponse) then) =
      _$LinksTransferResponseCopyWithImpl<$Res, LinksTransferResponse>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinksTransferResponseCopyWithImpl<$Res,
        $Val extends LinksTransferResponse>
    implements $LinksTransferResponseCopyWith<$Res> {
  _$LinksTransferResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_LinksTransferResponseCopyWith<$Res>
    implements $LinksTransferResponseCopyWith<$Res> {
  factory _$$_LinksTransferResponseCopyWith(_$_LinksTransferResponse value,
          $Res Function(_$_LinksTransferResponse) then) =
      __$$_LinksTransferResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinksTransferResponseCopyWithImpl<$Res>
    extends _$LinksTransferResponseCopyWithImpl<$Res, _$_LinksTransferResponse>
    implements _$$_LinksTransferResponseCopyWith<$Res> {
  __$$_LinksTransferResponseCopyWithImpl(_$_LinksTransferResponse _value,
      $Res Function(_$_LinksTransferResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_LinksTransferResponse(
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
class _$_LinksTransferResponse implements _LinksTransferResponse {
  _$_LinksTransferResponse({this.url, this.label, this.active});

  factory _$_LinksTransferResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LinksTransferResponseFromJson(json);

  @override
  String? url;
  @override
  String? label;
  @override
  bool? active;

  @override
  String toString() {
    return 'LinksTransferResponse(url: $url, label: $label, active: $active)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksTransferResponseCopyWith<_$_LinksTransferResponse> get copyWith =>
      __$$_LinksTransferResponseCopyWithImpl<_$_LinksTransferResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksTransferResponseToJson(
      this,
    );
  }
}

abstract class _LinksTransferResponse implements LinksTransferResponse {
  factory _LinksTransferResponse({String? url, String? label, bool? active}) =
      _$_LinksTransferResponse;

  factory _LinksTransferResponse.fromJson(Map<String, dynamic> json) =
      _$_LinksTransferResponse.fromJson;

  @override
  String? get url;
  set url(String? value);
  @override
  String? get label;
  set label(String? value);
  @override
  bool? get active;
  set active(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$_LinksTransferResponseCopyWith<_$_LinksTransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
