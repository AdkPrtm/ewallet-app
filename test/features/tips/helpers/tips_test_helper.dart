import 'package:mockito/annotations.dart';
import 'package:template_clean_architecture/features/tips/data/datasources/remote/remote.dart';
import 'package:template_clean_architecture/features/tips/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/features/tips/domain/usecases/usecase.dart';

@GenerateMocks(
  [
    TipsRepository,
    TipsServiceRemote,
    GetTipsUseCase,
  ],
  // customMocks: [MockSpec<dio.HttpClientAdapter>(as: #MockDioClient)],
)

void main() {
  
}