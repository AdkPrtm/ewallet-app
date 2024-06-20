import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@unfreezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? profilePicture,
    bool? verified,
    int? balance,
    String? cardNumber,
    String? token,
  }) = _UserEntity;
}
