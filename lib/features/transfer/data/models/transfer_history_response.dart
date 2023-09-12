import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/entities.dart';

part 'transfer_history_response.freezed.dart';
part 'transfer_history_response.g.dart';

@unfreezed
class TransferHistoryResponse with _$TransferHistoryResponse {
  factory TransferHistoryResponse({
    String? status,
    String? message,
    ResultTransferHistoryResponse? data,
  }) = _TransferHistoryResponse;

  const TransferHistoryResponse._();

  factory TransferHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransferHistoryResponseFromJson(json);

  TransferHistoryEntity toEntity() => TransferHistoryEntity(
    status: status,
    message: message,
    data: data?.toEntity(),
  );
}

@unfreezed
class ResultTransferHistoryResponse with _$ResultTransferHistoryResponse {
  factory ResultTransferHistoryResponse({
    @JsonKey(name: 'current_page') int? currentPage,
    List<DataTransferResponse>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<LinksTransferResponse>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _ResultTransferHistoryResponse;

  const ResultTransferHistoryResponse._();

  factory ResultTransferHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultTransferHistoryResponseFromJson(json);

  ResultTransferHistoryEntity toEntity() {
    final listData = data!
        .map<DataTransferHistory>((data) => DataTransferHistory(
            id: data.id,
            name: data.name,
            username: data.username,
            verified: data.verified,
            profilePicture: data.profilePicture))
        .toList();
    final listLink = links!
        .map<LinkTransferHistory>((data) => LinkTransferHistory(
              url: data.url,
              label: data.label,
              active: data.active,
            ))
        .toList();
    return ResultTransferHistoryEntity(
      currentPage: currentPage,
      data: listData,
      firstPageUrl: firstPageUrl,
      from: from,
      lastPage: lastPage,
      lastPageUrl: lastPageUrl,
      links: listLink,
      nextPageUrl: nextPageUrl,
      path: path,
      perPage: perPage,
      prevPageUrl: prevPageUrl,
      to: to,
      total: total,
    );
  }
}

@unfreezed
class DataTransferResponse with _$DataTransferResponse {
  factory DataTransferResponse({
    int? id,
    String? name,
    String? username,
    String? verified,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _DataTransferResponse;

  factory DataTransferResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTransferResponseFromJson(json);
}

@unfreezed
class LinksTransferResponse with _$LinksTransferResponse {
  factory LinksTransferResponse({
    String? url,
    String? label,
    bool? active,
  }) = _LinksTransferResponse;

  factory LinksTransferResponse.fromJson(Map<String, dynamic> json) =>
      _$LinksTransferResponseFromJson(json);
}
