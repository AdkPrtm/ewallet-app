import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';

import '../../helpers/constant.dart';
import '../../helpers/transfer_test_helper.mocks.dart';

void main() {
  late TransferUseCase transferUseCase;
  late MockTransferRepository mockTransferRepository;

  setUp(() {
    mockTransferRepository = MockTransferRepository();
    transferUseCase = TransferUseCase(mockTransferRepository);
  });

  group('Response Transfer UseCase from Repository', () {
    test('should get successfully transfer response from repository', () async {
      when(mockTransferRepository.transferRepository(testTransferParams))
          .thenAnswer((_) async => const Right('Transfer Success'));

      final result = await transferUseCase.call(params: testTransferParams);

      expect(result, const Right('Transfer Success'));
    });

    test(
        'should get response unsuccessful transfer because not enough balance from repository',
        () async {
      when(mockTransferRepository.transferRepository(testTransferParams))
          .thenAnswer(
              (_) async => const Left(ServerFailure('You balance not enough')));

      final result = await transferUseCase.call(params: testTransferParams);

      expect(result, const Left(ServerFailure('You balance not enough')));
    });

    test(
        'should get response unsuccessful transfer because user not found from repository',
        () async {
      when(mockTransferRepository.transferRepository(testTransferParams))
          .thenAnswer((_) async =>
              const Left(ServerFailure('User receiver not found')));

      final result = await transferUseCase.call(params: testTransferParams);

      expect(result, const Left(ServerFailure('User receiver not found')));
    });

    test(
        'should get response unsuccessful transfer because send to yourself from repository',
        () async {
      when(mockTransferRepository.transferRepository(testTransferParams))
          .thenAnswer((_) async =>
              const Left(ServerFailure('You cant send to yourself')));

      final result = await transferUseCase.call(params: testTransferParams);

      expect(result, const Left(ServerFailure('You cant send to yourself')));
    });
  });
}
