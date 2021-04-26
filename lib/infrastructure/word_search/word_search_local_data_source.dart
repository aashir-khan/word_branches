import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable_micropackages/injectable_micropackages.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/word_search/i_word_search_local_data_source.dart';
import '../core/daos/word_search_dao.dart';
import '../core/dtos/dictionary_word_dto.dart';
import '../core/dtos/word_search_dto.dart';
import 'dtos/headword_entry_dto.dart';
import 'word_search_local_exception.dart';

@LazySingleton(as: IWordSearchLocalDataSource)
class DictionaryWordSearchLocalDataSource implements IWordSearchLocalDataSource {
  final WordSearchDao wordSearchDao;

  DictionaryWordSearchLocalDataSource({
    required this.wordSearchDao,
  });

  @override
  Future<KtList<WordSearchDto>> getRecentSearches() async {
    try {
      final results = await wordSearchDao.getRecentSearches();
      return results.toImmutableList();
    } catch (e) {
      throw const WordSearchLocalException.localDatabaseProcessingException();
    }
  }

  @override
  Future<Unit> addRecentSearch(DictionaryWordDto word) async {
    try {
      final existingOrNullWordSearch = await wordSearchDao.findById(word.id);
      if (existingOrNullWordSearch == null) {
        await wordSearchDao.insert(WordSearchDto(word: word, lastSearchedAt: DateTime.now().toIso8601String()));
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
      if (existingSearch.isFavorited != true) {
        await wordSearchDao.delete(existingSearch);
        return unit;
      } else {
        final updatedSearch = existingSearch.copyWith(lastSearchedAt: null);
        await wordSearchDao.update(updatedSearch);
        return unit;
      }
    } catch (e) {
      throw const WordSearchLocalException.localDatabaseProcessingException();
    }
  }

  @override
  Future<WordSearchDto> mapWordAndEntriesToSearch(DictionaryWordDto word, KtList<HeadwordEntryDto> results) async {
    final _results = results.asList();
    try {
      final existingOrNullWordSearch = await wordSearchDao.findById(word.id);
      if (existingOrNullWordSearch == null) {
        final createdSearch = WordSearchDto(word: word, results: _results);
        await wordSearchDao.insert(createdSearch);
        return createdSearch;
      } else {
        final updatedSearch = existingOrNullWordSearch.copyWith(results: _results);
        await wordSearchDao.update(updatedSearch);
        return updatedSearch;
      }
    } catch (e) {
      throw const WordSearchLocalException.localDatabaseProcessingException();
    }
  }
}
