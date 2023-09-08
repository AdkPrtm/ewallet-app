// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searching_byusername_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchingByUsernameResponse _$SearchingByUsernameResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchingByUsernameResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchingByUsernameResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ListDataUsername>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchingByUsernameResponseCopyWith<SearchingByUsernameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchingByUsernameResponseCopyWith<$Res> {
  factory $SearchingByUsernameResponseCopyWith(
          SearchingByUsernameResponse value,
          $Res Function(SearchingByUsernameResponse) then) =
      _$SearchingByUsernameResponseCopyWithImpl<$Res,
          SearchingByUsernameResponse>;
  @useResult
  $Res call({String? status, String? message, List<ListDataUsername>? data});
}

/// @nodoc
class _$SearchingByUsernameResponseCopyWithImpl<$Res,
        $Val extends SearchingByUsernameResponse>
    implements $SearchingByUsernameResponseCopyWith<$Res> {
  _$SearchingByUsernameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ListDataUsername>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchingByUsernameResponseCopyWith<$Res>
    implements $SearchingByUsernameResponseCopyWith<$Res> {
  factory _$$_SearchingByUsernameResponseCopyWith(
          _$_SearchingByUsernameResponse value,
          $Res Function(_$_SearchingByUsernameResponse) then) =
      __$$_SearchingByUsernameResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, List<ListDataUsername>? data});
}

/// @nodoc
class __$$_SearchingByUsernameResponseCopyWithImpl<$Res>
    extends _$SearchingByUsernameResponseCopyWithImpl<$Res,
        _$_SearchingByUsernameResponse>
    implements _$$_SearchingByUsernameResponseCopyWith<$Res> {
  __$$_SearchingByUsernameResponseCopyWithImpl(
      _$_SearchingByUsernameResponse _value,
      $Res Function(_$_SearchingByUsernameResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SearchingByUsernameResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ListDataUsername>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchingByUsernameResponse extends _SearchingByUsernameResponse {
  const _$_SearchingByUsernameResponse(
      {this.status, this.message, final List<ListDataUsername>? data})
      : _data = data,
        super._();

  factory _$_SearchingByUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchingByUsernameResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<ListDataUsername>? _data;
  @override
  List<ListDataUsername>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchingByUsernameResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchingByUsernameResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchingByUsernameResponseCopyWith<_$_SearchingByUsernameResponse>
      get copyWith => __$$_SearchingByUsernameResponseCopyWithImpl<
          _$_SearchingByUsernameResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchingByUsernameResponseToJson(
      this,
    );
  }
}

abstract class _SearchingByUsernameResponse
    extends SearchingByUsernameResponse {
  const factory _SearchingByUsernameResponse(
      {final String? status,
      final String? message,
      final List<ListDataUsername>? data}) = _$_SearchingByUsernameResponse;
  const _SearchingByUsernameResponse._() : super._();

  factory _SearchingByUsernameResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchingByUsernameResponse.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<ListDataUsername>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchingByUsernameResponseCopyWith<_$_SearchingByUsernameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

ListDataUsername _$ListDataUsernameFromJson(Map<String, dynamic> json) {
  return _ListDataUsername.fromJson(json);
}

/// @nodoc
mixin _$ListDataUsername {
  String? get username => throw _privateConstructorUsedError;
  String? get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataUsernameCopyWith<ListDataUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataUsernameCopyWith<$Res> {
  factory $ListDataUsernameCopyWith(
          ListDataUsername value, $Res Function(ListDataUsername) then) =
      _$ListDataUsernameCopyWithImpl<$Res, ListDataUsername>;
  @useResult
  $Res call(
      {String? username,
      String? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class _$ListDataUsernameCopyWithImpl<$Res, $Val extends ListDataUsername>
    implements $ListDataUsernameCopyWith<$Res> {
  _$ListDataUsernameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ListDataUsernameCopyWith<$Res>
    implements $ListDataUsernameCopyWith<$Res> {
  factory _$$_ListDataUsernameCopyWith(
          _$_ListDataUsername value, $Res Function(_$_ListDataUsername) then) =
      __$$_ListDataUsernameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class __$$_ListDataUsernameCopyWithImpl<$Res>
    extends _$ListDataUsernameCopyWithImpl<$Res, _$_ListDataUsername>
    implements _$$_ListDataUsernameCopyWith<$Res> {
  __$$_ListDataUsernameCopyWithImpl(
      _$_ListDataUsername _value, $Res Function(_$_ListDataUsername) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$_ListDataUsername(
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
class _$_ListDataUsername extends _ListDataUsername {
  const _$_ListDataUsername(
      {this.username,
      this.verified,
      @JsonKey(name: 'profile_picture') this.profilePicture})
      : super._();

  factory _$_ListDataUsername.fromJson(Map<String, dynamic> json) =>
      _$$_ListDataUsernameFromJson(json);

  @override
  final String? username;
  @override
  final String? verified;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  @override
  String toString() {
    return 'ListDataUsername(username: $username, verified: $verified, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListDataUsername &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, verified, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListDataUsernameCopyWith<_$_ListDataUsername> get copyWith =>
      __$$_ListDataUsernameCopyWithImpl<_$_ListDataUsername>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListDataUsernameToJson(
      this,
    );
  }
}

abstract class _ListDataUsername extends ListDataUsername {
  const factory _ListDataUsername(
          {final String? username,
          final String? verified,
          @JsonKey(name: 'profile_picture') final String? profilePicture}) =
      _$_ListDataUsername;
  const _ListDataUsername._() : super._();

  factory _ListDataUsername.fromJson(Map<String, dynamic> json) =
      _$_ListDataUsername.fromJson;

  @override
  String? get username;
  @override
  String? get verified;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_ListDataUsernameCopyWith<_$_ListDataUsername> get copyWith =>
      throw _privateConstructorUsedError;
}
