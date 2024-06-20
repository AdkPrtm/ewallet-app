import 'package:ewallet/core/usecase/usecase.dart';
import 'package:ewallet/features/auth/auth.dart';

class RemoveCredentialUsecase extends UseCase<bool, void> {
  final AuthRepository _authRepository;

  RemoveCredentialUsecase(this._authRepository);

  @override
  Future<bool> call({void params}) => _authRepository.removeCredential();
}
