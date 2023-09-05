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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopUpEntity {
  String? get redirectUrl => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

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
  $Res call({String? redirectUrl, String? token});
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
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopUpEntityCopyWith<$Res>
    implements $TopUpEntityCopyWith<$Res> {
  factory _$$_TopUpEntityCopyWith(
          _$_TopUpEntity value, $Res Function(_$_TopUpEntity) then) =
      __$$_TopUpEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? redirectUrl, String? token});
}

/// @nodoc
class __$$_TopUpEntityCopyWithImpl<$Res>
    extends _$TopUpEntityCopyWithImpl<$Res, _$_TopUpEntity>
    implements _$$_TopUpEntityCopyWith<$Res> {
  __$$_TopUpEntityCopyWithImpl(
      _$_TopUpEntity _value, $Res Function(_$_TopUpEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_TopUpEntity(
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TopUpEntity implements _TopUpEntity {
  const _$_TopUpEntity({this.redirectUrl, this.token});

  @override
  final String? redirectUrl;
  @override
  final String? token;

  @override
  String toString() {
    return 'TopUpEntity(redirectUrl: $redirectUrl, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopUpEntity &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, redirectUrl, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopUpEntityCopyWith<_$_TopUpEntity> get copyWith =>
      __$$_TopUpEntityCopyWithImpl<_$_TopUpEntity>(this, _$identity);
}

abstract class _TopUpEntity implements TopUpEntity {
  const factory _TopUpEntity({final String? redirectUrl, final String? token}) =
      _$_TopUpEntity;

  @override
  String? get redirectUrl;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_TopUpEntityCopyWith<_$_TopUpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
