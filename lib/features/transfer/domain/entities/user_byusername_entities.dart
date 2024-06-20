import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_byusername_entities.freezed.dart';

@freezed
class UserBySearchingEntity with _$UserBySearchingEntity {
  const factory UserBySearchingEntity({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    bool? verified,
    String? profilePicture,
  }) = _UserBySearchingEntity;
}
