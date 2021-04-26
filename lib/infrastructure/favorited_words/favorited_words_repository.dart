import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable_micropackages/injectable_micropackages.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/entities/word_search.dart';
import '../../domain/favorited_words/favorited_words_exception.dart';
import '../../domain/favorited_words/favorited_words_failure.dart';
import '../../domain/favorited_words/i_favorited_words_local_data_source.dart';
import '../../domain/favorited_words/i_favorited_words_repository.dart';
import '../core/dtos/word_search_dto.dart';

@LazySingleton(as: IFavoritedWordsRepository)
class FavoritedWordsRepository implements IFavoritedWordsRepository {
  final IFavoritedWordsLocalDataSource localDataSource;

  FavoritedWordsRepository({@required this.localDataSource});

  @override
  Future<Either<FavoritedWordsFailure, Unit>> addFavoritedSearch(WordSearch search) async {
    try {
      await localDataSource.addFavoritedSearch(WordSearchDto.fromDomain(search));
      return const Right(unit);
    } on FavoritedWordsException catch (e) {
      return Left(handleException(e));
    }
  }

  @override
  Future<Either<FavoritedWordsFailure, Unit>> deleteFavoritedSearch(WordSearch search) async {
    try {
      await localDataSource.deleteFavoritedSearch(WordSearchDto.fromDomain(search));
      return const Right(unit);
    } on FavoritedWordsException catch (e) {
      return Left(handleException(e));
    }
  }

  @override
  Future<Either<FavoritedWordsFailure, KtList<WordSearch>>> getFavoritedSearches() async {
    try {
      final favoritedWords = await localDataSource.getFavoritedSearches();
      final domainFavoritedSearches = favoritedWords.map((word) => word.toDomain());
      return Right(domainFavoritedSearches);
    } on FavoritedWordsException catch (e) {
      return Left(handleException(e));
    }
  }
}

FavoritedWordsFailure handleException(FavoritedWordsException exception) {
  return exception.when(
    localDatabaseProcessingException: () => const FavoritedWordsFailure.localDatabaseProcessingFailure(),
  );
}
