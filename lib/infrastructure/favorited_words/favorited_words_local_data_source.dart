import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/favorited_words/favorited_words_exception.dart';
import '../../domain/favorited_words/i_favorited_words_local_data_source.dart';
import '../core/daos/word_search_dao.dart';
import '../core/dtos/word_search_dto.dart';

@LazySingleton(as: IFavoritedWordsLocalDataSource)
class FavoritedWordsLocalDataSource implements IFavoritedWordsLocalDataSource {
  final WordSearchDao wordSearchDao;

  FavoritedWordsLocalDataSource({@required this.wordSearchDao});

  @override
  Future<Unit> addFavoritedSearch(WordSearchDto search) async {
    try {
      final existingOrNullWordSearch = await wordSearchDao.findById(search.word.id);
      if (existingOrNullWordSearch == null) {
        await wordSearchDao.insert(WordSearchDto(word: search.word, isFavorited: true));
        return unit;
      } else {
        final updatedObj = existingOrNullWordSearch.copyWith(isFavorited: true);
        await wordSearchDao.update(updatedObj);
        return unit;
      }
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Future<Unit> deleteFavoritedSearch(WordSearchDto search) async {
    try {
      final existingSearch = await wordSearchDao.findById(search.word.id);
      if (existingSearch.lastSearchedAt == null) {
        await wordSearchDao.delete(existingSearch);
        return unit;
      } else {
        final updatedSearch = existingSearch.copyWith(isFavorited: null);
        await wordSearchDao.update(updatedSearch);
        return unit;
      }
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Future<KtList<WordSearchDto>> getFavoritedSearches() async {
    try {
      final favoritedWords = await wordSearchDao.getFavoritedSearches();
      return favoritedWords.toImmutableList();
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }
}
