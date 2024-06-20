import 'package:dartz/dartz.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/features/tips/domain/entities/tips_entities.dart';
import 'package:ewallet/features/tips/domain/usecases/get_tips_usecase.dart';

abstract class TipsRepository {
  Future<Either<Failure, TipsResponseEntity>> getTips(GetTipsQuery query);
}
