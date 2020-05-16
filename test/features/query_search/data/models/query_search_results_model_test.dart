import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tQuerySearchMetadata = QuerySearchMetadataModel(limit: 1, offset: 0, total: 1);
  const tDictionaryWord1 = DictionaryWordModel(id: 'test', label: 'test');
  const tDictionaryWord2 = DictionaryWordModel(id: 'test2', label: 'test2');

  final tDictionaryWordList = [tDictionaryWord1, tDictionaryWord2];

  final tQuerySearchResultsModel = QuerySearchResultsModel(
    metadata: tQuerySearchMetadata,
    results: tDictionaryWordList,
  );

  test('should be a subclass of QuerySearchResults entity', () async {
    // assert
    expect(tQuerySearchResultsModel, isA<QuerySearchResults>());
  });

  group('fromJson', () {
    test('should return a valid model for an error-free JSON fixture', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('query_search/query_search_results.json')) as Map<String, dynamic>;

      // act
      final result = QuerySearchResultsModel.fromJson(jsonMap);

      // assert
      expect(result, tQuerySearchResultsModel);
    });
  });
}
