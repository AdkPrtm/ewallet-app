import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/features/transfer/data/models/searching_byusername_response.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';

import '../../../../json_reader.dart';
import '../../helpers/constant.dart';
import '../../helpers/transfer_test_helper.mocks.dart';

void main() {
  late GetUserByUsernameUsecase getUserByUsernameUsecase;
  late MockTransferRepository mockTransferRepository;
  late ResponseSearchUsername responseSearchUsername;

  setUp(() {
    mockTransferRepository = MockTransferRepository();
    getUserByUsernameUsecase = GetUserByUsernameUsecase(mockTransferRepository);
    responseSearchUsername = SearchingByUsernameResponse.fromJson(
            json.decode(readJson(getUserByUsernameSuccessfullyPath))
                as Map<String, dynamic>)
        .toEntity();
  });

  group('Get User by Username from Repository', () {
    test('should get successfully Data User from Repository', () async {
      
      when(mockTransferRepository.getByUsername(username))
          .thenAnswer((_) async => Right(responseSearchUsername));

      final result = await getUserByUsernameUsecase.call(params: username);

      expect(result, equals(Right(responseSearchUsername)));
    });
  });
}
