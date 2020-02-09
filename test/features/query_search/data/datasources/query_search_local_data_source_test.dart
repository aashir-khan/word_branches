import 'dart:convert';

import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  QuerySearchLocalDataSourceImpl dataSource;
  SharedPreferences mockSharedPreferences;

  setUpAll(() async {
    await configureInjection(Env.test);

    mockSharedPreferences = getIt<SharedPreferences>();
    dataSource = getIt<QuerySearchLocalDataSourceImpl>();
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

      // arrange
      when(mockSharedPreferences.getString(any)).thenReturn(tLocallyStoredData);

      // act
      final result = await dataSource.getRecentlySearchedWords();

      // assert
      verify(mockSharedPreferences.getString(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER));
      expect(result, equals(tDictionaryWordModelList));
    });
  });

  group('addNewRecentlySearchedWord', () {
    test(
        'should call SharedPreferences with the current data upon adding a new recently searched word to a box that already has some data saved',
        () async {
      // arrange
      final initialDataStored = fixture('query_search/dictionary_word_recently_searched_words_saved_locally.json');
      final tNewRecentlySearchedWord = DictionaryWordModel(id: 'test3', label: 'test3');

      // Need to re-encode the string to remove any formatting done in the initial json string acquired from calling `fixture(...)`
      final expectedJsonString = json.encode(
          json.decode(fixture('query_search/dictionary_word_recently_searched_words_saved_locally_more_results.json')));
      when(mockSharedPreferences.getString(any)).thenReturn(initialDataStored);

      // act
      await dataSource.addNewRecentlySearchedWord(tNewRecentlySearchedWord);

      // verify
      verify(mockSharedPreferences.setString(
          QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER, expectedJsonString));
    });
  });
}
