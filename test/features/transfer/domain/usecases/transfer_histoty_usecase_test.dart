import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/features/transfer/transfer.dart';

import '../../../../json_reader.dart';
import '../../helpers/constant.dart';
import '../../helpers/transfer_test_helper.mocks.dart';

void main() {
  late TransferHistoryUseCase transferHistoryUseCase;
  late MockTransferRepository mockTransferRepository;
  late TransferHistoryEntity transferHistoryEntity;

  setUp(() {
    mockTransferRepository = MockTransferRepository();
    transferHistoryUseCase = TransferHistoryUseCase(mockTransferRepository);
    transferHistoryEntity = TransferHistoryResponse.fromJson(
            json.decode(readJson(transferHistorySuccessfullyPath))
                as Map<String, dynamic>)
        .toEntity();
  });

  group('Transfer History Response From Repository', () {
    test('should get successfully from repository', () async {
      when(mockTransferRepository.transferHistoryRespository('10'))
          .thenAnswer((_) async => Right(transferHistoryEntity));

      final result = await transferHistoryUseCase.call(params: '10');

      expect(result, equals(Right(transferHistoryEntity)));
    });
  });
}
