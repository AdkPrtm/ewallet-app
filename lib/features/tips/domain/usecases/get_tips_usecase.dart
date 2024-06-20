import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/tips/domain/entities/tips_entities.dart';
import 'package:ewallet/features/tips/domain/repositories/repositories.dart';

class GetTipsUseCase
    extends UseCase<Either<Failure, TipsResponseEntity>, GetTipsQuery> {
  final TipsRepository _tipsRepository;

  GetTipsUseCase(this._tipsRepository);

  @override
  Future<Either<Failure, TipsResponseEntity>> call({GetTipsQuery? params}) =>
      _tipsRepository.getTips(params!);
}

class GetTipsQuery {
  int? page = 1;
  int? limit = 6;

  GetTipsQuery({this.page, this.limit});
}
