// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopUpResponse _$TopUpResponseFromJson(Map<String, dynamic> json) {
  return _TopUpResponse.fromJson(json);
}

/// @nodoc
mixin _$TopUpResponse {
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpResponseCopyWith<TopUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpResponseCopyWith<$Res> {
  factory $TopUpResponseCopyWith(
          TopUpResponse value, $Res Function(TopUpResponse) then) =
      _$TopUpResponseCopyWithImpl<$Res, TopUpResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'redirect_url') String? redirectUrl, String? token});
}

/// @nodoc
class _$TopUpResponseCopyWithImpl<$Res, $Val extends TopUpResponse>
    implements $TopUpResponseCopyWith<$Res> {
  _$TopUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopUpResponseCopyWith<$Res>
    implements $TopUpResponseCopyWith<$Res> {
  factory _$$_TopUpResponseCopyWith(
          _$_TopUpResponse value, $Res Function(_$_TopUpResponse) then) =
      __$$_TopUpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'redirect_url') String? redirectUrl, String? token});
}

/// @nodoc
class __$$_TopUpResponseCopyWithImpl<$Res>
    extends _$TopUpResponseCopyWithImpl<$Res, _$_TopUpResponse>
    implements _$$_TopUpResponseCopyWith<$Res> {
  __$$_TopUpResponseCopyWithImpl(
      _$_TopUpResponse _value, $Res Function(_$_TopUpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_TopUpResponse(
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopUpResponse extends _TopUpResponse {
  const _$_TopUpResponse(
      {@JsonKey(name: 'redirect_url') this.redirectUrl, this.token})
      : super._();

  factory _$_TopUpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TopUpResponseFromJson(json);

  @override
  @JsonKey(name: 'redirect_url')
  final String? redirectUrl;
  @override
  final String? token;

  @override
  String toString() {
    return 'TopUpResponse(redirectUrl: $redirectUrl, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopUpResponse &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redirectUrl, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopUpResponseCopyWith<_$_TopUpResponse> get copyWith =>
      __$$_TopUpResponseCopyWithImpl<_$_TopUpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopUpResponseToJson(
      this,
    );
  }
}

abstract class _TopUpResponse extends TopUpResponse {
  const factory _TopUpResponse(
      {@JsonKey(name: 'redirect_url') final String? redirectUrl,
      final String? token}) = _$_TopUpResponse;
  const _TopUpResponse._() : super._();

  factory _TopUpResponse.fromJson(Map<String, dynamic> json) =
      _$_TopUpResponse.fromJson;

  @override
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_TopUpResponseCopyWith<_$_TopUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
