import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/user_entities.dart';

part 'signin_usecase.freezed.dart';
part 'signin_usecase.g.dart';

class SignInUseCase extends UseCase<Either<Failure, UserEntity>, SignInParams> {
  final AuthRepository _authRepository;
  SignInUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call(SignInParams params) =>
      _authRepository.signin(params);
}

@freezed
class SignInParams with _$SignInParams {
  const factory SignInParams({
    String? email,
    String? password,
  }) = _SignInParams;

  factory SignInParams.fromJson(Map<String, dynamic> json) =>
      _$SignInParamsFromJson(json);
}
