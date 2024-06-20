import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/product/product.dart';

part 'buy_dataplans_usecase.g.dart';

class BuyDataPlansUseCase
    extends UseCase<Either<Failure, String>, BuyDataPlansParams> {
  final DataPlansRepository dataPlansRepository;

  BuyDataPlansUseCase(this.dataPlansRepository);

  @override
  Future<Either<Failure, String>> call({BuyDataPlansParams? params}) =>
      dataPlansRepository.buyDataPlans(params!);
}

@JsonSerializable()
class BuyDataPlansParams {
  @JsonKey(name: 'data_plan_id')
  String idPlans;
  @JsonKey(name: 'number_phone')
  String phoneNumber;
  String pin;

  BuyDataPlansParams({
    required this.idPlans,
    required this.phoneNumber,
    required this.pin,
  });

  Map<String, dynamic> toJson() => _$BuyDataPlansParamsToJson(this);
}
