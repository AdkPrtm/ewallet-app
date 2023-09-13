import 'package:mockito/annotations.dart';
import 'package:template_clean_architecture/features/transfer/transfer.dart';

@GenerateMocks([
  TransferRepository,
  TransferRemoteService,
  GetUserByUsernameUsecase,
  TransferHistoryUseCase,
  TransferUseCase,
])
void main() {}
