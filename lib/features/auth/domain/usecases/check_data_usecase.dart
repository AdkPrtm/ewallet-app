import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/domain/domain.dart';

part 'check_data_usecase.g.dart';

class CheckDataUseCase
    extends UseCase<Either<Failure, CheckDataEntity>, CheckDataParams> {
  final AuthRepository _authRepository;

  CheckDataUseCase(this._authRepository);

  @override
  Future<Either<Failure, CheckDataEntity>> call({CheckDataParams? params}) =>
      _authRepository.checkData(params!);
}

@JsonSerializable()
class CheckDataParams {
  String? email;
  String? username;

  CheckDataParams({this.email, this.username});

  Map<String, dynamic> toJson() => _$CheckDataParamsToJson(this);
}
