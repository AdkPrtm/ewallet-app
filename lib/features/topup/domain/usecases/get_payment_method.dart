import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';
import 'package:ewallet/features/topup/domain/repositories/repositories.dart';

class GetPaymentMethodUseCase
    extends UseCase<Either<Failure, List<PaymentDataTopupEntity>>, void> {
  final TopUpRespository topUpRespository;

  GetPaymentMethodUseCase(this.topUpRespository);

  @override
  Future<Either<Failure, List<PaymentDataTopupEntity>>> call({void params}) =>
      topUpRespository.getPaymentMethodEntity();
}
