import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ewallet/core/error/error.dart';
import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/transfer/domain/repositories/repositories.dart';

part 'transfer_usecase.freezed.dart';
part 'transfer_usecase.g.dart';

class TransferUseCase extends UseCase<Either<Failure, String>, TransferParams> {
  final TransferRepository _transferRepository;

  TransferUseCase(this._transferRepository);

  @override
  Future<Either<Failure, String>> call({TransferParams? params}) =>
      _transferRepository.transferRepository(params!);
}

@unfreezed
class TransferParams with _$TransferParams {
  factory TransferParams(
    int amount,
    String pin,
    @JsonKey(name: 'send_to') String? sendToUsername,
  ) = _TransferParams;

  factory TransferParams.fromJson(Map<String, dynamic> json) =>
      _$TransferParamsFromJson(json);
}
