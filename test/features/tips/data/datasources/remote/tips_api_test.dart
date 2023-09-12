import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/tips/tips.dart';

import '../../../../../json_reader.dart';
import '../../../helpers/tips_test_helper.mocks.dart';

void main() {
  late MockTipsServiceRemote mockTipsServiceRemote;

  final Map<String, dynamic> jsonMapSuccess = json
      .decode(readJson('features/tips/helpers/dummy_data/tips_response.json'));
  final Map<String, dynamic> jsonMapFail = json.decode(
      readJson('features/tips/helpers/dummy_data/tips_response_fail.json'));
  setUp(() {
    mockTipsServiceRemote = MockTipsServiceRemote();
  });

  group('Get Tips', () {
    test('Get Tips should be return TipsResponse when status code 200',
        () async {
      when(mockTipsServiceRemote.getTips(
              token: 'aaa', contentType: contentType))
          .thenAnswer((_) async => HttpResponse(
              TipsResponse.fromJson(jsonMapSuccess),
              Response(
                  data: jsonMapSuccess,
                  requestOptions: RequestOptions(data: jsonMapSuccess),
                  statusCode: 200)));

      final result = await mockTipsServiceRemote.getTips(
          token: 'aaa', contentType: contentType);

      expect(result.data, isA<TipsResponse>());
    });

    test('Get Tips should be return null when status code >300', () async {
      when(mockTipsServiceRemote.getTips(
              token: 'aaa', contentType: contentType))
          .thenAnswer((_) async => HttpResponse(
              TipsResponse.fromJson(jsonMapFail),
              Response(
                statusCode: 400,
                requestOptions: RequestOptions(),
              )));
      final result = DioException(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 400,
            data: jsonMapFail,
          ));

      expect(result, isA<DioException>());
    });
  });
}
