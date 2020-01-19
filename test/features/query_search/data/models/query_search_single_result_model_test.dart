import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/query_search_single_result_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tQuerySearchSingleResultModel = QuerySearchSingleResultModel(
    id: 'test',
    label: 'test',
  );

  test('should be a subclass of QuerySearchSingleResult entity', () async {
    // assert
    expect(tQuerySearchSingleResultModel, isA<QuerySearchSingleResult>());
  });

  group('fromJson', () {
    test('should return a valid model for an error-free JSON fixture',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('query_search/query_search_single_result.json'));

      // act
      final result = QuerySearchSingleResultModel.fromJson(jsonMap);

      // assert
      expect(result, tQuerySearchSingleResultModel);
    });
  });
}
