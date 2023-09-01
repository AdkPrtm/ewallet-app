import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  factory UserModel({
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
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

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
