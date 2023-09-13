import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/tips/domain/usecases/usecase.dart';

import '../../helpers/constanst.dart';
import '../../helpers/tips_test_helper.mocks.dart';

void main() {
  late GetTipsUseCase getTipsUseCase;
  late MockTipsRepository mockTipsRepository;

  setUp(() {
    mockTipsRepository = MockTipsRepository();
    getTipsUseCase = GetTipsUseCase(mockTipsRepository);
  });


  test(
    'should get tips detail from the repository',
    () async {
      when(mockTipsRepository.getTips())
          .thenAnswer((_) async => Right(testTipsEntity));

      final result = await getTipsUseCase.call();

      expect(result, Right(testTipsEntity));
    },
  );

  test(
    'should be failed get tips detail from repository because response error',
    () async {
      when(mockTipsRepository.getTips()).thenAnswer(
        (_) async => const Left(
          ServerFailure('Something went wrong'),
        ),
      );

      final result = await getTipsUseCase.call();

      expect(result, const Left(ServerFailure('Something went wrong')));
    },
  );

  test(
    'should be failed get tips detail from repository because socker connection',
    () async {
      when(mockTipsRepository.getTips()).thenAnswer(
        (_) async => const Left(
          ConnectionFailure('Failed to connect to the network'),
        ),
      );

      final result = await getTipsUseCase.call();

      expect(result,
          const Left(ConnectionFailure('Failed to connect to the network')));
    },
  );
}
