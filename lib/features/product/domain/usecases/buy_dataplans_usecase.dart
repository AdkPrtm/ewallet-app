import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/product/product.dart';

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
  int? idPlans;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? pin;

  BuyDataPlansParams({
    this.idPlans,
    this.phoneNumber,
    this.pin,
  });

  Map<String, dynamic> toJson() => _$BuyDataPlansParamsToJson(this);
}
