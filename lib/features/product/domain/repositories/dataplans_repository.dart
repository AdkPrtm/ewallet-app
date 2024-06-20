import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/features/product/product.dart';

abstract class DataPlansRepository {
  Future<Either<Failure, DataPlansEntity>> getDataPlans(GetDataPlansQuery query);
  Future<Either<Failure, String>> buyDataPlans(
      BuyDataPlansParams buyDataPlansParams);
}
