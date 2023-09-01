import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';

part 'check_data_usecase.g.dart';

class CheckDataUseCase extends UseCase<CheckDataEntity, CheckDataParams> {
  final AuthRepository _authRepository;

  CheckDataUseCase(this._authRepository);

  @override
  Future<Either<Failure, CheckDataEntity>> call(CheckDataParams? params) =>
      _authRepository.checkData(params!);
}

@JsonSerializable()
class CheckDataParams {
  @JsonKey(name: 'is_email_exists')
  String? email;
  @JsonKey(name: 'is_username_exists')
  String? username;

  CheckDataParams({this.email, this.username});

  Map<String, dynamic> toJson() => _$CheckDataParamsToJson(this);
}
