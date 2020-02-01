import 'dart:convert';

import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  QuerySearchLocalDataSourceImpl dataSource;
  MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = QuerySearchLocalDataSourceImpl(
        sharedPreferences: mockSharedPreferences);
  });

  group('getRecentlySearchedWords', () {
    List<DictionaryWordModel> tDictionaryWordModelList = [];
    final Map<String, dynamic> jsonList = json.decode(fixture(
        'query_search/dictionary_word_recently_searched_words_saved_locally.json'));
    jsonList["results"].forEach((e) {
      return tDictionaryWordModelList.add(DictionaryWordModel.fromJson(e));
    });
    test(
        'should return List<DictionaryWordModel> from SharedPreferences when there are favorited words stored in the preferences',
        () async {
      var tLocallyStoredData = fixture(
          'query_search/dictionary_word_recently_searched_words_saved_locally.json');

      // arrange
      when(mockSharedPreferences.getString(any)).thenReturn(tLocallyStoredData);

      // act
      final result = await dataSource.getRecentlySearchedWords();

      // assert
      verify(mockSharedPreferences.getString(FAVORITED_WORDS));
      expect(result, equals(tDictionaryWordModelList));
    });
  });

  group('addNewRecentlySearchedWord', () {
    test(
        'should call SharedPreferences with the current data upon addiong a new recently searched word',
        () async {
      // arrange
      final initialDataInSharedPreferences = fixture(
          'query_search/dictionary_word_recently_searched_words_saved_locally.json');
      final tNewRecentlySearchedWord =
          DictionaryWordModel(id: 'test3', label: 'test3');
      // Need to re-encode the string to remove any formatting done in the initial json string acquired from calling `fixture(...)`
      final expectedJsonString = json.encode(json.decode(fixture(
          'query_search/dictionary_word_recently_searched_words_saved_locally_more_results.json')));
      when(mockSharedPreferences.getString(any))
          .thenReturn(initialDataInSharedPreferences);
      // act
      await dataSource.addNewRecentlySearchedWord(tNewRecentlySearchedWord);

      // assert
      verify(
          mockSharedPreferences.setString(FAVORITED_WORDS, expectedJsonString));
    });
  });
}
