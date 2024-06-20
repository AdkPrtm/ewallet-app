import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/product/domain/entities/entities.dart';

part 'dataplans_response.freezed.dart';
part 'dataplans_response.g.dart';

@unfreezed
class DataPlansResponse with _$DataPlansResponse {
  factory DataPlansResponse({
    List<DataOpertorCardResponse>? data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _DataPlansResponse;

  const DataPlansResponse._();

  factory DataPlansResponse.fromJson(Map<String, dynamic> json) =>
      _$DataPlansResponseFromJson(json);

  DataPlansEntity toEntity() {
    final listData = data!
        .map<DataOperatorCardEntity>((data) => DataOperatorCardEntity(
              id: data.id,
              name: data.name,
              status: data.status,
              thumbnail: data.thumbnail,
              dataPlans: data.dataPlans!
                  .map<DataPlansListEntity>((data) => DataPlansListEntity(
                        id: data.id,
                        name: data.name,
                        price: data.price,
                        operatorCardId: data.operatorCardId,
                      ))
                  .toList(),
            ))
        .toList();

    return DataPlansEntity(
      currentPage: currentPage,
      data: listData,
      lastPage: lastPage,
    );
  }
}

@unfreezed
class DataOpertorCardResponse with _$DataOpertorCardResponse {
  factory DataOpertorCardResponse({
    String? id,
    String? name,
    String? status,
    String? thumbnail,
    @JsonKey(name: 'data_plans') List<DataPlansListResponse>? dataPlans,
  }) = _DataOpertorCardResponse;

  const DataOpertorCardResponse._();

  factory DataOpertorCardResponse.fromJson(Map<String, dynamic> json) =>
      _$DataOpertorCardResponseFromJson(json);
}

@unfreezed
class DataPlansListResponse with _$DataPlansListResponse {
  factory DataPlansListResponse({
    String? id,
    String? name,
    int? price,
    @JsonKey(name: 'operator_card_id') String? operatorCardId,
  }) = _DataPlansListResponse;

  factory DataPlansListResponse.fromJson(Map<String, dynamic> json) =>
      _$DataPlansListResponseFromJson(json);
}
