// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOTPResponse _$VerifyOTPResponseFromJson(Map<String, dynamic> json) {
  return _VerifyOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyOTPResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOTPResponseCopyWith<VerifyOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOTPResponseCopyWith<$Res> {
  factory $VerifyOTPResponseCopyWith(
          VerifyOTPResponse value, $Res Function(VerifyOTPResponse) then) =
      _$VerifyOTPResponseCopyWithImpl<$Res, VerifyOTPResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$VerifyOTPResponseCopyWithImpl<$Res, $Val extends VerifyOTPResponse>
    implements $VerifyOTPResponseCopyWith<$Res> {
  _$VerifyOTPResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyOTPResponseImplCopyWith<$Res>
    implements $VerifyOTPResponseCopyWith<$Res> {
  factory _$$VerifyOTPResponseImplCopyWith(_$VerifyOTPResponseImpl value,
          $Res Function(_$VerifyOTPResponseImpl) then) =
      __$$VerifyOTPResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VerifyOTPResponseImplCopyWithImpl<$Res>
    extends _$VerifyOTPResponseCopyWithImpl<$Res, _$VerifyOTPResponseImpl>
    implements _$$VerifyOTPResponseImplCopyWith<$Res> {
  __$$VerifyOTPResponseImplCopyWithImpl(_$VerifyOTPResponseImpl _value,
      $Res Function(_$VerifyOTPResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$VerifyOTPResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOTPResponseImpl extends _VerifyOTPResponse {
  const _$VerifyOTPResponseImpl(this.message) : super._();

  factory _$VerifyOTPResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOTPResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'VerifyOTPResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPResponseImplCopyWith<_$VerifyOTPResponseImpl> get copyWith =>
      __$$VerifyOTPResponseImplCopyWithImpl<_$VerifyOTPResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOTPResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyOTPResponse extends VerifyOTPResponse {
  const factory _VerifyOTPResponse(final String message) =
      _$VerifyOTPResponseImpl;
  const _VerifyOTPResponse._() : super._();

  factory _VerifyOTPResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyOTPResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOTPResponseImplCopyWith<_$VerifyOTPResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
