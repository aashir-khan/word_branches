import 'dart:convert';

import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_local_data_source.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_local_exception.dart';
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
    final List<DictionaryWordDto> results = [];
    try {
      final unparsedWordsList = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

      for (final unparsedWord in unparsedWordsList) {
        results.add(DictionaryWordDto.fromJson(json.decode(unparsedWord) as Map<String, dynamic>));
      }

      return results.toImmutableList();
    } catch (e) {
      throw const DictionaryWordSearchLocalException.localDatabaseProcessingException();
    }
  }

  @override
  Future<DictionaryWordDto> addNewRecentlySearchedWord(DictionaryWordDto newWordToAdd) async {
    try {
      final initialDataStored = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

      final List<DictionaryWordDto> dictionaryWords =
          initialDataStored.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();

      if (!dictionaryWords.contains(newWordToAdd)) {
        dictionaryWords.add(newWordToAdd);
        final updatedRecentlySearchedWordsEncoded = dictionaryWords.map((word) => json.encode(word.toJson())).toList();
        await sharedPreferences.setStringList(recentlySearchedWordsDbIdentifier, updatedRecentlySearchedWordsEncoded);
      }

      return newWordToAdd;
    } catch (e) {
      throw const DictionaryWordSearchLocalException.localDatabaseProcessingException();
    }
  }

  @override
  Future<DictionaryWordDto> deleteRecentlySearchedWod(DictionaryWordDto wordToDelete) async {
    try {
      final initialDataStored = sharedPreferences.getStringList(recentlySearchedWordsDbIdentifier) ?? [];

      final List<DictionaryWordDto> dictionaryWords =
          initialDataStored.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();
      dictionaryWords.remove(wordToDelete);
      final updatedRecentlySearchedWordsEncoded = dictionaryWords.map((word) => json.encode(word.toJson())).toList();
      await sharedPreferences.setStringList(recentlySearchedWordsDbIdentifier, updatedRecentlySearchedWordsEncoded);

      return wordToDelete;
    } catch (e) {
      throw const DictionaryWordSearchLocalException.localDatabaseProcessingException();
    }
  }
}
