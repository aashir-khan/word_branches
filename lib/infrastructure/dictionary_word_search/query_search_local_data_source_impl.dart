import 'dart:convert';

import 'package:dr_words/domain/dictionary_word_search/query_search_local_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/models/dictionary_word_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: QuerySearchLocalDataSource)
class QuerySearchLocalDataSourceImpl implements QuerySearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  static const recentlySearchedWordsDbIdentifier = 'recently_searched_words';

  QuerySearchLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<List<DictionaryWordDto>> getRecentlySearchedWords() async {
    List<DictionaryWordDto> result = [];
    final unparsedWordsList = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

    if (unparsedWordsList.isEmpty) {
      result = [];
    } else {
      final List<DictionaryWordDto> results =
          unparsedWordsList.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();
      return results;
    }

    return Future.value(result);
  }

  @override
  Future<DictionaryWordDto> addNewRecentlySearchedWord(DictionaryWordDto newWordToAdd) async {
    final initialDataInSharedPreferences = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

    final List<DictionaryWordDto> initialWordsDtos = initialDataInSharedPreferences
        .map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>))
        .toList();

    initialWordsDtos.add(newWordToAdd);
    final updatedRecentlySearchedWordsEncoded = initialWordsDtos.map((word) => json.encode(word.toJson())).toList();
    await sharedPreferences.setStringList(recentlySearchedWordsDbIdentifier, updatedRecentlySearchedWordsEncoded);
    return Future.value(newWordToAdd);
  }
}
