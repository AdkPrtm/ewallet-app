import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/product/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/product/domain/repositories/repositories.dart';

class GetDataPlansUseCase
    extends UseCase<Either<Failure, DataPlansEntity>, String> {
  final DataPlansRepository dataPlansRepository;

  GetDataPlansUseCase(this.dataPlansRepository);
  
  @override
  Future<Either<Failure, DataPlansEntity>> call({String? params}) =>
      dataPlansRepository.getDataPlans(params!);
}
