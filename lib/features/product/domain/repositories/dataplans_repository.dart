import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/features/product/product.dart';

abstract class DataPlansRepository {
  Future<Either<Failure, DataPlansEntity>> getDataPlans(String limit);
  Future<Either<Failure, String>> buyDataPlans(
      BuyDataPlansParams buyDataPlansParams);
}
