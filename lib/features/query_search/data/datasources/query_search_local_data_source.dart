import 'dart:convert';

import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class QuerySearchLocalDataSource {
  Future<List<DictionaryWordModel>> getRecentlySearchedWords();
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd);
}

const FAVORITED_WORDS = 'FAVORITED_WORDS';

class QuerySearchLocalDataSourceImpl implements QuerySearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  QuerySearchLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<List<DictionaryWordModel>> getRecentlySearchedWords() {
    List<DictionaryWordModel> result = [];
    final jsonString = sharedPreferences.getString(FAVORITED_WORDS) ?? [];
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    jsonMap['results']
        .forEach((s) => result.add(DictionaryWordModel.fromJson(s)));

    return Future.value(result);
  }

  @override
  Future<bool> addNewRecentlySearchedWord(
      DictionaryWordModel newWordToAdd) async {
    final initialDataInSharedPreferences =
        sharedPreferences.getString(FAVORITED_WORDS) ?? [];
    Map<String, dynamic> updatedRecentlySearchedWords =
        json.decode(initialDataInSharedPreferences);
    updatedRecentlySearchedWords['results'].add(newWordToAdd);
    final updatedRecentlySearchedWordsEncoded =
        json.encode(updatedRecentlySearchedWords);
    return await sharedPreferences.setString(
        FAVORITED_WORDS, updatedRecentlySearchedWordsEncoded);
  }
}
