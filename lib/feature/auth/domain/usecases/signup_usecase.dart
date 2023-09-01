import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/user_entities.dart';

part 'signup_usecase.g.dart';

class SignUpUseCase extends UseCase<Either<Failure, UserEntity>, SignUpParams> {
  final AuthRepository _authRepository;

  SignUpUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserEntity>> call({SignUpParams? params}) =>
      _authRepository.signup(params!);
}

@JsonSerializable()
class SignUpParams {
  String? name;
  String? username;
  String? email;
  String? password;
  String? pin;
  @JsonKey(name: 'profile_picture')
  String? profilePicture;
  String? ktp;

  SignUpParams({
    this.name,
    this.username,
    this.email,
    this.password,
    this.pin,
    this.profilePicture,
    this.ktp,
  });

  Map<String, dynamic> toJson() => _$SignUpParamsToJson(this);
}
