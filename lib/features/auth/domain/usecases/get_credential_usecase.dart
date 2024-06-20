import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/domain/domain.dart';

class GetCredentialUseCase extends UseCase<String, void> {
  final AuthRepository _authRepository;

  GetCredentialUseCase(this._authRepository);

  @override
  Future<String> call({void params}) => _authRepository.getCredential();
}
