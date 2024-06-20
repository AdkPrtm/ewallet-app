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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BuyDataPlansResponse _$BuyDataPlansResponseFromJson(Map<String, dynamic> json) {
  return _BuyDataPlansResponse.fromJson(json);
}

/// @nodoc
mixin _$BuyDataPlansResponse {
  String? get status => throw _privateConstructorUsedError;

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
  $Res call({String? status});
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
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyDataPlansResponseImplCopyWith<$Res>
    implements $BuyDataPlansResponseCopyWith<$Res> {
  factory _$$BuyDataPlansResponseImplCopyWith(_$BuyDataPlansResponseImpl value,
          $Res Function(_$BuyDataPlansResponseImpl) then) =
      __$$BuyDataPlansResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$BuyDataPlansResponseImplCopyWithImpl<$Res>
    extends _$BuyDataPlansResponseCopyWithImpl<$Res, _$BuyDataPlansResponseImpl>
    implements _$$BuyDataPlansResponseImplCopyWith<$Res> {
  __$$BuyDataPlansResponseImplCopyWithImpl(_$BuyDataPlansResponseImpl _value,
      $Res Function(_$BuyDataPlansResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$BuyDataPlansResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyDataPlansResponseImpl implements _BuyDataPlansResponse {
  const _$BuyDataPlansResponseImpl({this.status});

  factory _$BuyDataPlansResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyDataPlansResponseImplFromJson(json);

  @override
  final String? status;

  @override
  String toString() {
    return 'BuyDataPlansResponse(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyDataPlansResponseImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyDataPlansResponseImplCopyWith<_$BuyDataPlansResponseImpl>
      get copyWith =>
          __$$BuyDataPlansResponseImplCopyWithImpl<_$BuyDataPlansResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyDataPlansResponseImplToJson(
      this,
    );
  }
}

abstract class _BuyDataPlansResponse implements BuyDataPlansResponse {
  const factory _BuyDataPlansResponse({final String? status}) =
      _$BuyDataPlansResponseImpl;

  factory _BuyDataPlansResponse.fromJson(Map<String, dynamic> json) =
      _$BuyDataPlansResponseImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$BuyDataPlansResponseImplCopyWith<_$BuyDataPlansResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
