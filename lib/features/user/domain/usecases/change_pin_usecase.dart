import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';

part 'change_pin_usecase.g.dart';

class ChangePinUsecase
    extends UseCase<Either<Failure, String>, UpdatePinParams> {
  final UserRepository _userRepository;

  ChangePinUsecase(this._userRepository);

  @override
  Future<Either<Failure, String>> call({UpdatePinParams? params}) =>
      _userRepository.changePinUser(params!);
}

@JsonSerializable()
class UpdatePinParams {
  @JsonKey(name: 'previous_pin')
  int? oldPin;
  @JsonKey(name: 'new_pin')
  int? newPin;

  UpdatePinParams({this.oldPin, this.newPin});

  Map<String, dynamic> toJson() => _$UpdatePinParamsToJson(this);
}
