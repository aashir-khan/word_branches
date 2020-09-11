import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../infrastructure/core/dtos/dictionary_word_dto.dart';
import '../../infrastructure/core/dtos/word_search_dto.dart';
import '../../infrastructure/word_search/dtos/headword_entry_dto.dart';

abstract class IWordSearchLocalDataSource {
  Future<KtList<WordSearchDto>> getRecentSearches();
  Future<Unit> addRecentSearch(DictionaryWordDto search);
  Future<Unit> deleteRecentSearch(WordSearchDto search);
  Future<WordSearchDto> mapWordAndEntriesToSearch(DictionaryWordDto word, KtList<HeadwordEntryDto> results);
}
