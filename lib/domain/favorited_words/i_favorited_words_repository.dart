import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../core/entities/word_search.dart';
import 'favorited_words_failure.dart';

abstract class IFavoritedWordsRepository {
  Future<Either<FavoritedWordsFailure, KtList<WordSearch>>> getFavoritedSearches();
  Future<Either<FavoritedWordsFailure, Unit>> addFavoritedSearch(WordSearch search);
  Future<Either<FavoritedWordsFailure, Unit>> deleteFavoritedSearch(WordSearch search);
}
