import 'package:dartz/dartz.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IFavoritedWordsLocalDataSource {
  Future<KtList<WordSearchDto>> getFavoritedSearches();
  Future<Unit> addFavoritedSearch(WordSearchDto search);
  Future<Unit> deleteFavoritedSearch(WordSearchDto search);
}
