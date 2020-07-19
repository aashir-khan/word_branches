import 'dart:convert';

import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_local_data_source.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IDictionaryWordSearchLocalDataSource)
class DictionaryWordSearchLocalDataSource implements IDictionaryWordSearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  static const recentlySearchedWordsDbIdentifier = 'recently_searched_words';

  DictionaryWordSearchLocalDataSource({@required this.sharedPreferences});

  @override
  Future<KtList<DictionaryWordDto>> getRecentlySearchedWords() async {
    final List<DictionaryWordDto> result = [];
    final unparsedWordsList = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

    if (unparsedWordsList.isNotEmpty) {
      final List<DictionaryWordDto> results =
          unparsedWordsList.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();
      return results.toImmutableList();
    }

    return Future.value(result.toImmutableList());
  }

  @override
  Future<DictionaryWordDto> addNewRecentlySearchedWord(DictionaryWordDto newWordToAdd) async {
    final initialDataInSharedPreferences = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

    final List<DictionaryWordDto> initialWordsDtos = initialDataInSharedPreferences
        .map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>))
        .toList();

    if (!initialWordsDtos.contains(newWordToAdd)) {
      initialWordsDtos.add(newWordToAdd);
      final updatedRecentlySearchedWordsEncoded = initialWordsDtos.map((word) => json.encode(word.toJson())).toList();
      await sharedPreferences.setStringList(recentlySearchedWordsDbIdentifier, updatedRecentlySearchedWordsEncoded);
    }

    return Future.value(newWordToAdd);
  }
}
