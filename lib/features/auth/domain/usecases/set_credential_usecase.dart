import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/auth/domain/domain.dart';

class SetCredentialUseCase extends UseCase<bool, String> {
  final AuthRepository _authRepository;

  SetCredentialUseCase(this._authRepository);

  @override
  Future<bool> call({String? params}) => _authRepository.setCredential(params!);
}
