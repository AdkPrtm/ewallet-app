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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) {
  return _SignUpParams.fromJson(json);
}

/// @nodoc
mixin _$SignUpParams {
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
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
  String? get ktp => throw _privateConstructorUsedError;
  set ktp(String? value) => throw _privateConstructorUsedError;

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
      {String? name,
      String? username,
      String? email,
      String? password,
      String? pin,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String? ktp});
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
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? pin = freezed,
    Object? profilePicture = freezed,
    Object? ktp = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      ktp: freezed == ktp
          ? _value.ktp
          : ktp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpParamsCopyWith<$Res>
    implements $SignUpParamsCopyWith<$Res> {
  factory _$$_SignUpParamsCopyWith(
          _$_SignUpParams value, $Res Function(_$_SignUpParams) then) =
      __$$_SignUpParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? username,
      String? email,
      String? password,
      String? pin,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String? ktp});
}

/// @nodoc
class __$$_SignUpParamsCopyWithImpl<$Res>
    extends _$SignUpParamsCopyWithImpl<$Res, _$_SignUpParams>
    implements _$$_SignUpParamsCopyWith<$Res> {
  __$$_SignUpParamsCopyWithImpl(
      _$_SignUpParams _value, $Res Function(_$_SignUpParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? pin = freezed,
    Object? profilePicture = freezed,
    Object? ktp = freezed,
  }) {
    return _then(_$_SignUpParams(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      ktp: freezed == ktp
          ? _value.ktp
          : ktp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpParams implements _SignUpParams {
  _$_SignUpParams(
      {this.name,
      this.username,
      this.email,
      this.password,
      this.pin,
      @JsonKey(name: 'profile_picture') this.profilePicture,
      this.ktp});

  factory _$_SignUpParams.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpParamsFromJson(json);

  @override
  String? name;
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
  String? ktp;

  @override
  String toString() {
    return 'SignUpParams(name: $name, username: $username, email: $email, password: $password, pin: $pin, profilePicture: $profilePicture, ktp: $ktp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpParamsCopyWith<_$_SignUpParams> get copyWith =>
      __$$_SignUpParamsCopyWithImpl<_$_SignUpParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpParamsToJson(
      this,
    );
  }
}

abstract class _SignUpParams implements SignUpParams {
  factory _SignUpParams(
      {String? name,
      String? username,
      String? email,
      String? password,
      String? pin,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String? ktp}) = _$_SignUpParams;

  factory _SignUpParams.fromJson(Map<String, dynamic> json) =
      _$_SignUpParams.fromJson;

  @override
  String? get name;
  set name(String? value);
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
  String? get ktp;
  set ktp(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_SignUpParamsCopyWith<_$_SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}
