import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';
import 'package:template_clean_architecture/features/tips/domain/repositories/repositories.dart';

class GetTipsUseCase
    extends UseCase<Either<Failure, TipsEntity>, void> {
  final TipsRepository _tipsRepository;

  GetTipsUseCase(this._tipsRepository);

  @override
  Future<Either<Failure, TipsEntity>> call({void params}) =>
      _tipsRepository.getTips();
}
