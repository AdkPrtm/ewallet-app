// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInParams _$SignInParamsFromJson(Map<String, dynamic> json) {
  return _SignInParams.fromJson(json);
}

/// @nodoc
mixin _$SignInParams {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInParamsCopyWith<SignInParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInParamsCopyWith<$Res> {
  factory $SignInParamsCopyWith(
          SignInParams value, $Res Function(SignInParams) then) =
      _$SignInParamsCopyWithImpl<$Res, SignInParams>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$SignInParamsCopyWithImpl<$Res, $Val extends SignInParams>
    implements $SignInParamsCopyWith<$Res> {
  _$SignInParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInParamsCopyWith<$Res>
    implements $SignInParamsCopyWith<$Res> {
  factory _$$_SignInParamsCopyWith(
          _$_SignInParams value, $Res Function(_$_SignInParams) then) =
      __$$_SignInParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$_SignInParamsCopyWithImpl<$Res>
    extends _$SignInParamsCopyWithImpl<$Res, _$_SignInParams>
    implements _$$_SignInParamsCopyWith<$Res> {
  __$$_SignInParamsCopyWithImpl(
      _$_SignInParams _value, $Res Function(_$_SignInParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInParams(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInParams implements _SignInParams {
  const _$_SignInParams({this.email, this.password});

  factory _$_SignInParams.fromJson(Map<String, dynamic> json) =>
      _$$_SignInParamsFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'SignInParams(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInParamsCopyWith<_$_SignInParams> get copyWith =>
      __$$_SignInParamsCopyWithImpl<_$_SignInParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInParamsToJson(
      this,
    );
  }
}

abstract class _SignInParams implements SignInParams {
  const factory _SignInParams({final String? email, final String? password}) =
      _$_SignInParams;

  factory _SignInParams.fromJson(Map<String, dynamic> json) =
      _$_SignInParams.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignInParamsCopyWith<_$_SignInParams> get copyWith =>
      throw _privateConstructorUsedError;
}
