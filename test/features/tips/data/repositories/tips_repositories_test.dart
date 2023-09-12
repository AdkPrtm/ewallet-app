import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/auth/data/data.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';
import 'package:template_clean_architecture/features/tips/tips.dart';

import '../../helpers/constanst.dart';
import '../../../../json_reader.dart';
import '../../helpers/tips_test_helper.mocks.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late MockTipsServiceRemote mockTipsServiceRemote;
  late TipsRepositoryImpl tipsRepositoryImpl;
  final Map<String, dynamic> jsonMapFail = json.decode(
      readJson('features/tips/helpers/dummy_data/tips_response_fail.json'));
  setUp(() {
    mockTipsServiceRemote = MockTipsServiceRemote();
    tipsRepositoryImpl =
        TipsRepositoryImpl(mockTipsServiceRemote, AuthLocalService());
    FlutterSecureStorage.setMockInitialValues({'token': 'aaaa'});
  });

  group('get Tips data', () {
    test('should be return tips successfully', () async {
      when(mockTipsServiceRemote.getTips(
        token: await AuthLocalService().getCredentialToLocal(),
        contentType: contentType,
      )).thenAnswer((_) async => HttpResponse(
          testTipsResponse,
          Response(
            statusCode: 200,
            requestOptions: RequestOptions(),
          )));

      final result = await tipsRepositoryImpl.getTips();
      var matcher = Right<Failure, TipsEntity>(testTipsEntity);
      expect(result.isRight(), equals(matcher.isRight()));
    });

    test('should be return failed with status code >300', () async {
      when(mockTipsServiceRemote.getTips(
        token: await AuthLocalService().getCredentialToLocal(),
        contentType: contentType,
      )).thenThrow(DioException(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: jsonMapFail,
          )));

      final result = await tipsRepositoryImpl.getTips();

      expect(result, equals(const Left(ServerFailure('Invalid Parameter'))));
    });

    test('should be return failed when no internet connection', () async {
      when(mockTipsServiceRemote.getTips(
        token: await AuthLocalService().getCredentialToLocal(),
        contentType: contentType,
      )).thenThrow(const SocketException('Failed to connect to the network'));

      final result = await tipsRepositoryImpl.getTips();

      expect(result, equals(const Left<Failure, TipsEntity>(ConnectionFailure('Failed to connect to the network'))));
    });
  });
}
