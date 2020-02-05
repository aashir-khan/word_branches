import 'dart:convert';

import 'package:dr_words/core/data/shared_preferences_wrapper.dart';
import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferencesWrapper {}

void main() {
  QuerySearchLocalDataSourceImpl dataSource;
  SharedPreferencesWrapper mockSharedPreferencesWrapper;

  setUp(() {
    mockSharedPreferencesWrapper = MockSharedPreferences();

    dataSource = QuerySearchLocalDataSourceImpl(
      sharedPreferencesWrapper: mockSharedPreferencesWrapper,
    );
  });

  group('getRecentlySearchedWords', () {
    List<DictionaryWordModel> tDictionaryWordModelList = [];
    final List<dynamic> jsonList =
        json.decode(fixture('query_search/dictionary_word_recently_searched_words_saved_locally.json'));
    jsonList.forEach((e) {
      return tDictionaryWordModelList.add(DictionaryWordModel.fromJson(e as Map<String, dynamic>));
    });
    test('should return List<DictionaryWordModel> from Box when there are favorited words stored in the box', () async {
      // arrange
      final tLocallyStoredData = fixture('query_search/dictionary_word_recently_searched_words_saved_locally.json');

      final mockSharedPreferences = await mockSharedPreferencesWrapper.instance;
      // arrange
      when(mockSharedPreferences.getString(any)).thenReturn(tLocallyStoredData);

      // act
      final result = await dataSource.getRecentlySearchedWords();

      // assert
      verify(mockSharedPreferences.getString(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER));
      expect(result, equals(tDictionaryWordModelList));
    }, skip: 'TODO: Figure out how to mock mockSharedPreferences.instance');
  });

  group('addNewRecentlySearchedWord', () {
    test(
        'should call Box with the current data upon adding a new recently searched word to a box that already has some data saved',
        () async {
      // arrange
      final initialDataStored = fixture('query_search/dictionary_word_recently_searched_words_saved_locally.json');
      final tNewRecentlySearchedWord = DictionaryWordModel(id: 'test3', label: 'test3');
      // Need to re-encode the string to remove any formatting done in the initial json string acquired from calling `fixture(...)`
      final expectedJsonString = json.encode(
          json.decode(fixture('query_search/dictionary_word_recently_searched_words_saved_locally_more_results.json')));
      when((await mockSharedPreferencesWrapper.instance).getString(any)).thenReturn(initialDataStored);
      // act
      await dataSource.addNewRecentlySearchedWord(tNewRecentlySearchedWord);

      // verify
      verify((await mockSharedPreferencesWrapper.instance)
          .setString(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER, expectedJsonString));
    }, skip: 'TODO: Figure out how to mock mockSharedPreferences.instance');
  });
}
