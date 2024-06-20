// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckDataResponse _$CheckDataResponseFromJson(Map<String, dynamic> json) {
  return _CheckDataResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckDataResponse {
  @JsonKey(name: 'is_email_exists')
  bool get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_username_exists')
  bool get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckDataResponseCopyWith<CheckDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDataResponseCopyWith<$Res> {
  factory $CheckDataResponseCopyWith(
          CheckDataResponse value, $Res Function(CheckDataResponse) then) =
      _$CheckDataResponseCopyWithImpl<$Res, CheckDataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_email_exists') bool email,
      @JsonKey(name: 'is_username_exists') bool username});
}

/// @nodoc
class _$CheckDataResponseCopyWithImpl<$Res, $Val extends CheckDataResponse>
    implements $CheckDataResponseCopyWith<$Res> {
  _$CheckDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckDataResponseImplCopyWith<$Res>
    implements $CheckDataResponseCopyWith<$Res> {
  factory _$$CheckDataResponseImplCopyWith(_$CheckDataResponseImpl value,
          $Res Function(_$CheckDataResponseImpl) then) =
      __$$CheckDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_email_exists') bool email,
      @JsonKey(name: 'is_username_exists') bool username});
}

/// @nodoc
class __$$CheckDataResponseImplCopyWithImpl<$Res>
    extends _$CheckDataResponseCopyWithImpl<$Res, _$CheckDataResponseImpl>
    implements _$$CheckDataResponseImplCopyWith<$Res> {
  __$$CheckDataResponseImplCopyWithImpl(_$CheckDataResponseImpl _value,
      $Res Function(_$CheckDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_$CheckDataResponseImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckDataResponseImpl extends _CheckDataResponse {
  const _$CheckDataResponseImpl(@JsonKey(name: 'is_email_exists') this.email,
      @JsonKey(name: 'is_username_exists') this.username)
      : super._();

  factory _$CheckDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'is_email_exists')
  final bool email;
  @override
  @JsonKey(name: 'is_username_exists')
  final bool username;

  @override
  String toString() {
    return 'CheckDataResponse(email: $email, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDataResponseImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDataResponseImplCopyWith<_$CheckDataResponseImpl> get copyWith =>
      __$$CheckDataResponseImplCopyWithImpl<_$CheckDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckDataResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckDataResponse extends CheckDataResponse {
  const factory _CheckDataResponse(
          @JsonKey(name: 'is_email_exists') final bool email,
          @JsonKey(name: 'is_username_exists') final bool username) =
      _$CheckDataResponseImpl;
  const _CheckDataResponse._() : super._();

  factory _CheckDataResponse.fromJson(Map<String, dynamic> json) =
      _$CheckDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'is_email_exists')
  bool get email;
  @override
  @JsonKey(name: 'is_username_exists')
  bool get username;
  @override
  @JsonKey(ignore: true)
  _$$CheckDataResponseImplCopyWith<_$CheckDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
