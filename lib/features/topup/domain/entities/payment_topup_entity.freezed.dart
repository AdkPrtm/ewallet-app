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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$PaymentDataTopupEntityImplCopyWith<$Res>
    implements $PaymentDataTopupEntityCopyWith<$Res> {
  factory _$$PaymentDataTopupEntityImplCopyWith(
          _$PaymentDataTopupEntityImpl value,
          $Res Function(_$PaymentDataTopupEntityImpl) then) =
      __$$PaymentDataTopupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code, String? thumbnail, String? status});
}

/// @nodoc
class __$$PaymentDataTopupEntityImplCopyWithImpl<$Res>
    extends _$PaymentDataTopupEntityCopyWithImpl<$Res,
        _$PaymentDataTopupEntityImpl>
    implements _$$PaymentDataTopupEntityImplCopyWith<$Res> {
  __$$PaymentDataTopupEntityImplCopyWithImpl(
      _$PaymentDataTopupEntityImpl _value,
      $Res Function(_$PaymentDataTopupEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PaymentDataTopupEntityImpl(
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

class _$PaymentDataTopupEntityImpl implements _PaymentDataTopupEntity {
  const _$PaymentDataTopupEntityImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDataTopupEntityImpl &&
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
  _$$PaymentDataTopupEntityImplCopyWith<_$PaymentDataTopupEntityImpl>
      get copyWith => __$$PaymentDataTopupEntityImplCopyWithImpl<
          _$PaymentDataTopupEntityImpl>(this, _$identity);
}

abstract class _PaymentDataTopupEntity implements PaymentDataTopupEntity {
  const factory _PaymentDataTopupEntity(
      {final String? name,
      final String? code,
      final String? thumbnail,
      final String? status}) = _$PaymentDataTopupEntityImpl;

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
  _$$PaymentDataTopupEntityImplCopyWith<_$PaymentDataTopupEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
