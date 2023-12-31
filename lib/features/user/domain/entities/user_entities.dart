import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@unfreezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    String? name,
    String? email,
    String? username,
    String? verified,
    String? profilePicture,
    String? ktp,
    String? balance,
    String? cardNumber,
    String? pin,
    String? token,
  }) = _UserEntity;
}
