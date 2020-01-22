import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/query_search_single_result_model.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class QuerySearchLocalDataSource {
  Future<List<QuerySearchSingleResultModel>> getRecentlySearchedWords();
  Future<void> addNewRecentlySearchedWord(
      QuerySearchSingleResultModel newWordToAdd);
}

const FAVORITED_WORDS = 'FAVORITED_WORDS';

class QuerySearchLocalDataSourceImpl implements QuerySearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  QuerySearchLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<List<QuerySearchSingleResultModel>> getRecentlySearchedWords() {
    List<QuerySearchSingleResultModel> result = [];
    final jsonString = sharedPreferences.getString(FAVORITED_WORDS) ?? [];
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    jsonMap['results']
        .forEach((s) => result.add(QuerySearchSingleResultModel.fromJson(s)));

    return Future.value(result);
  }

  @override
  Future<void> addNewRecentlySearchedWord(
      QuerySearchSingleResultModel newWordToAdd) {
    final initialDataInSharedPreferences =
        sharedPreferences.getString(FAVORITED_WORDS) ?? [];
    Map<String, dynamic> updatedRecentlySearchedWords =
        json.decode(initialDataInSharedPreferences);
    updatedRecentlySearchedWords['results'].add(newWordToAdd);
    final updatedRecentlySearchedWordsEncoded =
        json.encode(updatedRecentlySearchedWords);
    return sharedPreferences.setString(
        FAVORITED_WORDS, updatedRecentlySearchedWordsEncoded);
  }
}
