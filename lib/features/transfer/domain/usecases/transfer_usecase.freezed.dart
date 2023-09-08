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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferParams _$TransferParamsFromJson(Map<String, dynamic> json) {
  return _TransferParams.fromJson(json);
}

/// @nodoc
mixin _$TransferParams {
  int? get amount => throw _privateConstructorUsedError;
  set amount(int? value) => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  set pin(String? value) => throw _privateConstructorUsedError;
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
      {int? amount,
      String? pin,
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
    Object? amount = freezed,
    Object? pin = freezed,
    Object? sendToUsername = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      sendToUsername: freezed == sendToUsername
          ? _value.sendToUsername
          : sendToUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransferParamsCopyWith<$Res>
    implements $TransferParamsCopyWith<$Res> {
  factory _$$_TransferParamsCopyWith(
          _$_TransferParams value, $Res Function(_$_TransferParams) then) =
      __$$_TransferParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amount,
      String? pin,
      @JsonKey(name: 'send_to') String? sendToUsername});
}

/// @nodoc
class __$$_TransferParamsCopyWithImpl<$Res>
    extends _$TransferParamsCopyWithImpl<$Res, _$_TransferParams>
    implements _$$_TransferParamsCopyWith<$Res> {
  __$$_TransferParamsCopyWithImpl(
      _$_TransferParams _value, $Res Function(_$_TransferParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? pin = freezed,
    Object? sendToUsername = freezed,
  }) {
    return _then(_$_TransferParams(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      sendToUsername: freezed == sendToUsername
          ? _value.sendToUsername
          : sendToUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransferParams implements _TransferParams {
  _$_TransferParams(
      {this.amount, this.pin, @JsonKey(name: 'send_to') this.sendToUsername});

  factory _$_TransferParams.fromJson(Map<String, dynamic> json) =>
      _$$_TransferParamsFromJson(json);

  @override
  int? amount;
  @override
  String? pin;
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
  _$$_TransferParamsCopyWith<_$_TransferParams> get copyWith =>
      __$$_TransferParamsCopyWithImpl<_$_TransferParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransferParamsToJson(
      this,
    );
  }
}

abstract class _TransferParams implements TransferParams {
  factory _TransferParams(
      {int? amount,
      String? pin,
      @JsonKey(name: 'send_to') String? sendToUsername}) = _$_TransferParams;

  factory _TransferParams.fromJson(Map<String, dynamic> json) =
      _$_TransferParams.fromJson;

  @override
  int? get amount;
  set amount(int? value);
  @override
  String? get pin;
  set pin(String? value);
  @override
  @JsonKey(name: 'send_to')
  String? get sendToUsername;
  @JsonKey(name: 'send_to')
  set sendToUsername(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_TransferParamsCopyWith<_$_TransferParams> get copyWith =>
      throw _privateConstructorUsedError;
}
