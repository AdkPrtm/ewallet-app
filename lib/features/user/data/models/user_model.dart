import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/user/domain/domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? username,
    String? email,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    bool? verified,
    int? balance,
    @JsonKey(name: 'card_number') String? cardNumber,
    String? token,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() => UserEntity(
        firstName: firstName,
        lastName: lastName,
        email: email,
        username: username,
        verified: verified,
        profilePicture: profilePicture,
        balance: balance,
        cardNumber: cardNumber,
        token: token,
      );
}
