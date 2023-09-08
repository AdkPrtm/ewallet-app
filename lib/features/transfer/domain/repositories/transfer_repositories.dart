import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';

abstract class TransferRepository {
  Future<Either<Failure, String>> transferRepository(
      TransferParams transferParams);
  Future<Either<Failure, TransferHistoryEntity>> transferHistoryRespository(
      String limit);

  Future<Either<Failure, ResponseSearchUsername>> getByUsername(
      String username);
}
