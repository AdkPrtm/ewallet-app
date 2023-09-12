import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_entities.freezed.dart';

@unfreezed
class TipsEntity with _$TipsEntity {
  factory TipsEntity({
    String? status,
    String? message,
    ResultTipsEntity? data,
  }) = _TipsEntity;
}

@unfreezed
class ResultTipsEntity with _$ResultTipsEntity {
  factory ResultTipsEntity({
    int? currentPage,
    List<DataTipsEntity>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<LinkTipsEntity>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    String? prevPageUrl,
    int? to,
    int? total,
  }) = _ResultTipsEntity;
}

@unfreezed
class DataTipsEntity with _$DataTipsEntity {
  factory DataTipsEntity({
    int? id,
    String? title,
    String? url,
    String? thumbnail,
  }) = _DataTipsEntity;
}

@unfreezed
class LinkTipsEntity with _$LinkTipsEntity {
  factory LinkTipsEntity({
    String? url,
    String? label,
    bool? active,
  }) = _LinkTipsEntity;
}
