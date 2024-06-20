// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/features/tips/domain/entities/tips_entities.dart';

part 'tips_response.freezed.dart';
part 'tips_response.g.dart';

@unfreezed
class TipsResponse with _$TipsResponse {
  factory TipsResponse({
    List<DataTipsResponse>? data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
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
    return TipsResponseEntity(
      data: listData,
      currentPage: currentPage,
      lastPage: lastPage,
    );
  }
}

@unfreezed
class DataTipsResponse with _$DataTipsResponse {
  factory DataTipsResponse({
    String? id,
    String? title,
    String? url,
    String? thumbnail,
  }) = _DataTipsResponse;

  factory DataTipsResponse.fromJson(Map<String, dynamic> json) =>
      _$DataTipsResponseFromJson(json);
}
