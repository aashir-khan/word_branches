import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_metadata.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tQuerySearchMetadataModel = QuerySearchMetadataModel(
    limit: 1,
    offset: 0,
    total: 1,
  );

  test('should be a subclass of QuerySearchMetadata entity', () async {
    // assert
    expect(tQuerySearchMetadataModel, isA<QuerySearchMetadata>());
  });

  group('fromJson', () {
    test('should return a valid model for an error-free JSON fixture',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('query_search/query_search_metadata.json'));

      // act
      final result = QuerySearchMetadataModel.fromJson(jsonMap);

      // assert
      expect(result, tQuerySearchMetadataModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () async {
      // act
      final result = tQuerySearchMetadataModel.toJson();

      // assert
      final expectedJsonMap = {
        "limit": 1,
        "offset": 0,
        "total": 0,
      };

      expect(result, expectedJsonMap);
    });
  });
}
