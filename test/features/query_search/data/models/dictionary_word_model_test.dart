import 'dart:convert';

import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tDictionaryWordModel = DictionaryWordModel(
    id: 'test',
    label: 'test',
  );

  test('should be a subclass of DictionaryWord entity', () async {
    // assert
    expect(tDictionaryWordModel, isA<DictionaryWord>());
  });

  group('fromJson', () {
    test('should return a valid model for an error-free JSON fixture', () async {
      // arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('core/dictionary_word.json')) as Map<String, dynamic>;

      // act
      final result = DictionaryWordModel.fromJson(jsonMap);

      // assert
      expect(result, tDictionaryWordModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () async {
      // act
      final result = tDictionaryWordModel.toJson();

      // assert
      final expectedJsonMap = {
        "id": 'test',
        "label": 'test',
      };

      expect(result, expectedJsonMap);
    });
  });
}
