import 'dart:convert';

import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: QuerySearchLocalDataSource)
class QuerySearchLocalDataSourceImpl implements QuerySearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  static const faoritedWordsDbIdentifier = 'favorited_words';

  QuerySearchLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<List<DictionaryWordModel>> getRecentlySearchedWords() async {
    List<DictionaryWordModel> result = [];
    final jsonString = sharedPreferences.getString(faoritedWordsDbIdentifier) ?? '';
    if (jsonString.isEmpty) {
      result = [];
    } else {
      final List<dynamic> jsonMap = json.decode(jsonString) as List<dynamic>;

      for (int i = 0; i < jsonMap.length; i++) {
        final dictionaryWordModel = jsonMap[i];
        result.add(DictionaryWordModel.fromJson(dictionaryWordModel as Map<String, dynamic>));
      }
    }

    return Future.value(result);
  }

  @override
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd) async {
    final initialDataInSharedPreferences = sharedPreferences.getString(faoritedWordsDbIdentifier) ?? '[]';
    final List<dynamic> updatedRecentlySearchedWords = json.decode(initialDataInSharedPreferences) as List<dynamic>;
    updatedRecentlySearchedWords.add(newWordToAdd);
    final updatedRecentlySearchedWordsEncoded = json.encode(updatedRecentlySearchedWords);
    return sharedPreferences.setString(faoritedWordsDbIdentifier, updatedRecentlySearchedWordsEncoded);
  }
}
