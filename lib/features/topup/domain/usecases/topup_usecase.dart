import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';
import 'package:ewallet/features/topup/domain/repositories/repositories.dart';

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
  int amount;
  String pin;
  @JsonKey(name: 'payment_code')
  String paymentMethod;
  @JsonKey(name: 'transaction_type')
  String transactionType;

  TopupParams(
      {required this.amount,
      required this.pin,
      required this.paymentMethod,
      required this.transactionType});

  Map<String, dynamic> toJson() => _$TopupParamsToJson(this);
}
