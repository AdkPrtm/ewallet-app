import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/user/domain/entities/user_byusername_entities.dart';

part 'searching_byusername_response.freezed.dart';
part 'searching_byusername_response.g.dart';

@freezed
class SearchingByUsernameResponse with _$SearchingByUsernameResponse {
  const factory SearchingByUsernameResponse({
    String? status,
    String? message,
    List<ListDataUsername>? data,
  }) = _SearchingByUsernameResponse;

  const SearchingByUsernameResponse._();

  factory SearchingByUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchingByUsernameResponseFromJson(json);

  ResponseSearchUsername toEntity() {
    final listData = data!
        .map<UserBySearchingEntity>(
          (model) => UserBySearchingEntity(
              username: model.username,
              verified: model.verified,
              profilePicture: model.profilePicture),
        )
        .toList();

    return ResponseSearchUsername(
      status: status,
      message: message,
      data: listData,
    );
  }
}

@freezed
class ListDataUsername with _$ListDataUsername {
  const factory ListDataUsername({
    String? username,
    String? verified,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _ListDataUsername;

  const ListDataUsername._();

  factory ListDataUsername.fromJson(Map<String, dynamic> json) =>
      _$ListDataUsernameFromJson(json);

  UserBySearchingEntity toEntity() => UserBySearchingEntity(
        username: username,
        verified: verified,
        profilePicture: profilePicture,
      );
}
