// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_byusername_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserBySearchingEntity {
  String? get username => throw _privateConstructorUsedError;
  String? get verified => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBySearchingEntityCopyWith<UserBySearchingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBySearchingEntityCopyWith<$Res> {
  factory $UserBySearchingEntityCopyWith(UserBySearchingEntity value,
          $Res Function(UserBySearchingEntity) then) =
      _$UserBySearchingEntityCopyWithImpl<$Res, UserBySearchingEntity>;
  @useResult
  $Res call({String? username, String? verified, String? profilePicture});
}

/// @nodoc
class _$UserBySearchingEntityCopyWithImpl<$Res,
        $Val extends UserBySearchingEntity>
    implements $UserBySearchingEntityCopyWith<$Res> {
  _$UserBySearchingEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserBySearchingEntityCopyWith<$Res>
    implements $UserBySearchingEntityCopyWith<$Res> {
  factory _$$_UserBySearchingEntityCopyWith(_$_UserBySearchingEntity value,
          $Res Function(_$_UserBySearchingEntity) then) =
      __$$_UserBySearchingEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? verified, String? profilePicture});
}

/// @nodoc
class __$$_UserBySearchingEntityCopyWithImpl<$Res>
    extends _$UserBySearchingEntityCopyWithImpl<$Res, _$_UserBySearchingEntity>
    implements _$$_UserBySearchingEntityCopyWith<$Res> {
  __$$_UserBySearchingEntityCopyWithImpl(_$_UserBySearchingEntity _value,
      $Res Function(_$_UserBySearchingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$_UserBySearchingEntity(
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

class _$_UserBySearchingEntity implements _UserBySearchingEntity {
  const _$_UserBySearchingEntity(
      {this.username, this.verified, this.profilePicture});

  @override
  final String? username;
  @override
  final String? verified;
  @override
  final String? profilePicture;

  @override
  String toString() {
    return 'UserBySearchingEntity(username: $username, verified: $verified, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBySearchingEntity &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, verified, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBySearchingEntityCopyWith<_$_UserBySearchingEntity> get copyWith =>
      __$$_UserBySearchingEntityCopyWithImpl<_$_UserBySearchingEntity>(
          this, _$identity);
}

abstract class _UserBySearchingEntity implements UserBySearchingEntity {
  const factory _UserBySearchingEntity(
      {final String? username,
      final String? verified,
      final String? profilePicture}) = _$_UserBySearchingEntity;

  @override
  String? get username;
  @override
  String? get verified;
  @override
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_UserBySearchingEntityCopyWith<_$_UserBySearchingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResponseSearchUsername {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UserBySearchingEntity>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseSearchUsernameCopyWith<ResponseSearchUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSearchUsernameCopyWith<$Res> {
  factory $ResponseSearchUsernameCopyWith(ResponseSearchUsername value,
          $Res Function(ResponseSearchUsername) then) =
      _$ResponseSearchUsernameCopyWithImpl<$Res, ResponseSearchUsername>;
  @useResult
  $Res call(
      {String? status, String? message, List<UserBySearchingEntity>? data});
}

/// @nodoc
class _$ResponseSearchUsernameCopyWithImpl<$Res,
        $Val extends ResponseSearchUsername>
    implements $ResponseSearchUsernameCopyWith<$Res> {
  _$ResponseSearchUsernameCopyWithImpl(this._value, this._then);

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
              as List<UserBySearchingEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseSearchUsernameCopyWith<$Res>
    implements $ResponseSearchUsernameCopyWith<$Res> {
  factory _$$_ResponseSearchUsernameCopyWith(_$_ResponseSearchUsername value,
          $Res Function(_$_ResponseSearchUsername) then) =
      __$$_ResponseSearchUsernameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, String? message, List<UserBySearchingEntity>? data});
}

/// @nodoc
class __$$_ResponseSearchUsernameCopyWithImpl<$Res>
    extends _$ResponseSearchUsernameCopyWithImpl<$Res,
        _$_ResponseSearchUsername>
    implements _$$_ResponseSearchUsernameCopyWith<$Res> {
  __$$_ResponseSearchUsernameCopyWithImpl(_$_ResponseSearchUsername _value,
      $Res Function(_$_ResponseSearchUsername) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ResponseSearchUsername(
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
              as List<UserBySearchingEntity>?,
    ));
  }
}

/// @nodoc

class _$_ResponseSearchUsername implements _ResponseSearchUsername {
  const _$_ResponseSearchUsername(
      {this.status, this.message, final List<UserBySearchingEntity>? data})
      : _data = data;

  @override
  final String? status;
  @override
  final String? message;
  final List<UserBySearchingEntity>? _data;
  @override
  List<UserBySearchingEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseSearchUsername(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseSearchUsername &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseSearchUsernameCopyWith<_$_ResponseSearchUsername> get copyWith =>
      __$$_ResponseSearchUsernameCopyWithImpl<_$_ResponseSearchUsername>(
          this, _$identity);
}

abstract class _ResponseSearchUsername implements ResponseSearchUsername {
  const factory _ResponseSearchUsername(
      {final String? status,
      final String? message,
      final List<UserBySearchingEntity>? data}) = _$_ResponseSearchUsername;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<UserBySearchingEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseSearchUsernameCopyWith<_$_ResponseSearchUsername> get copyWith =>
      throw _privateConstructorUsedError;
}
