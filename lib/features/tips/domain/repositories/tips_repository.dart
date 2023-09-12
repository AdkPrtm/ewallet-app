import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';

abstract class TipsRepository {
  Future<Either<Failure, TipsEntity>> getTips();
}
