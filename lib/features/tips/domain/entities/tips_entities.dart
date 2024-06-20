import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_entities.freezed.dart';

@unfreezed
class TipsResponseEntity with _$TipsResponseEntity {
  factory TipsResponseEntity({
    int? currentPage,
    List<DataTipsEntity>? data,
    int? lastPage,
  }) = _TipsResponseEntity;
}

@unfreezed
class DataTipsEntity with _$DataTipsEntity {
  factory DataTipsEntity({
    String? id,
    String? title,
    String? url,
    String? thumbnail,
  }) = _DataTipsEntity;
}
