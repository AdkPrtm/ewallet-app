import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_entities.freezed.dart';

@freezed 
class TipsResponseEntity with _$TipsResponseEntity {
  const factory TipsResponseEntity({
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
  }) = _TipsResponseEntity;
}

@freezed
class DataTipsEntity with _$DataTipsEntity {
  const factory DataTipsEntity({
    String? id,
    String? title,
    String? url,
    String? thumbnail,
  }) = _DataTipsEntity;
}

@freezed
class LinkTipsEntity with _$LinkTipsEntity {
  factory LinkTipsEntity({
    String? url,
    String? label,
    bool? active,
  }) = _LinkTipsEntity;
}