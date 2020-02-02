import 'dart:convert';

import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHive extends Mock implements Box<List<DictionaryWordModel>> {}

void main() {
  QuerySearchLocalDataSourceImpl dataSource;
  Box<List<DictionaryWordModel>> mockHiveBox;

  setUp(() {
    mockHiveBox = MockHive();

    dataSource = QuerySearchLocalDataSourceImpl(
      hiveBox: mockHiveBox,
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
      when(mockHiveBox.get(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER,
              defaultValue: anyNamed('defaultValue')))
          .thenReturn(tDictionaryWordModelList);

      // act
      final result = await dataSource.getRecentlySearchedWords();

      // assert
      verify(mockHiveBox.get(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER, defaultValue: []));
      expect(result, equals(tDictionaryWordModelList));
    });
  });

  group('addNewRecentlySearchedWord', () {
    List<DictionaryWordModel> initialDataStored = [];
    List<DictionaryWordModel> toSaveNewData = [];

    final List<dynamic> initialDataUncasted =
        json.decode(fixture('query_search/dictionary_word_recently_searched_words_saved_locally.json'));
    final List<dynamic> toSaveNewDataUncasted =
        json.decode(fixture('query_search/dictionary_word_recently_searched_words_saved_locally_more_results.json'));

    initialDataUncasted.forEach((e) {
      initialDataStored.add(DictionaryWordModel.fromJson(e as Map<String, dynamic>));
    });

    toSaveNewDataUncasted.forEach((e) {
      toSaveNewData.add(DictionaryWordModel.fromJson(e as Map<String, dynamic>));
    });

    test(
        'should call Box with the current data upon adding a new recently searched word to a box that already has some data saved',
        () async {
      // arrange
      when(mockHiveBox.get(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER)).thenReturn(initialDataStored);

      // act
      await dataSource.addNewRecentlySearchedWord(toSaveNewData.last);

      // verify
      verify(mockHiveBox.put(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER, toSaveNewData));
    });

    test('should call Box with the current data upon adding a new recently searched word to an initially empty box',
        () async {
      // arrange
      when(mockHiveBox.put(any, any)).thenReturn(null);
      when(mockHiveBox.get(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER,
              defaultValue: anyNamed('defaultValue')))
          .thenReturn([]);

      // act
      await dataSource.addNewRecentlySearchedWord(toSaveNewData.last);

      // assert
      verify(mockHiveBox.put(QuerySearchLocalDataSourceImpl.FAVORITED_WORDS_DB_IDENTIFIER, [toSaveNewData.last]));
    });
  });
}
