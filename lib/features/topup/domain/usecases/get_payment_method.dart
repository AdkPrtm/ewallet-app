import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/topup/domain/repositories/repositories.dart';

class GetPaymentMethodUseCase
    extends UseCase<Either<Failure, ResponsePaymentTopupEntity>, void> {
  final TopUpRespository topUpRespository;

  GetPaymentMethodUseCase(this.topUpRespository);

  @override
  Future<Either<Failure, ResponsePaymentTopupEntity>> call({void params}) =>
      topUpRespository.getPaymentMethodEntity();
}
