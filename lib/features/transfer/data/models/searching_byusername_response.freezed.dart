// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searching_byusername_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchingByUsernameResponse _$SearchingByUsernameResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchingByUsernameResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchingByUsernameResponse {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchingByUsernameResponseCopyWith<SearchingByUsernameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchingByUsernameResponseCopyWith<$Res> {
  factory $SearchingByUsernameResponseCopyWith(
          SearchingByUsernameResponse value,
          $Res Function(SearchingByUsernameResponse) then) =
      _$SearchingByUsernameResponseCopyWithImpl<$Res,
          SearchingByUsernameResponse>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      bool? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class _$SearchingByUsernameResponseCopyWithImpl<$Res,
        $Val extends SearchingByUsernameResponse>
    implements $SearchingByUsernameResponseCopyWith<$Res> {
  _$SearchingByUsernameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchingByUsernameResponseImplCopyWith<$Res>
    implements $SearchingByUsernameResponseCopyWith<$Res> {
  factory _$$SearchingByUsernameResponseImplCopyWith(
          _$SearchingByUsernameResponseImpl value,
          $Res Function(_$SearchingByUsernameResponseImpl) then) =
      __$$SearchingByUsernameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      bool? verified,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class __$$SearchingByUsernameResponseImplCopyWithImpl<$Res>
    extends _$SearchingByUsernameResponseCopyWithImpl<$Res,
        _$SearchingByUsernameResponseImpl>
    implements _$$SearchingByUsernameResponseImplCopyWith<$Res> {
  __$$SearchingByUsernameResponseImplCopyWithImpl(
      _$SearchingByUsernameResponseImpl _value,
      $Res Function(_$SearchingByUsernameResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? verified = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$SearchingByUsernameResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchingByUsernameResponseImpl extends _SearchingByUsernameResponse {
  const _$SearchingByUsernameResponseImpl(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.username,
      this.verified,
      @JsonKey(name: 'profile_picture') this.profilePicture})
      : super._();

  factory _$SearchingByUsernameResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchingByUsernameResponseImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? username;
  @override
  final bool? verified;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  @override
  String toString() {
    return 'SearchingByUsernameResponse(id: $id, firstName: $firstName, lastName: $lastName, username: $username, verified: $verified, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchingByUsernameResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, lastName, username, verified, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchingByUsernameResponseImplCopyWith<_$SearchingByUsernameResponseImpl>
      get copyWith => __$$SearchingByUsernameResponseImplCopyWithImpl<
          _$SearchingByUsernameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchingByUsernameResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchingByUsernameResponse
    extends SearchingByUsernameResponse {
  const factory _SearchingByUsernameResponse(
          {final String? id,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          final String? username,
          final bool? verified,
          @JsonKey(name: 'profile_picture') final String? profilePicture}) =
      _$SearchingByUsernameResponseImpl;
  const _SearchingByUsernameResponse._() : super._();

  factory _SearchingByUsernameResponse.fromJson(Map<String, dynamic> json) =
      _$SearchingByUsernameResponseImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get username;
  @override
  bool? get verified;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$SearchingByUsernameResponseImplCopyWith<_$SearchingByUsernameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
