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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodTopupResponse _$PaymentMethodTopupResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodTopupResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodTopupResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

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
  $Res call({String? name, String? code, String? thumbnail, String? status});
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
abstract class _$$PaymentMethodTopupResponseImplCopyWith<$Res>
    implements $PaymentMethodTopupResponseCopyWith<$Res> {
  factory _$$PaymentMethodTopupResponseImplCopyWith(
          _$PaymentMethodTopupResponseImpl value,
          $Res Function(_$PaymentMethodTopupResponseImpl) then) =
      __$$PaymentMethodTopupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code, String? thumbnail, String? status});
}

/// @nodoc
class __$$PaymentMethodTopupResponseImplCopyWithImpl<$Res>
    extends _$PaymentMethodTopupResponseCopyWithImpl<$Res,
        _$PaymentMethodTopupResponseImpl>
    implements _$$PaymentMethodTopupResponseImplCopyWith<$Res> {
  __$$PaymentMethodTopupResponseImplCopyWithImpl(
      _$PaymentMethodTopupResponseImpl _value,
      $Res Function(_$PaymentMethodTopupResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PaymentMethodTopupResponseImpl(
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
class _$PaymentMethodTopupResponseImpl extends _PaymentMethodTopupResponse {
  const _$PaymentMethodTopupResponseImpl(
      {this.name, this.code, this.thumbnail, this.status})
      : super._();

  factory _$PaymentMethodTopupResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaymentMethodTopupResponseImplFromJson(json);

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
    return 'PaymentMethodTopupResponse(name: $name, code: $code, thumbnail: $thumbnail, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodTopupResponseImpl &&
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
  _$$PaymentMethodTopupResponseImplCopyWith<_$PaymentMethodTopupResponseImpl>
      get copyWith => __$$PaymentMethodTopupResponseImplCopyWithImpl<
          _$PaymentMethodTopupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodTopupResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodTopupResponse extends PaymentMethodTopupResponse {
  const factory _PaymentMethodTopupResponse(
      {final String? name,
      final String? code,
      final String? thumbnail,
      final String? status}) = _$PaymentMethodTopupResponseImpl;
  const _PaymentMethodTopupResponse._() : super._();

  factory _PaymentMethodTopupResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodTopupResponseImpl.fromJson;

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
  _$$PaymentMethodTopupResponseImplCopyWith<_$PaymentMethodTopupResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
