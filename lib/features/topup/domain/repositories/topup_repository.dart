import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/topup/domain/usecases/usecases.dart';

abstract class TopUpRespository {
  Future<Either<Failure, TopUpEntity>> topupRepo(TopupParams topupParams);
  Future<Either<Failure, ResponsePaymentTopupEntity>> getPaymentMethodEntity();
}
