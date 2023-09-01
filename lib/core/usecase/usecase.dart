import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/core/error/error.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}
