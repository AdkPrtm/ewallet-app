import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/domain/domain.dart';

class SetCredentialUseCase extends UseCase<bool, String> {
  final AuthRepository _authRepository;

  SetCredentialUseCase(this._authRepository);

  @override
  Future<bool> call({String? params}) => _authRepository.setCredential(params!);
}
