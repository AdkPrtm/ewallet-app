// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) {
  return _SignUpParams.fromJson(json);
}

/// @nodoc
mixin _$SignUpParams {
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
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  set password(String? value) => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  set pin(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  set profilePicture(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_device')
  String? get tokenFCM => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_device')
  set tokenFCM(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpParamsCopyWith<SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpParamsCopyWith<$Res> {
  factory $SignUpParamsCopyWith(
          SignUpParams value, $Res Function(SignUpParams) then) =
      _$SignUpParamsCopyWithImpl<$Res, SignUpParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? email,
      String? password,
      String? pin,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'token_device') String? tokenFCM});
}

/// @nodoc
class _$SignUpParamsCopyWithImpl<$Res, $Val extends SignUpParams>
    implements $SignUpParamsCopyWith<$Res> {
  _$SignUpParamsCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? password = freezed,
    Object? pin = freezed,
    Object? profilePicture = freezed,
    Object? tokenFCM = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenFCM: freezed == tokenFCM
          ? _value.tokenFCM
          : tokenFCM // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpParamsImplCopyWith<$Res>
    implements $SignUpParamsCopyWith<$Res> {
  factory _$$SignUpParamsImplCopyWith(
          _$SignUpParamsImpl value, $Res Function(_$SignUpParamsImpl) then) =
      __$$SignUpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? email,
      String? password,
      String? pin,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'token_device') String? tokenFCM});
}

/// @nodoc
class __$$SignUpParamsImplCopyWithImpl<$Res>
    extends _$SignUpParamsCopyWithImpl<$Res, _$SignUpParamsImpl>
    implements _$$SignUpParamsImplCopyWith<$Res> {
  __$$SignUpParamsImplCopyWithImpl(
      _$SignUpParamsImpl _value, $Res Function(_$SignUpParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? pin = freezed,
    Object? profilePicture = freezed,
    Object? tokenFCM = freezed,
  }) {
    return _then(_$SignUpParamsImpl(
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenFCM: freezed == tokenFCM
          ? _value.tokenFCM
          : tokenFCM // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpParamsImpl implements _SignUpParams {
  _$SignUpParamsImpl(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.username,
      this.email,
      this.password,
      this.pin,
      @JsonKey(name: 'profile_picture') this.profilePicture,
      @JsonKey(name: 'token_device') this.tokenFCM});

  factory _$SignUpParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpParamsImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  String? firstName;
  @override
  @JsonKey(name: 'last_name')
  String? lastName;
  @override
  String? username;
  @override
  String? email;
  @override
  String? password;
  @override
  String? pin;
  @override
  @JsonKey(name: 'profile_picture')
  String? profilePicture;
  @override
  @JsonKey(name: 'token_device')
  String? tokenFCM;

  @override
  String toString() {
    return 'SignUpParams(firstName: $firstName, lastName: $lastName, username: $username, email: $email, password: $password, pin: $pin, profilePicture: $profilePicture, tokenFCM: $tokenFCM)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      __$$SignUpParamsImplCopyWithImpl<_$SignUpParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpParamsImplToJson(
      this,
    );
  }
}

abstract class _SignUpParams implements SignUpParams {
  factory _SignUpParams(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      String? email,
      String? password,
      String? pin,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'token_device') String? tokenFCM}) = _$SignUpParamsImpl;

  factory _SignUpParams.fromJson(Map<String, dynamic> json) =
      _$SignUpParamsImpl.fromJson;

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
  String? get email;
  set email(String? value);
  @override
  String? get password;
  set password(String? value);
  @override
  String? get pin;
  set pin(String? value);
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @JsonKey(name: 'profile_picture')
  set profilePicture(String? value);
  @override
  @JsonKey(name: 'token_device')
  String? get tokenFCM;
  @JsonKey(name: 'token_device')
  set tokenFCM(String? value);
  @override
  @JsonKey(ignore: true)
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
