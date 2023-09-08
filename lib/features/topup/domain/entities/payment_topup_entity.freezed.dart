// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_topup_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponsePaymentTopupEntity {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<PaymentDataTopupEntity>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponsePaymentTopupEntityCopyWith<ResponsePaymentTopupEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePaymentTopupEntityCopyWith<$Res> {
  factory $ResponsePaymentTopupEntityCopyWith(ResponsePaymentTopupEntity value,
          $Res Function(ResponsePaymentTopupEntity) then) =
      _$ResponsePaymentTopupEntityCopyWithImpl<$Res,
          ResponsePaymentTopupEntity>;
  @useResult
  $Res call(
      {String? status, String? message, List<PaymentDataTopupEntity>? data});
}

/// @nodoc
class _$ResponsePaymentTopupEntityCopyWithImpl<$Res,
        $Val extends ResponsePaymentTopupEntity>
    implements $ResponsePaymentTopupEntityCopyWith<$Res> {
  _$ResponsePaymentTopupEntityCopyWithImpl(this._value, this._then);

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
              as List<PaymentDataTopupEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponsePaymentTopupEntityCopyWith<$Res>
    implements $ResponsePaymentTopupEntityCopyWith<$Res> {
  factory _$$_ResponsePaymentTopupEntityCopyWith(
          _$_ResponsePaymentTopupEntity value,
          $Res Function(_$_ResponsePaymentTopupEntity) then) =
      __$$_ResponsePaymentTopupEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, String? message, List<PaymentDataTopupEntity>? data});
}

/// @nodoc
class __$$_ResponsePaymentTopupEntityCopyWithImpl<$Res>
    extends _$ResponsePaymentTopupEntityCopyWithImpl<$Res,
        _$_ResponsePaymentTopupEntity>
    implements _$$_ResponsePaymentTopupEntityCopyWith<$Res> {
  __$$_ResponsePaymentTopupEntityCopyWithImpl(
      _$_ResponsePaymentTopupEntity _value,
      $Res Function(_$_ResponsePaymentTopupEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ResponsePaymentTopupEntity(
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
              as List<PaymentDataTopupEntity>?,
    ));
  }
}

/// @nodoc

class _$_ResponsePaymentTopupEntity implements _ResponsePaymentTopupEntity {
  const _$_ResponsePaymentTopupEntity(
      {this.status, this.message, final List<PaymentDataTopupEntity>? data})
      : _data = data;

  @override
  final String? status;
  @override
  final String? message;
  final List<PaymentDataTopupEntity>? _data;
  @override
  List<PaymentDataTopupEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponsePaymentTopupEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponsePaymentTopupEntity &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponsePaymentTopupEntityCopyWith<_$_ResponsePaymentTopupEntity>
      get copyWith => __$$_ResponsePaymentTopupEntityCopyWithImpl<
          _$_ResponsePaymentTopupEntity>(this, _$identity);
}

abstract class _ResponsePaymentTopupEntity
    implements ResponsePaymentTopupEntity {
  const factory _ResponsePaymentTopupEntity(
          {final String? status,
          final String? message,
          final List<PaymentDataTopupEntity>? data}) =
      _$_ResponsePaymentTopupEntity;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<PaymentDataTopupEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponsePaymentTopupEntityCopyWith<_$_ResponsePaymentTopupEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentDataTopupEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentDataTopupEntityCopyWith<PaymentDataTopupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDataTopupEntityCopyWith<$Res> {
  factory $PaymentDataTopupEntityCopyWith(PaymentDataTopupEntity value,
          $Res Function(PaymentDataTopupEntity) then) =
      _$PaymentDataTopupEntityCopyWithImpl<$Res, PaymentDataTopupEntity>;
  @useResult
  $Res call({String? name, String? code, String? thumbnail, String? status});
}

/// @nodoc
class _$PaymentDataTopupEntityCopyWithImpl<$Res,
        $Val extends PaymentDataTopupEntity>
    implements $PaymentDataTopupEntityCopyWith<$Res> {
  _$PaymentDataTopupEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentDataTopupEntityCopyWith<$Res>
    implements $PaymentDataTopupEntityCopyWith<$Res> {
  factory _$$_PaymentDataTopupEntityCopyWith(_$_PaymentDataTopupEntity value,
          $Res Function(_$_PaymentDataTopupEntity) then) =
      __$$_PaymentDataTopupEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code, String? thumbnail, String? status});
}

/// @nodoc
class __$$_PaymentDataTopupEntityCopyWithImpl<$Res>
    extends _$PaymentDataTopupEntityCopyWithImpl<$Res,
        _$_PaymentDataTopupEntity>
    implements _$$_PaymentDataTopupEntityCopyWith<$Res> {
  __$$_PaymentDataTopupEntityCopyWithImpl(_$_PaymentDataTopupEntity _value,
      $Res Function(_$_PaymentDataTopupEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PaymentDataTopupEntity(
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

class _$_PaymentDataTopupEntity implements _PaymentDataTopupEntity {
  const _$_PaymentDataTopupEntity(
      {this.name, this.code, this.thumbnail, this.status});

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
    return 'PaymentDataTopupEntity(name: $name, code: $code, thumbnail: $thumbnail, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDataTopupEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, code, thumbnail, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDataTopupEntityCopyWith<_$_PaymentDataTopupEntity> get copyWith =>
      __$$_PaymentDataTopupEntityCopyWithImpl<_$_PaymentDataTopupEntity>(
          this, _$identity);
}

abstract class _PaymentDataTopupEntity implements PaymentDataTopupEntity {
  const factory _PaymentDataTopupEntity(
      {final String? name,
      final String? code,
      final String? thumbnail,
      final String? status}) = _$_PaymentDataTopupEntity;

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
  _$$_PaymentDataTopupEntityCopyWith<_$_PaymentDataTopupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
