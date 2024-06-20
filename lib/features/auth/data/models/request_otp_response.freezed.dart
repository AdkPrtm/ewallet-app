// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOTPResponse _$RequestOTPResponseFromJson(Map<String, dynamic> json) {
  return _RequestOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$RequestOTPResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestOTPResponseCopyWith<RequestOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOTPResponseCopyWith<$Res> {
  factory $RequestOTPResponseCopyWith(
          RequestOTPResponse value, $Res Function(RequestOTPResponse) then) =
      _$RequestOTPResponseCopyWithImpl<$Res, RequestOTPResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RequestOTPResponseCopyWithImpl<$Res, $Val extends RequestOTPResponse>
    implements $RequestOTPResponseCopyWith<$Res> {
  _$RequestOTPResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOTPResponseImplCopyWith<$Res>
    implements $RequestOTPResponseCopyWith<$Res> {
  factory _$$RequestOTPResponseImplCopyWith(_$RequestOTPResponseImpl value,
          $Res Function(_$RequestOTPResponseImpl) then) =
      __$$RequestOTPResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestOTPResponseImplCopyWithImpl<$Res>
    extends _$RequestOTPResponseCopyWithImpl<$Res, _$RequestOTPResponseImpl>
    implements _$$RequestOTPResponseImplCopyWith<$Res> {
  __$$RequestOTPResponseImplCopyWithImpl(_$RequestOTPResponseImpl _value,
      $Res Function(_$RequestOTPResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestOTPResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOTPResponseImpl extends _RequestOTPResponse {
  const _$RequestOTPResponseImpl(this.message) : super._();

  factory _$RequestOTPResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOTPResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'RequestOTPResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOTPResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOTPResponseImplCopyWith<_$RequestOTPResponseImpl> get copyWith =>
      __$$RequestOTPResponseImplCopyWithImpl<_$RequestOTPResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOTPResponseImplToJson(
      this,
    );
  }
}

abstract class _RequestOTPResponse extends RequestOTPResponse {
  const factory _RequestOTPResponse(final String message) =
      _$RequestOTPResponseImpl;
  const _RequestOTPResponse._() : super._();

  factory _RequestOTPResponse.fromJson(Map<String, dynamic> json) =
      _$RequestOTPResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RequestOTPResponseImplCopyWith<_$RequestOTPResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
