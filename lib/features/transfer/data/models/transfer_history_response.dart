// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/transfer/domain/entities/entities.dart';

part 'transfer_history_response.freezed.dart';
part 'transfer_history_response.g.dart';

@unfreezed
class TransferHistoryResponse with _$TransferHistoryResponse {
  factory TransferHistoryResponse({
    List<DataTransferResponse>? data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _TransferHistoryResponse;

  const TransferHistoryResponse._();

  factory TransferHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransferHistoryResponseFromJson(json);

  TransferHistoryEntity toEntity() {
    final listData = data!
        .map<DataTransferHistory>((data) => DataTransferHistory(
            firstName: data.firstName,
            lastName: data.lastName,
            username: data.username,
            verified: data.verified,
            profilePicture: data.profilePicture))
        .toList();
    return TransferHistoryEntity(
      data: listData,
      currentPage: currentPage,
      lastPage: lastPage,
    );
  }
}

@unfreezed
class DataTransferResponse with _$DataTransferResponse {
  factory DataTransferResponse({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? username,
    bool? verified,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _DataTransferResponse;

  factory DataTransferResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTransferResponseFromJson(json);
}
