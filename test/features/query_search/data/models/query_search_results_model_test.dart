import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_single_result_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tQuerySearchMetadata =
      QuerySearchMetadataModel(limit: 1, offset: 0, total: 1);
  final tQuerySearchSingleResult1 =
      QuerySearchSingleResultModel(id: 'test', label: 'test');
  final tQuerySearchSingleResult2 =
      QuerySearchSingleResultModel(id: 'test2', label: 'test2');

  final tQuerySearchSingleResultList = [
    tQuerySearchSingleResult1,
    tQuerySearchSingleResult2
  ];

  final tQuerySearchResultsModel = QuerySearchResultsModel(
    metadata: tQuerySearchMetadata,
    results: tQuerySearchSingleResultList,
  );

  test('should be a subclass of QuerySearchResults entity', () async {
    // assert
    expect(tQuerySearchResultsModel, isA<QuerySearchResults>());
  });

  group('fromJson', () {
    test('should return a valid model for an error-free JSON fixture',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('query_search/query_search_results.json'));

      // act
      final result = QuerySearchResultsModel.fromJson(jsonMap);

      // assert
      expect(result, tQuerySearchResultsModel);
    });
  });
}
