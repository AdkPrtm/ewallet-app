// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferParams _$TransferParamsFromJson(Map<String, dynamic> json) {
  return _TransferParams.fromJson(json);
}

/// @nodoc
mixin _$TransferParams {
  int get amount => throw _privateConstructorUsedError;
  set amount(int value) => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;
  set pin(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_to')
  String? get sendToUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_to')
  set sendToUsername(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferParamsCopyWith<TransferParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferParamsCopyWith<$Res> {
  factory $TransferParamsCopyWith(
          TransferParams value, $Res Function(TransferParams) then) =
      _$TransferParamsCopyWithImpl<$Res, TransferParams>;
  @useResult
  $Res call(
      {int amount,
      String pin,
      @JsonKey(name: 'send_to') String? sendToUsername});
}

/// @nodoc
class _$TransferParamsCopyWithImpl<$Res, $Val extends TransferParams>
    implements $TransferParamsCopyWith<$Res> {
  _$TransferParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? pin = null,
    Object? sendToUsername = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      sendToUsername: freezed == sendToUsername
          ? _value.sendToUsername
          : sendToUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferParamsImplCopyWith<$Res>
    implements $TransferParamsCopyWith<$Res> {
  factory _$$TransferParamsImplCopyWith(_$TransferParamsImpl value,
          $Res Function(_$TransferParamsImpl) then) =
      __$$TransferParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount,
      String pin,
      @JsonKey(name: 'send_to') String? sendToUsername});
}

/// @nodoc
class __$$TransferParamsImplCopyWithImpl<$Res>
    extends _$TransferParamsCopyWithImpl<$Res, _$TransferParamsImpl>
    implements _$$TransferParamsImplCopyWith<$Res> {
  __$$TransferParamsImplCopyWithImpl(
      _$TransferParamsImpl _value, $Res Function(_$TransferParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? pin = null,
    Object? sendToUsername = freezed,
  }) {
    return _then(_$TransferParamsImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == sendToUsername
          ? _value.sendToUsername
          : sendToUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferParamsImpl implements _TransferParams {
  _$TransferParamsImpl(
      this.amount, this.pin, @JsonKey(name: 'send_to') this.sendToUsername);

  factory _$TransferParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferParamsImplFromJson(json);

  @override
  int amount;
  @override
  String pin;
  @override
  @JsonKey(name: 'send_to')
  String? sendToUsername;

  @override
  String toString() {
    return 'TransferParams(amount: $amount, pin: $pin, sendToUsername: $sendToUsername)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferParamsImplCopyWith<_$TransferParamsImpl> get copyWith =>
      __$$TransferParamsImplCopyWithImpl<_$TransferParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferParamsImplToJson(
      this,
    );
  }
}

abstract class _TransferParams implements TransferParams {
  factory _TransferParams(int amount, String pin,
      @JsonKey(name: 'send_to') String? sendToUsername) = _$TransferParamsImpl;

  factory _TransferParams.fromJson(Map<String, dynamic> json) =
      _$TransferParamsImpl.fromJson;

  @override
  int get amount;
  set amount(int value);
  @override
  String get pin;
  set pin(String value);
  @override
  @JsonKey(name: 'send_to')
  String? get sendToUsername;
  @JsonKey(name: 'send_to')
  set sendToUsername(String? value);
  @override
  @JsonKey(ignore: true)
  _$$TransferParamsImplCopyWith<_$TransferParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
