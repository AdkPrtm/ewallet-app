import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_history_entities.freezed.dart';

@unfreezed
class TransferHistoryEntity with _$TransferHistoryEntity {
  factory TransferHistoryEntity({
    int? currentPage,
    List<DataTransferHistory>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<LinkTransferHistory>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    String? prevPageUrl,
    int? to,
    int? total,
  }) = _TransferHistoryEntity;
}

@unfreezed
class DataTransferHistory with _$DataTransferHistory {
  factory DataTransferHistory({
    int? id,
    String? name,
    String? username,
    String? verified,
    String? profilePicture,
  }) = _DataTransferHistory;
}

@unfreezed
class LinkTransferHistory with _$LinkTransferHistory {
  factory LinkTransferHistory({
    String? url,
    String? label,
    bool? active,
  }) = _LinkTransferHistory;
}
