// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopUpEntity {
  @JsonKey(name: 'link_payment')
  String? get redirectUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  String? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'charge_amount')
  int? get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopUpEntityCopyWith<TopUpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpEntityCopyWith<$Res> {
  factory $TopUpEntityCopyWith(
          TopUpEntity value, $Res Function(TopUpEntity) then) =
      _$TopUpEntityCopyWithImpl<$Res, TopUpEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'link_payment') String? redirectUrl,
      @JsonKey(name: 'reference_id') String? invoiceId,
      @JsonKey(name: 'charge_amount') int? amount});
}

/// @nodoc
class _$TopUpEntityCopyWithImpl<$Res, $Val extends TopUpEntity>
    implements $TopUpEntityCopyWith<$Res> {
  _$TopUpEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$TopUpEntityImplCopyWith<$Res>
    implements $TopUpEntityCopyWith<$Res> {
  factory _$$TopUpEntityImplCopyWith(
          _$TopUpEntityImpl value, $Res Function(_$TopUpEntityImpl) then) =
      __$$TopUpEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'link_payment') String? redirectUrl,
      @JsonKey(name: 'reference_id') String? invoiceId,
      @JsonKey(name: 'charge_amount') int? amount});
}

/// @nodoc
class __$$TopUpEntityImplCopyWithImpl<$Res>
    extends _$TopUpEntityCopyWithImpl<$Res, _$TopUpEntityImpl>
    implements _$$TopUpEntityImplCopyWith<$Res> {
  __$$TopUpEntityImplCopyWithImpl(
      _$TopUpEntityImpl _value, $Res Function(_$TopUpEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? invoiceId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$TopUpEntityImpl(
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

class _$TopUpEntityImpl implements _TopUpEntity {
  const _$TopUpEntityImpl(
      {@JsonKey(name: 'link_payment') this.redirectUrl,
      @JsonKey(name: 'reference_id') this.invoiceId,
      @JsonKey(name: 'charge_amount') this.amount});

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
    return 'TopUpEntity(redirectUrl: $redirectUrl, invoiceId: $invoiceId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpEntityImpl &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, redirectUrl, invoiceId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpEntityImplCopyWith<_$TopUpEntityImpl> get copyWith =>
      __$$TopUpEntityImplCopyWithImpl<_$TopUpEntityImpl>(this, _$identity);
}

abstract class _TopUpEntity implements TopUpEntity {
  const factory _TopUpEntity(
      {@JsonKey(name: 'link_payment') final String? redirectUrl,
      @JsonKey(name: 'reference_id') final String? invoiceId,
      @JsonKey(name: 'charge_amount') final int? amount}) = _$TopUpEntityImpl;

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
  _$$TopUpEntityImplCopyWith<_$TopUpEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
