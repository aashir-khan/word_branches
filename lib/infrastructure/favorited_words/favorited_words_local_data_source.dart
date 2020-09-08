import 'package:dr_words/domain/favorited_words/favorited_words_exception.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'package:dr_words/infrastructure/core/daos/word_search_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IFavoritedWordsLocalDataSource)
class FavoritedWordsLocalDataSource implements IFavoritedWordsLocalDataSource {
  static const favoritedWordsDbIdentifier = 'favorited_words';

  final WordSearchDao wordSearchDao;

  FavoritedWordsLocalDataSource({@required this.wordSearchDao});

  @override
  Future<WordSearchDto> addFavoritedSearch(WordSearchDto search) async {
    try {
      final existingOrNullWordSearch = await wordSearchDao.findById(search.word.id);
      if (existingOrNullWordSearch == null) {
        final insertedDto = WordSearchDto(word: search.word);
        await wordSearchDao.insert(WordSearchDto(word: search.word, isFavorited: true));
        return insertedDto;
      } else {
        final updatedObj = existingOrNullWordSearch.copyWith(isFavorited: true);
        await wordSearchDao.update(updatedObj);
        return updatedObj;
      }
    } catch (e) {
      throw const FavoritedWordsException.localDatabaseProcessingException();
    }
  }

  @override
  Future<WordSearchDto> deleteFavoritedSearch(WordSearchDto search) async {
    try {
      final existingSearch = await wordSearchDao.findById(search.word.id);
      if (existingSearch.lastSearchedAt != null) {
        final updatedSearch = existingSearch.copyWith(isFavorited: null);
        await wordSearchDao.update(updatedSearch);
        return updatedSearch;
      } else {
        await wordSearchDao.delete(existingSearch);
        return existingSearch;
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
