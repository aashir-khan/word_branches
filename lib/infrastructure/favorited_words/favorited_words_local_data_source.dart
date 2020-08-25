import 'dart:convert';

import 'package:dr_words/domain/favorited_words/favorited_words_exception.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IFavoritedWordsLocalDataSource)
class FavoritedWordsLocalDataSource implements IFavoritedWordsLocalDataSource {
  static const favoritedWordsDbIdentifier = 'favorited_words';

  final SharedPreferences sharedPreferences;

  FavoritedWordsLocalDataSource({@required this.sharedPreferences});

  @override
  Future<DictionaryWordDto> addNewFavoritedWord(DictionaryWordDto word) async {
    try {
      final initialDataStored = sharedPreferences.getStringList(favoritedWordsDbIdentifier) ?? [];

      final favoritedWords =
          initialDataStored.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();

      if (!favoritedWords.any((favoritedWord) => word.id == favoritedWord.id)) {
        favoritedWords.add(word.copyWith(isFavorited: true));
        final updatedFavoritedWordsEncoded = favoritedWords.map((word) => json.encode(word.toJson())).toList();
        await sharedPreferences.setStringList(favoritedWordsDbIdentifier, updatedFavoritedWordsEncoded);
      }

      return word;
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Future<DictionaryWordDto> deleteFavoritedWord(DictionaryWordDto favoritedWord) async {
    try {
      final initialDataStored = sharedPreferences.getStringList(favoritedWordsDbIdentifier) ?? [];

      final favoritedWords =
          initialDataStored.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();

      favoritedWords.remove(favoritedWord);
      final updatedFavoritedWordsEncoded = favoritedWords.map((word) => json.encode(word)).toList();
      await sharedPreferences.setStringList(favoritedWordsDbIdentifier, updatedFavoritedWordsEncoded);

      return favoritedWord;
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Future<KtList<DictionaryWordDto>> getFavoritedWords() async {
    final List<DictionaryWordDto> favoritedWords = [];

    try {
      final unparsedWordsList = sharedPreferences.getStringList(favoritedWordsDbIdentifier) ?? [];

      for (final unparsedWord in unparsedWordsList) {
        favoritedWords.add(DictionaryWordDto.fromJson(json.decode(unparsedWord) as Map<String, dynamic>));
      }

      return favoritedWords.toImmutableList();
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }
}
