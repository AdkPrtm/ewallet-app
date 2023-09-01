import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';

class GetCredentialUseCase extends UseCase<String, void> {
  final AuthRepository _authRepository;

  GetCredentialUseCase(this._authRepository);

  @override
  Future<String> call({void params}) => _authRepository.getCredential();
}
