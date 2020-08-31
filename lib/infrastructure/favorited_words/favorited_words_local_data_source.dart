import 'package:dr_words/domain/favorited_words/favorited_words_exception.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'package:dr_words/infrastructure/core/database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IFavoritedWordsLocalDataSource)
class FavoritedWordsLocalDataSource implements IFavoritedWordsLocalDataSource {
  static const favoritedWordsDbIdentifier = 'favorited_words';

  final SharedPreferences sharedPreferences;
  // final AppDatabase database;

  FavoritedWordsLocalDataSource({@required this.sharedPreferences});

  @override
  Future<DictionaryWordDto> addNewFavoritedWord(DictionaryWordDto word) async {
    try {
      final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
      await database.dictionaryWordDao.insertDictionaryWord(word);
      return word;
      // final initialDataStored = sharedPreferences.getStringList(favoritedWordsDbIdentifier) ?? [];

      // final favoritedWords =
      //     initialDataStored.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();

      // if (!favoritedWords.any((favoritedWord) => word.id == favoritedWord.id)) {
      //   favoritedWords.add(DictionaryWordDto(id: word.id, label: word.label, isFavorited: true));
      //   final updatedFavoritedWordsEncoded = favoritedWords.map((word) => json.encode(word.toJson())).toList();
      //   await sharedPreferences.setStringList(favoritedWordsDbIdentifier, updatedFavoritedWordsEncoded);
      // }

      // return word;
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Future<DictionaryWordDto> deleteFavoritedWord(DictionaryWordDto favoritedWord) async {
    try {
      final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
      await database.dictionaryWordDao.deleteDictionaryWord(favoritedWord);
      return favoritedWord;
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Stream<KtList<DictionaryWordDto>> getFavoritedWords() async* {
    // final List<DictionaryWordDto> favoritedWords = [];

    try {
      final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
      final rawStream = database.dictionaryWordDao.watchAllFavoritedWords();
      yield* rawStream.map((event) => event.toImmutableList());
      //   final unparsedWordsList = sharedPreferences.getStringList(favoritedWordsDbIdentifier) ?? [];

      //   for (final unparsedWord in unparsedWordsList) {
      //     favoritedWords.add(DictionaryWordDto.fromJson(json.decode(unparsedWord) as Map<String, dynamic>));
      //   }

      //   return favoritedWords.toImmutableList();

    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }
}
