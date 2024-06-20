import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/features/transfer/domain/entities/entities.dart';
import 'package:ewallet/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:ewallet/features/transfer/domain/usecases/usecases.dart';

abstract class TransferRepository {
  Future<Either<Failure, String>> transferRepository(
      TransferParams transferParams);
  Future<Either<Failure, TransferHistoryEntity>> transferHistoryRespository(
      GetTransferHistoryQuery query);

  Future<Either<Failure, List<UserBySearchingEntity>>> getByUsername(
      String username);
}
