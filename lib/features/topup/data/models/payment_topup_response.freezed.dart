// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_topup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodTopupResponse _$PaymentMethodTopupResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodTopupResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodTopupResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<PaymentTopUpDataResponse>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodTopupResponseCopyWith<PaymentMethodTopupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodTopupResponseCopyWith<$Res> {
  factory $PaymentMethodTopupResponseCopyWith(PaymentMethodTopupResponse value,
          $Res Function(PaymentMethodTopupResponse) then) =
      _$PaymentMethodTopupResponseCopyWithImpl<$Res,
          PaymentMethodTopupResponse>;
  @useResult
  $Res call(
      {String? status, String? message, List<PaymentTopUpDataResponse>? data});
}

/// @nodoc
class _$PaymentMethodTopupResponseCopyWithImpl<$Res,
        $Val extends PaymentMethodTopupResponse>
    implements $PaymentMethodTopupResponseCopyWith<$Res> {
  _$PaymentMethodTopupResponseCopyWithImpl(this._value, this._then);

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
              as List<PaymentTopUpDataResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodTopupResponseCopyWith<$Res>
    implements $PaymentMethodTopupResponseCopyWith<$Res> {
  factory _$$_PaymentMethodTopupResponseCopyWith(
          _$_PaymentMethodTopupResponse value,
          $Res Function(_$_PaymentMethodTopupResponse) then) =
      __$$_PaymentMethodTopupResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, String? message, List<PaymentTopUpDataResponse>? data});
}

/// @nodoc
class __$$_PaymentMethodTopupResponseCopyWithImpl<$Res>
    extends _$PaymentMethodTopupResponseCopyWithImpl<$Res,
        _$_PaymentMethodTopupResponse>
    implements _$$_PaymentMethodTopupResponseCopyWith<$Res> {
  __$$_PaymentMethodTopupResponseCopyWithImpl(
      _$_PaymentMethodTopupResponse _value,
      $Res Function(_$_PaymentMethodTopupResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PaymentMethodTopupResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaymentTopUpDataResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodTopupResponse extends _PaymentMethodTopupResponse {
  const _$_PaymentMethodTopupResponse(
      {this.status, this.message, final List<PaymentTopUpDataResponse>? data})
      : _data = data,
        super._();

  factory _$_PaymentMethodTopupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodTopupResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<PaymentTopUpDataResponse>? _data;
  @override
  List<PaymentTopUpDataResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentMethodTopupResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodTopupResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodTopupResponseCopyWith<_$_PaymentMethodTopupResponse>
      get copyWith => __$$_PaymentMethodTopupResponseCopyWithImpl<
          _$_PaymentMethodTopupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodTopupResponseToJson(
      this,
    );
  }
}

abstract class _PaymentMethodTopupResponse extends PaymentMethodTopupResponse {
  const factory _PaymentMethodTopupResponse(
          {final String? status,
          final String? message,
          final List<PaymentTopUpDataResponse>? data}) =
      _$_PaymentMethodTopupResponse;
  const _PaymentMethodTopupResponse._() : super._();

  factory _PaymentMethodTopupResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodTopupResponse.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<PaymentTopUpDataResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodTopupResponseCopyWith<_$_PaymentMethodTopupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentTopUpDataResponse _$PaymentTopUpDataResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentTopUpDataResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentTopUpDataResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTopUpDataResponseCopyWith<PaymentTopUpDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTopUpDataResponseCopyWith<$Res> {
  factory $PaymentTopUpDataResponseCopyWith(PaymentTopUpDataResponse value,
          $Res Function(PaymentTopUpDataResponse) then) =
      _$PaymentTopUpDataResponseCopyWithImpl<$Res, PaymentTopUpDataResponse>;
  @useResult
  $Res call({String? name, String? code, String? thumbnail, String? status});
}

/// @nodoc
class _$PaymentTopUpDataResponseCopyWithImpl<$Res,
        $Val extends PaymentTopUpDataResponse>
    implements $PaymentTopUpDataResponseCopyWith<$Res> {
  _$PaymentTopUpDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTopUpDataResponseCopyWith<$Res>
    implements $PaymentTopUpDataResponseCopyWith<$Res> {
  factory _$$_PaymentTopUpDataResponseCopyWith(
          _$_PaymentTopUpDataResponse value,
          $Res Function(_$_PaymentTopUpDataResponse) then) =
      __$$_PaymentTopUpDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code, String? thumbnail, String? status});
}

/// @nodoc
class __$$_PaymentTopUpDataResponseCopyWithImpl<$Res>
    extends _$PaymentTopUpDataResponseCopyWithImpl<$Res,
        _$_PaymentTopUpDataResponse>
    implements _$$_PaymentTopUpDataResponseCopyWith<$Res> {
  __$$_PaymentTopUpDataResponseCopyWithImpl(_$_PaymentTopUpDataResponse _value,
      $Res Function(_$_PaymentTopUpDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PaymentTopUpDataResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTopUpDataResponse implements _PaymentTopUpDataResponse {
  const _$_PaymentTopUpDataResponse(
      {this.name, this.code, this.thumbnail, this.status});

  factory _$_PaymentTopUpDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTopUpDataResponseFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? thumbnail;
  @override
  final String? status;

  @override
  String toString() {
    return 'PaymentTopUpDataResponse(name: $name, code: $code, thumbnail: $thumbnail, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTopUpDataResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, thumbnail, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTopUpDataResponseCopyWith<_$_PaymentTopUpDataResponse>
      get copyWith => __$$_PaymentTopUpDataResponseCopyWithImpl<
          _$_PaymentTopUpDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTopUpDataResponseToJson(
      this,
    );
  }
}

abstract class _PaymentTopUpDataResponse implements PaymentTopUpDataResponse {
  const factory _PaymentTopUpDataResponse(
      {final String? name,
      final String? code,
      final String? thumbnail,
      final String? status}) = _$_PaymentTopUpDataResponse;

  factory _PaymentTopUpDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentTopUpDataResponse.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get thumbnail;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTopUpDataResponseCopyWith<_$_PaymentTopUpDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
