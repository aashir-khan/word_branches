import 'dart:convert';

import 'package:dr_words/core/data/shared_preferences_wrapper.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(QuerySearchLocalDataSourceImpl)
@lazySingleton
@injectable
abstract class QuerySearchLocalDataSource {
  Future<List<DictionaryWordModel>> getRecentlySearchedWords();
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd);
}

class QuerySearchLocalDataSourceImpl implements QuerySearchLocalDataSource {
  final SharedPreferencesWrapper sharedPreferencesWrapper;

  static const FAVORITED_WORDS_DB_IDENTIFIER = 'favorited_words';

  QuerySearchLocalDataSourceImpl({@required this.sharedPreferencesWrapper});

  @override
  Future<List<DictionaryWordModel>> getRecentlySearchedWords() async {
    List<DictionaryWordModel> result = [];
    final jsonString = (await sharedPreferencesWrapper.instance).getString(FAVORITED_WORDS_DB_IDENTIFIER) ?? '';
    if (jsonString.isEmpty) {
      result = [];
    } else {
      List<dynamic> jsonMap = json.decode(jsonString);
      jsonMap.forEach((s) => result.add(DictionaryWordModel.fromJson(s)));
    }

    return Future.value(result);
  }

  @override
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd) async {
    final initialDataInSharedPreferences =
        (await sharedPreferencesWrapper.instance).getString(FAVORITED_WORDS_DB_IDENTIFIER) ?? '[]';
    List<dynamic> updatedRecentlySearchedWords = json.decode(initialDataInSharedPreferences);
    updatedRecentlySearchedWords.add(newWordToAdd);
    final updatedRecentlySearchedWordsEncoded = json.encode(updatedRecentlySearchedWords);
    return await (await sharedPreferencesWrapper.instance)
        .setString(FAVORITED_WORDS_DB_IDENTIFIER, updatedRecentlySearchedWordsEncoded);
  }
}
