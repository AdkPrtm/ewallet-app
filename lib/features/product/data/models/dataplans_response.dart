import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/product/domain/entities/entities.dart';

part 'dataplans_response.freezed.dart';
part 'dataplans_response.g.dart';

@unfreezed
class DataPlansResponse with _$DataPlansResponse {
  factory DataPlansResponse({
    @JsonKey(name: 'current_page') int? currentPage,
    List<DataOpertorCardResponse>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<LinkDataPlansResponse>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
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

    final listLink = links!
        .map<LinkDataPlansEntity>((data) => LinkDataPlansEntity(
              url: data.url,
              label: data.label,
              active: data.active,
            ))
        .toList();

    return DataPlansEntity(
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
class DataOpertorCardResponse with _$DataOpertorCardResponse {
  factory DataOpertorCardResponse({
    int? id,
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
    int? id,
    String? name,
    String? price,
    @JsonKey(name: 'operator_card_id') String? operatorCardId,
  }) = _DataPlansListResponse;

  factory DataPlansListResponse.fromJson(Map<String, dynamic> json) =>
      _$DataPlansListResponseFromJson(json);
}

@unfreezed
class LinkDataPlansResponse with _$LinkDataPlansResponse {
  factory LinkDataPlansResponse({
    String? url,
    String? label,
    bool? active,
  }) = _LinkDataPlansResponse;

  factory LinkDataPlansResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkDataPlansResponseFromJson(json);
}
