import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/auth/auth.dart';
import 'package:template_clean_architecture/features/transfer/data/data.dart';
import 'package:template_clean_architecture/features/transfer/data/models/searching_byusername_response.dart';
import 'package:template_clean_architecture/features/transfer/domain/domain.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/user_byusername_entities.dart';

import '../../../../json_reader.dart';
import '../../helpers/constant.dart';
import '../../helpers/transfer_test_helper.mocks.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late MockTransferRemoteService mockTransferRemoteService;
  late TransferRepositoryImpl transferRepositoryImpl;

  final Map<String, dynamic> jsonTransferSuccess =
      json.decode(readJson(transferSuccessPath));
  final Map<String, dynamic> jsonTransferFailNotEnoughBalance =
      json.decode(readJson(transferFailNotEnoughBalancePath));

  final Map<String, dynamic> jsonGetUsername =
      json.decode(readJson(getUserByUsernameSuccessfullyPath));
  final Map<String, dynamic> jsonHistoryTransfer =
      json.decode(readJson(transferHistorySuccessfullyPath));

  late TransferResponse transferSuccessResponse, transferFailedResponse;
  late SearchingByUsernameResponse searchUsername;
  late TransferHistoryResponse transferHistoryResponse;

  setUp(() {
    mockTransferRemoteService = MockTransferRemoteService();
    transferRepositoryImpl =
        TransferRepositoryImpl(mockTransferRemoteService, AuthLocalService());
    FlutterSecureStorage.setMockInitialValues({'token': 'aaaa'});
    transferSuccessResponse =
        TransferResponse.fromJson(json.decode(readJson(transferSuccessPath)));
    transferSuccessResponse =
        TransferResponse.fromJson(json.decode(readJson(transferSuccessPath)));
    transferFailedResponse = TransferResponse.fromJson(
        json.decode(readJson(transferFailNotEnoughBalancePath)));
    searchUsername = SearchingByUsernameResponse.fromJson(
        json.decode(readJson(getUserByUsernameSuccessfullyPath)));
    transferHistoryResponse = TransferHistoryResponse.fromJson(
        json.decode(readJson(transferHistorySuccessfullyPath)));
  });

  group('Transfer Repository Response', () {
    test('Successfully post data transfer from api when status code 200',
        () async {
      when(mockTransferRemoteService.transferService(
        token: await AuthLocalService().getCredentialToLocal(),
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferResponse.fromJson(jsonTransferSuccess),
          Response(
            statusCode: 200,
            requestOptions: RequestOptions(),
          ),
        ),
      );
      final result =
          await transferRepositoryImpl.transferRepository(testTransferParams);

      expect(result,
          equals(Right<Failure, String>(transferSuccessResponse.message!)));
    });

    test('Failed post data transfer from api when status code >300', () async {
      when(mockTransferRemoteService.transferService(
        token: await AuthLocalService().getCredentialToLocal(),
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferResponse.fromJson(jsonTransferSuccess),
          Response(
              statusCode: 400,
              requestOptions: RequestOptions(
                data: jsonTransferFailNotEnoughBalance,
              ),
              data: jsonTransferFailNotEnoughBalance),
        ),
      );
      final result =
          await transferRepositoryImpl.transferRepository(testTransferParams);

      expect(
        result,
        equals(
          Left<Failure, String>(ServerFailure(transferFailedResponse.message!)),
        ),
      );
    });

    test('Failed post data transfer from api when no internet connection',
        () async {
      when(mockTransferRemoteService.transferService(
        token: await AuthLocalService().getCredentialToLocal(),
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenThrow(const SocketException('Failed to connect to the network'));

      final result =
          await transferRepositoryImpl.transferRepository(testTransferParams);

      expect(
        result,
        equals(
          const Left<Failure, String>(
              ConnectionFailure('Failed to connect to the network')),
        ),
      );
    });
  });

  group('Get Data Username Repository Response', () {
    test(
      'Successfully get data username from api when status code 200',
      () async {
        when(
          mockTransferRemoteService.getDataUsername(
            token: await AuthLocalService().getCredentialToLocal(),
            contentType: contentType,
            username: 'andhika',
          ),
        ).thenAnswer(
          (_) async => HttpResponse(
            SearchingByUsernameResponse.fromJson(jsonGetUsername),
            Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
            ),
          ),
        );

        final result = await transferRepositoryImpl.getByUsername('andhika');

        expect(
          result,
          equals(
            Right<Failure, ResponseSearchUsername>(searchUsername.toEntity()),
          ),
        );
      },
    );
  });

  group('Get Data History Transfer Repository Response', () {
    test(
      'Successfully get data history transfer from api when status code 200',
      () async {
        when(
          mockTransferRemoteService.transferHistoryService(
              token: await AuthLocalService().getCredentialToLocal(),
              contentType: contentType,
              limit: '10'),
        ).thenAnswer(
          (_) async => HttpResponse(
            TransferHistoryResponse.fromJson(jsonHistoryTransfer),
            Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
            ),
          ),
        );

        final result =
            await transferRepositoryImpl.transferHistoryRespository('10');

        var matcher = Right<Failure, TransferHistoryEntity>(
            transferHistoryResponse.toEntity());
        expect(result.isRight(), matcher.isRight());
      },
    );
  });
}
