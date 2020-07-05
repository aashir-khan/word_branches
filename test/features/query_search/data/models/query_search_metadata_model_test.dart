import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_metadata.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tDictionaryWordSearchMetadataModel = DictionaryWordSearchMetadataModel(
    limit: 1,
    offset: 0,
    total: 1,
  );

  test('should be a subclass of DictionaryWordSearchMetadata entity', () async {
    // assert
    expect(tDictionaryWordSearchMetadataModel, isA<DictionaryWordSearchMetadata>());
  });

  group('fromJson', () {
    test('should return a valid model for an error-free JSON fixture', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('query_search/query_search_metadata.json')) as Map<String, dynamic>;

      // act
      final result = DictionaryWordSearchMetadataModel.fromJson(jsonMap);

      // assert
      expect(result, tDictionaryWordSearchMetadataModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () async {
      // act
      final result = tDictionaryWordSearchMetadataModel.toJson();

      // assert
      final expectedJsonMap = {
        "limit": 1,
        "offset": 0,
        "total": 1,
      };

      expect(result, expectedJsonMap);
    });
  });
}
