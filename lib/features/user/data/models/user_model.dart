import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModelResponse with _$UserModelResponse {
  factory UserModelResponse({
    String? status,
    String? message,
    UserResponse? data,
  }) = _UserModelResponse;

  const UserModelResponse._();

  factory UserModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UserModelResponseFromJson(json);

  UserResponseEntity toEntity() => UserResponseEntity(
    status: status,
    message: message,
    data: data?.toEntity(),
  );
}

@unfreezed
class UserResponse with _$UserResponse {
  factory UserResponse({
    String? name,
    String? email,
    String? username,
    String? verified,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    String? ktp,
    String? balance,
    @JsonKey(name: 'card_number') String? cardNumber,
    String? pin,
    String? token,
  }) = _UserResponse;

  const UserResponse._();

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  UserEntity toEntity() => UserEntity(
        name: name,
        email: email,
        username: username,
        verified: verified,
        profilePicture: profilePicture,
        ktp: ktp,
        balance: balance,
        cardNumber: cardNumber,
        pin: pin,
        token: token,
      );
}
