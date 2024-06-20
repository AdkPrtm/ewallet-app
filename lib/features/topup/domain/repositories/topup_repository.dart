import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';
import 'package:ewallet/features/topup/domain/usecases/usecases.dart';

abstract class TopUpRespository {
  Future<Either<Failure, TopUpEntity>> topupRepo(TopupParams topupParams);
  Future<Either<Failure, List<PaymentDataTopupEntity>>>
      getPaymentMethodEntity();
}
