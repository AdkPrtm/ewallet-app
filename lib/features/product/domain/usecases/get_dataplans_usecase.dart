import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/product/domain/entities/entities.dart';
import 'package:ewallet/features/product/domain/repositories/repositories.dart';

class GetDataPlansUseCase
    extends UseCase<Either<Failure, DataPlansEntity>, GetDataPlansQuery> {
  final DataPlansRepository dataPlansRepository;

  GetDataPlansUseCase(this.dataPlansRepository);

  @override
  Future<Either<Failure, DataPlansEntity>> call({GetDataPlansQuery? params}) =>
      dataPlansRepository.getDataPlans(params!);
}
class GetDataPlansQuery {
  int page;
  int limit;

  GetDataPlansQuery({this.page = 1, this.limit = 10});
}
