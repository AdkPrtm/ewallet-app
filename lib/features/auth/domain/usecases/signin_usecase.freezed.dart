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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInParams _$SignInParamsFromJson(Map<String, dynamic> json) {
  return _SignInParams.fromJson(json);
}

/// @nodoc
mixin _$SignInParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "token_device")
  String? get tokenFCM => throw _privateConstructorUsedError;

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
  $Res call(
      {String email,
      String password,
      @JsonKey(name: "token_device") String? tokenFCM});
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
    Object? email = null,
    Object? password = null,
    Object? tokenFCM = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      tokenFCM: freezed == tokenFCM
          ? _value.tokenFCM
          : tokenFCM // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInParamsImplCopyWith<$Res>
    implements $SignInParamsCopyWith<$Res> {
  factory _$$SignInParamsImplCopyWith(
          _$SignInParamsImpl value, $Res Function(_$SignInParamsImpl) then) =
      __$$SignInParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: "token_device") String? tokenFCM});
}

/// @nodoc
class __$$SignInParamsImplCopyWithImpl<$Res>
    extends _$SignInParamsCopyWithImpl<$Res, _$SignInParamsImpl>
    implements _$$SignInParamsImplCopyWith<$Res> {
  __$$SignInParamsImplCopyWithImpl(
      _$SignInParamsImpl _value, $Res Function(_$SignInParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? tokenFCM = freezed,
  }) {
    return _then(_$SignInParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      tokenFCM: freezed == tokenFCM
          ? _value.tokenFCM
          : tokenFCM // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInParamsImpl implements _SignInParams {
  const _$SignInParamsImpl(
      {required this.email,
      required this.password,
      @JsonKey(name: "token_device") this.tokenFCM});

  factory _$SignInParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: "token_device")
  final String? tokenFCM;

  @override
  String toString() {
    return 'SignInParams(email: $email, password: $password, tokenFCM: $tokenFCM)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.tokenFCM, tokenFCM) ||
                other.tokenFCM == tokenFCM));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, tokenFCM);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInParamsImplCopyWith<_$SignInParamsImpl> get copyWith =>
      __$$SignInParamsImplCopyWithImpl<_$SignInParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInParamsImplToJson(
      this,
    );
  }
}

abstract class _SignInParams implements SignInParams {
  const factory _SignInParams(
          {required final String email,
          required final String password,
          @JsonKey(name: "token_device") final String? tokenFCM}) =
      _$SignInParamsImpl;

  factory _SignInParams.fromJson(Map<String, dynamic> json) =
      _$SignInParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: "token_device")
  String? get tokenFCM;
  @override
  @JsonKey(ignore: true)
  _$$SignInParamsImplCopyWith<_$SignInParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
