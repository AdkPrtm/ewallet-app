import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/domain/domain.dart';
import 'package:ewallet/features/user/domain/entities/user_entities.dart';

part 'signin_usecase.freezed.dart';
part 'signin_usecase.g.dart';

class SignInUseCase extends UseCase<Either<Failure, UserEntity>, SignInParams> {
  final AuthRepository _authRepository;
  SignInUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({SignInParams? params}) =>
      _authRepository.signin(params!);
}

@freezed
class SignInParams with _$SignInParams {
  const factory SignInParams(
      {required String email,
      required String password,
      @JsonKey(name: "token_device") String? tokenFCM}) = _SignInParams;

  factory SignInParams.fromJson(Map<String, dynamic> json) =>
      _$SignInParamsFromJson(json);
}
