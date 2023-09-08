// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_dataplans_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyDataPlansResponse _$BuyDataPlansResponseFromJson(Map<String, dynamic> json) {
  return _BuyDataPlansResponse.fromJson(json);
}

/// @nodoc
mixin _$BuyDataPlansResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyDataPlansResponseCopyWith<BuyDataPlansResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyDataPlansResponseCopyWith<$Res> {
  factory $BuyDataPlansResponseCopyWith(BuyDataPlansResponse value,
          $Res Function(BuyDataPlansResponse) then) =
      _$BuyDataPlansResponseCopyWithImpl<$Res, BuyDataPlansResponse>;
  @useResult
  $Res call({String? status, String? message, String? data});
}

/// @nodoc
class _$BuyDataPlansResponseCopyWithImpl<$Res,
        $Val extends BuyDataPlansResponse>
    implements $BuyDataPlansResponseCopyWith<$Res> {
  _$BuyDataPlansResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BuyDataPlansResponseCopyWith<$Res>
    implements $BuyDataPlansResponseCopyWith<$Res> {
  factory _$$_BuyDataPlansResponseCopyWith(_$_BuyDataPlansResponse value,
          $Res Function(_$_BuyDataPlansResponse) then) =
      __$$_BuyDataPlansResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, String? data});
}

/// @nodoc
class __$$_BuyDataPlansResponseCopyWithImpl<$Res>
    extends _$BuyDataPlansResponseCopyWithImpl<$Res, _$_BuyDataPlansResponse>
    implements _$$_BuyDataPlansResponseCopyWith<$Res> {
  __$$_BuyDataPlansResponseCopyWithImpl(_$_BuyDataPlansResponse _value,
      $Res Function(_$_BuyDataPlansResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BuyDataPlansResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuyDataPlansResponse implements _BuyDataPlansResponse {
  const _$_BuyDataPlansResponse({this.status, this.message, this.data});

  factory _$_BuyDataPlansResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BuyDataPlansResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final String? data;

  @override
  String toString() {
    return 'BuyDataPlansResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyDataPlansResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyDataPlansResponseCopyWith<_$_BuyDataPlansResponse> get copyWith =>
      __$$_BuyDataPlansResponseCopyWithImpl<_$_BuyDataPlansResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyDataPlansResponseToJson(
      this,
    );
  }
}

abstract class _BuyDataPlansResponse implements BuyDataPlansResponse {
  const factory _BuyDataPlansResponse(
      {final String? status,
      final String? message,
      final String? data}) = _$_BuyDataPlansResponse;

  factory _BuyDataPlansResponse.fromJson(Map<String, dynamic> json) =
      _$_BuyDataPlansResponse.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BuyDataPlansResponseCopyWith<_$_BuyDataPlansResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
