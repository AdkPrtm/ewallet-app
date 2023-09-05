import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/topup/domain/repositories/repositories.dart';

part 'topup_usecase.g.dart';

class TopUpUseCase extends UseCase<Either<Failure, TopUpEntity>, TopupParams> {
  final TopUpRespository _topUpRespository;

  TopUpUseCase(this._topUpRespository);

  @override
  Future<Either<Failure, TopUpEntity>> call({TopupParams? params}) =>
      _topUpRespository.topupRepo(params!);
}

@JsonSerializable()
class TopupParams {
  int? amount;
  String? pin;
  @JsonKey(name: 'payment_method_code')
  String? paymentMethod;

  TopupParams({this.amount, this.pin, this.paymentMethod});

  Map<String, dynamic> toJson() => _$TopupParamsToJson(this);
}
