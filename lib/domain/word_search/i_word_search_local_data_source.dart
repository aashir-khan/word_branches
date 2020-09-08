import 'package:dartz/dartz.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IWordSearchLocalDataSource {
  Future<KtList<WordSearchDto>> getRecentSearches();
  Future<Unit> addRecentSearch(WordSearchDto search);
  Future<Unit> deleteRecentSearch(WordSearchDto search);
}
