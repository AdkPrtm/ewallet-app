import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_history_entities.freezed.dart';

@unfreezed
class TransferHistoryEntity with _$TransferHistoryEntity {
  factory TransferHistoryEntity({
    List<DataTransferHistory>? data,
    int? currentPage,
    int? lastPage,
  }) = _TransferHistoryEntity;
}

@unfreezed
class DataTransferHistory with _$DataTransferHistory {
  factory DataTransferHistory({
    String? firstName,
    String? lastName,
    String? username,
    bool? verified,
    String? profilePicture,
  }) = _DataTransferHistory;
}
