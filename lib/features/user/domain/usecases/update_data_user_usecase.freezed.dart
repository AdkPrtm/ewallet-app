// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_data_user_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileUserParams _$UpdateProfileUserParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileUserParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileUserParams {
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileUserParamsCopyWith<UpdateProfileUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileUserParamsCopyWith<$Res> {
  factory $UpdateProfileUserParamsCopyWith(UpdateProfileUserParams value,
          $Res Function(UpdateProfileUserParams) then) =
      _$UpdateProfileUserParamsCopyWithImpl<$Res, UpdateProfileUserParams>;
  @useResult
  $Res call({String username, String name, String email, String password});
}

/// @nodoc
class _$UpdateProfileUserParamsCopyWithImpl<$Res,
        $Val extends UpdateProfileUserParams>
    implements $UpdateProfileUserParamsCopyWith<$Res> {
  _$UpdateProfileUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileUserParamsImplCopyWith<$Res>
    implements $UpdateProfileUserParamsCopyWith<$Res> {
  factory _$$UpdateProfileUserParamsImplCopyWith(
          _$UpdateProfileUserParamsImpl value,
          $Res Function(_$UpdateProfileUserParamsImpl) then) =
      __$$UpdateProfileUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String name, String email, String password});
}

/// @nodoc
class __$$UpdateProfileUserParamsImplCopyWithImpl<$Res>
    extends _$UpdateProfileUserParamsCopyWithImpl<$Res,
        _$UpdateProfileUserParamsImpl>
    implements _$$UpdateProfileUserParamsImplCopyWith<$Res> {
  __$$UpdateProfileUserParamsImplCopyWithImpl(
      _$UpdateProfileUserParamsImpl _value,
      $Res Function(_$UpdateProfileUserParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UpdateProfileUserParamsImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileUserParamsImpl implements _UpdateProfileUserParams {
  _$UpdateProfileUserParamsImpl(
      this.username, this.name, this.email, this.password);

  factory _$UpdateProfileUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileUserParamsImplFromJson(json);

  @override
  String username;
  @override
  String name;
  @override
  String email;
  @override
  String password;

  @override
  String toString() {
    return 'UpdateProfileUserParams(username: $username, name: $name, email: $email, password: $password)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileUserParamsImplCopyWith<_$UpdateProfileUserParamsImpl>
      get copyWith => __$$UpdateProfileUserParamsImplCopyWithImpl<
          _$UpdateProfileUserParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileUserParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileUserParams implements UpdateProfileUserParams {
  factory _UpdateProfileUserParams(
          String username, String name, String email, String password) =
      _$UpdateProfileUserParamsImpl;

  factory _UpdateProfileUserParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileUserParamsImpl.fromJson;

  @override
  String get username;
  set username(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get password;
  set password(String value);
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileUserParamsImplCopyWith<_$UpdateProfileUserParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
