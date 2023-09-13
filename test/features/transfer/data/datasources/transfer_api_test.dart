import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/transfer/data/data.dart';
import 'package:template_clean_architecture/features/transfer/data/models/searching_byusername_response.dart';

import '../../../../json_reader.dart';
import '../../helpers/constant.dart';
import '../../helpers/transfer_test_helper.mocks.dart';

void main() {
  late MockTransferRemoteService mockTransferRemoteService;

  final Map<String, dynamic> jsonTransferSuccess =
      json.decode(readJson(transferSuccessPath));
  final Map<String, dynamic> jsonTransferFailNotEnoughBalance =
      json.decode(readJson(transferFailNotEnoughBalancePath));
  final Map<String, dynamic> jsonTransferFailUserNotFound =
      json.decode(readJson(transferFailUserNotFoundPath));
  final Map<String, dynamic> jsonTransferFailSendToYourself =
      json.decode(readJson(transferFailSendToYourselfPath));

  final Map<String, dynamic> jsonGetUsername =
      json.decode(readJson(getUserByUsernameSuccessfullyPath));
  final Map<String, dynamic> jsonHistoryTransfer =
      json.decode(readJson(transferHistorySuccessfullyPath));

  setUp(() {
    mockTransferRemoteService = MockTransferRemoteService();
  });

  group('Transfer Api Service', () {
    test('Transfer success when status code 200', () async {
      when(mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferResponse.fromJson(jsonTransferSuccess),
          Response(
            data: jsonTransferSuccess,
            requestOptions: RequestOptions(data: jsonTransferSuccess),
            statusCode: 200,
          ),
        ),
      );
      final result = await mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      );

      expect(result.data, isA<TransferResponse>());
    });

    test('Transfer success when balance not enough and status code 400 ',
        () async {
      when(mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferResponse.fromJson(jsonTransferFailNotEnoughBalance),
          Response(
            data: jsonTransferFailNotEnoughBalance,
            requestOptions:
                RequestOptions(data: jsonTransferFailNotEnoughBalance),
            statusCode: 400,
          ),
        ),
      );
      final result = await mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      );

      expect(result.data, isA<TransferResponse>());
    });

    test('Transfer success when user not found and status code 400 ', () async {
      when(mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferResponse.fromJson(jsonTransferFailUserNotFound),
          Response(
            data: jsonTransferFailUserNotFound,
            requestOptions: RequestOptions(data: jsonTransferFailUserNotFound),
            statusCode: 400,
          ),
        ),
      );
      final result = await mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      );

      expect(result.data, isA<TransferResponse>());
    });

    test('Transfer success when send to yourself and status code 400 ',
        () async {
      when(mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferResponse.fromJson(jsonTransferFailSendToYourself),
          Response(
            data: jsonTransferFailSendToYourself,
            requestOptions:
                RequestOptions(data: jsonTransferFailSendToYourself),
            statusCode: 400,
          ),
        ),
      );
      final result = await mockTransferRemoteService.transferService(
        token: 'aaaaa',
        contentType: contentType,
        body: testTransferParams.toJson(),
      );

      expect(result.data, isA<TransferResponse>());
    });
  });

  group('Get User by Username API Remote', () {
    test('Successfully get user by username', () async {
      when(mockTransferRemoteService.getDataUsername(
        token: 'aaaaa',
        contentType: contentType,
        username: 'andhika',
      )).thenAnswer(
        (_) async => HttpResponse(
          SearchingByUsernameResponse.fromJson(jsonGetUsername),
          Response(
            data: jsonGetUsername,
            requestOptions: RequestOptions(data: jsonGetUsername),
            statusCode: 200,
          ),
        ),
      );

      final result = await mockTransferRemoteService.getDataUsername(
        token: 'aaaaa',
        contentType: contentType,
        username: 'andhika',
      );

      expect(result.data, isA<SearchingByUsernameResponse>());
    });
  });

  group('Get History Transfer API Remote', () {
    test('Successfully get history transfer', () async {
      when(mockTransferRemoteService.transferHistoryService(
        token: 'aaaaa',
        contentType: contentType,
      )).thenAnswer(
        (_) async => HttpResponse(
          TransferHistoryResponse.fromJson(jsonHistoryTransfer),
          Response(
            data: jsonHistoryTransfer,
            requestOptions: RequestOptions(data: jsonHistoryTransfer),
            statusCode: 200,
          ),
        ),
      );

      final result = await mockTransferRemoteService.transferHistoryService(
        token: 'aaaaa',
        contentType: contentType,
      );

      expect(result.data, isA<TransferHistoryResponse>());
    });
  });
}
