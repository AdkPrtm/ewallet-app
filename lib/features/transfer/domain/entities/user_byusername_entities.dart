import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_byusername_entities.freezed.dart';

@freezed
class UserBySearchingEntity with _$UserBySearchingEntity {
  const factory UserBySearchingEntity({
    String? username,
    String? verified,
    String? profilePicture,
  }) = _UserBySearchingEntity;
}

@freezed
class ResponseSearchUsername with _$ResponseSearchUsername {
  const factory ResponseSearchUsername({
    String? status,
    String? message,
    List<UserBySearchingEntity>? data,
  }) = _ResponseSearchUsername;
}
