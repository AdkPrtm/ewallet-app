import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_data_entities.freezed.dart';

@freezed 
class CheckDataEntity with _$CheckDataEntity {
  const factory CheckDataEntity({
    String? email,
    String? username,
  }) = _CheckDataEntity;
}