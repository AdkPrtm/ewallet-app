// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';

part 'tips_response.freezed.dart';
part 'tips_response.g.dart';

@unfreezed
class TipsResponse with _$TipsResponse {
  factory TipsResponse({
    @JsonKey(name: 'current_page') int? currentPage,
    List<DataTipsResponse>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<LinksTipsResponse>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _TipsResponse;

  const TipsResponse._();

  factory TipsResponse.fromJson(Map<String, dynamic> json) =>
      _$TipsResponseFromJson(json);

  TipsResponseEntity toEntity() {
    final listData = data!
        .map<DataTipsEntity>(
          (data) => DataTipsEntity(
            id: data.id,
            title: data.title,
            url: data.url,
            thumbnail: data.thumbnail,
          ),
        )
        .toList();
    final listLink = links!
        .map<LinkTipsEntity>((data) => LinkTipsEntity(
              url: data.url,
              label: data.label,
              active: data.active,
            ))
        .toList();
    return TipsResponseEntity(
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
class DataTipsResponse with _$DataTipsResponse {
  factory DataTipsResponse({
    int? id,
    String? title,
    String? url,
    String? thumbnail,
  }) = _DataTipsResponse;

  factory DataTipsResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTipsResponseFromJson(json);
}

@unfreezed
class LinksTipsResponse with _$LinksTipsResponse {
  factory LinksTipsResponse({
    String? url,
    String? label,
    bool? active,
  }) = _LinksTipsResponse;

  factory LinksTipsResponse.fromJson(Map<String, dynamic> json) =>
      _$LinksTipsResponseFromJson(json);
}
