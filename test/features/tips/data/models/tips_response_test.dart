import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:template_clean_architecture/features/tips/data/models/models.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';

import '../../helpers/constanst.dart';
import '../../../../json_reader.dart';

void main() {

  test('should be a subclass of Tips Entity', () async {
    expect(testTipsResponse.toEntity(), isA<TipsEntity>());
  });

  test(
    'should return a valid model from json',
    () async {
      final Map<String, dynamic> jsonMap = json.decode(
          readJson('features/tips/helpers/dummy_data/tips_response.json'));

      final result = TipsResponse.fromJson(jsonMap);

      expect(result, isA<TipsResponse>());
    },
  );
}
