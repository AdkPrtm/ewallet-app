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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpResponse _$TopUpResponseFromJson(Map<String, dynamic> json) {
  return _TopUpResponse.fromJson(json);
}

/// @nodoc
mixin _$TopUpResponse {
  @JsonKey(name: 'link_payment')
  String? get redirectUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  String? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'charge_amount')
  int? get amount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'link_payment') String? redirectUrl,
      @JsonKey(name: 'reference_id') String? invoiceId,
      @JsonKey(name: 'charge_amount') int? amount});
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
    Object? invoiceId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUpResponseImplCopyWith<$Res>
    implements $TopUpResponseCopyWith<$Res> {
  factory _$$TopUpResponseImplCopyWith(
          _$TopUpResponseImpl value, $Res Function(_$TopUpResponseImpl) then) =
      __$$TopUpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'link_payment') String? redirectUrl,
      @JsonKey(name: 'reference_id') String? invoiceId,
      @JsonKey(name: 'charge_amount') int? amount});
}

/// @nodoc
class __$$TopUpResponseImplCopyWithImpl<$Res>
    extends _$TopUpResponseCopyWithImpl<$Res, _$TopUpResponseImpl>
    implements _$$TopUpResponseImplCopyWith<$Res> {
  __$$TopUpResponseImplCopyWithImpl(
      _$TopUpResponseImpl _value, $Res Function(_$TopUpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? invoiceId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$TopUpResponseImpl(
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpResponseImpl extends _TopUpResponse {
  const _$TopUpResponseImpl(
      {@JsonKey(name: 'link_payment') this.redirectUrl,
      @JsonKey(name: 'reference_id') this.invoiceId,
      @JsonKey(name: 'charge_amount') this.amount})
      : super._();

  factory _$TopUpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpResponseImplFromJson(json);

  @override
  @JsonKey(name: 'link_payment')
  final String? redirectUrl;
  @override
  @JsonKey(name: 'reference_id')
  final String? invoiceId;
  @override
  @JsonKey(name: 'charge_amount')
  final int? amount;

  @override
  String toString() {
    return 'TopUpResponse(redirectUrl: $redirectUrl, invoiceId: $invoiceId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpResponseImpl &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redirectUrl, invoiceId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpResponseImplCopyWith<_$TopUpResponseImpl> get copyWith =>
      __$$TopUpResponseImplCopyWithImpl<_$TopUpResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpResponseImplToJson(
      this,
    );
  }
}

abstract class _TopUpResponse extends TopUpResponse {
  const factory _TopUpResponse(
      {@JsonKey(name: 'link_payment') final String? redirectUrl,
      @JsonKey(name: 'reference_id') final String? invoiceId,
      @JsonKey(name: 'charge_amount') final int? amount}) = _$TopUpResponseImpl;
  const _TopUpResponse._() : super._();

  factory _TopUpResponse.fromJson(Map<String, dynamic> json) =
      _$TopUpResponseImpl.fromJson;

  @override
  @JsonKey(name: 'link_payment')
  String? get redirectUrl;
  @override
  @JsonKey(name: 'reference_id')
  String? get invoiceId;
  @override
  @JsonKey(name: 'charge_amount')
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$$TopUpResponseImplCopyWith<_$TopUpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
