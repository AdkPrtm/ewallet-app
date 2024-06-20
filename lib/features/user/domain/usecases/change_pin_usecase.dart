import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/user/domain/domain.dart';

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
  String oldPin;
  @JsonKey(name: 'new_pin')
  String newPin;

  UpdatePinParams(this.oldPin, this.newPin);

  Map<String, dynamic> toJson() => _$UpdatePinParamsToJson(this);
}
