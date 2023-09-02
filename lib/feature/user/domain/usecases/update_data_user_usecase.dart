import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/user/domain/repositories/repositories.dart';

part 'update_data_user_usecase.freezed.dart';
part 'update_data_user_usecase.g.dart';

class UpdateDataUserUsecase
    extends UseCase<Either<Failure, String>, UpdateProfileUserParams> {
  final UserRepository _userRepository;

  UpdateDataUserUsecase(this._userRepository);

  @override
  Future<Either<Failure, String>> call({UpdateProfileUserParams? params}) =>
      _userRepository.updateUser(params!);
}

@unfreezed
class UpdateProfileUserParams with _$UpdateProfileUserParams {
  factory UpdateProfileUserParams({
    String? username,
    String? name,
    String? email,
    String? password,
  }) = _UpdateProfileUserParams;

  factory UpdateProfileUserParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileUserParamsFromJson(json);
}
