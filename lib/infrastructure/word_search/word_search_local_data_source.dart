import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/word_search/i_word_search_local_data_source.dart';
import 'package:dr_words/infrastructure/core/daos/word_search_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/infrastructure/word_search/word_search_local_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IWordSearchLocalDataSource)
class DictionaryWordSearchLocalDataSource implements IWordSearchLocalDataSource {
  final WordSearchDao wordSearchDao;

  static const recentlySearchedWordsDbIdentifier = 'recently_searched_words';

  DictionaryWordSearchLocalDataSource({
    @required this.wordSearchDao,
  });

  @override
  Future<KtList<WordSearchDto>> getRecentSearches() async {
    try {
      return (await wordSearchDao.getRecentSearches()).toImmutableList();
    } catch (e) {
      throw const WordSearchLocalException.localDatabaseProcessingException();
    }
  }

  @override
  Future<Unit> addRecentSearch(WordSearchDto search) async {
    try {
      final existingOrNullWordSearch = await wordSearchDao.findById(search.word.id);
      if (existingOrNullWordSearch == null) {
        await wordSearchDao.insert(WordSearchDto(word: search.word, lastSearchedAt: DateTime.now().toIso8601String()));
        return unit;
      } else {
        final updatedObj = existingOrNullWordSearch.copyWith(lastSearchedAt: DateTime.now().toIso8601String());
        await wordSearchDao.update(updatedObj);
        return unit;
      }
    } catch (e) {
      throw const WordSearchLocalException.localDatabaseProcessingException();
    }
  }

  @override
  Future<Unit> deleteRecentSearch(WordSearchDto search) async {
    try {
      final existingSearch = await wordSearchDao.findById(search.word.id);
      if (existingSearch.isFavorited != null) {
        final updatedSearch = existingSearch.copyWith(lastSearchedAt: null);
        await wordSearchDao.update(updatedSearch);
        return unit;
      }
      await wordSearchDao.delete(existingSearch);
      return unit;
    } catch (e) {
      throw const WordSearchLocalException.localDatabaseProcessingException();
    }
  }
}
