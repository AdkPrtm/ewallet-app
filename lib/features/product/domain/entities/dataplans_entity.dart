import 'package:freezed_annotation/freezed_annotation.dart';

part 'dataplans_entity.freezed.dart';

@unfreezed
class DataPlansEntity with _$DataPlansEntity {
  factory DataPlansEntity({
    List<DataOperatorCardEntity>? data,
    int? currentPage,
    int? lastPage,
  }) = _DataPlansEntity;
}

@unfreezed
class DataOperatorCardEntity with _$DataOperatorCardEntity {
  factory DataOperatorCardEntity({
    String? id,
    String? name,
    String? status,
    String? thumbnail,
    List<DataPlansListEntity>? dataPlans,
  }) = _DataOperatorCardEntity;
}

@unfreezed
class DataPlansListEntity with _$DataPlansListEntity {
  factory DataPlansListEntity({
    String? id,
    String? name,
    int? price,
    String? operatorCardId,
  }) = _DataPlansListEntity;
}
