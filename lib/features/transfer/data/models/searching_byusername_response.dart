import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/transfer/domain/entities/user_byusername_entities.dart';

part 'searching_byusername_response.freezed.dart';
part 'searching_byusername_response.g.dart';

@freezed
class SearchingByUsernameResponse with _$SearchingByUsernameResponse {
  const factory SearchingByUsernameResponse({
    String? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? username,
    bool? verified,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _SearchingByUsernameResponse;

  const SearchingByUsernameResponse._();

  factory SearchingByUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchingByUsernameResponseFromJson(json);

  UserBySearchingEntity toEntity() => UserBySearchingEntity(
        id: id,
        firstName: firstName,
        lastName: lastName,
        username: username,
        verified: verified,
        profilePicture: profilePicture,
      );
}
