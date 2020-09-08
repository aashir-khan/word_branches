import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/word_search.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IFavoritedWordsRepository {
  Future<Either<FavoritedWordsFailure, KtList<WordSearch>>> getFavoritedSearches();
  Future<Either<FavoritedWordsFailure, WordSearch>> addFavoritedSearch(WordSearch search);
  Future<Either<FavoritedWordsFailure, WordSearch>> deleteFavoritedSearch(WordSearch search);
}
