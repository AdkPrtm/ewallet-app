// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_data_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckDataEntity {
  bool get email => throw _privateConstructorUsedError;
  bool get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckDataEntityCopyWith<CheckDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDataEntityCopyWith<$Res> {
  factory $CheckDataEntityCopyWith(
          CheckDataEntity value, $Res Function(CheckDataEntity) then) =
      _$CheckDataEntityCopyWithImpl<$Res, CheckDataEntity>;
  @useResult
  $Res call({bool email, bool username});
}

/// @nodoc
class _$CheckDataEntityCopyWithImpl<$Res, $Val extends CheckDataEntity>
    implements $CheckDataEntityCopyWith<$Res> {
  _$CheckDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckDataEntityImplCopyWith<$Res>
    implements $CheckDataEntityCopyWith<$Res> {
  factory _$$CheckDataEntityImplCopyWith(_$CheckDataEntityImpl value,
          $Res Function(_$CheckDataEntityImpl) then) =
      __$$CheckDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool email, bool username});
}

/// @nodoc
class __$$CheckDataEntityImplCopyWithImpl<$Res>
    extends _$CheckDataEntityCopyWithImpl<$Res, _$CheckDataEntityImpl>
    implements _$$CheckDataEntityImplCopyWith<$Res> {
  __$$CheckDataEntityImplCopyWithImpl(
      _$CheckDataEntityImpl _value, $Res Function(_$CheckDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_$CheckDataEntityImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckDataEntityImpl implements _CheckDataEntity {
  const _$CheckDataEntityImpl(this.email, this.username);

  @override
  final bool email;
  @override
  final bool username;

  @override
  String toString() {
    return 'CheckDataEntity(email: $email, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDataEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDataEntityImplCopyWith<_$CheckDataEntityImpl> get copyWith =>
      __$$CheckDataEntityImplCopyWithImpl<_$CheckDataEntityImpl>(
          this, _$identity);
}

abstract class _CheckDataEntity implements CheckDataEntity {
  const factory _CheckDataEntity(final bool email, final bool username) =
      _$CheckDataEntityImpl;

  @override
  bool get email;
  @override
  bool get username;
  @override
  @JsonKey(ignore: true)
  _$$CheckDataEntityImplCopyWith<_$CheckDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
