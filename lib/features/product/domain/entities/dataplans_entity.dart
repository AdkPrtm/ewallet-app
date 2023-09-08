import 'package:freezed_annotation/freezed_annotation.dart';

part 'dataplans_entity.freezed.dart';

@unfreezed
class DataPlansEntity with _$DataPlansEntity {
  factory DataPlansEntity({
    int? currentPage,
    List<DataOperatorCardEntity>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<LinkDataPlansEntity>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    String? prevPageUrl,
    int? to,
    int? total,
  }) = _DataPlansEntity;
}

@unfreezed
class DataOperatorCardEntity with _$DataOperatorCardEntity {
  factory DataOperatorCardEntity({
    int? id,
    String? name,
    String? status,
    String? thumbnail,
    List<DataPlansListEntity>? dataPlans,
  }) = _DataOperatorCardEntity;
}

@unfreezed
class DataPlansListEntity with _$DataPlansListEntity {
  factory DataPlansListEntity({
    int? id,
    String? name,
    String? price,
    String? operatorCardId,
  }) = _DataPlansListEntity;
}

@unfreezed
class LinkDataPlansEntity with _$LinkDataPlansEntity {
  factory LinkDataPlansEntity({
    String? url,
    String? label,
    bool? active,
  }) = _LinkDataPlansEntity;
}
