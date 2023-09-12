import 'package:template_clean_architecture/core/usecase/usecase.dart';
import 'package:template_clean_architecture/features/auth/domain/domain.dart';

class LogoutUserUseCase extends UseCase<void, void> {
  final AuthRepository authRepository;

  LogoutUserUseCase(this.authRepository);

  @override
  Future<void> call({void params}) => authRepository.logoutCredential();
}
