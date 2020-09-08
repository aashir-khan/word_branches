import 'package:dr_words/domain/core/entities/word_search.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_exception.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IFavoritedWordsRepository)
class FavoritedWordsRepository implements IFavoritedWordsRepository {
  final IFavoritedWordsLocalDataSource localDataSource;

  FavoritedWordsRepository({@required this.localDataSource});

  @override
  Future<Either<FavoritedWordsFailure, Unit>> addFavoritedSearch(WordSearch search) async {
    try {
      await localDataSource.addFavoritedSearch(WordSearchDto.fromDomain(search));
      return Right(unit);
    } on FavoritedWordsException catch (e) {
      return Left(handleException(e));
    }
  }

  @override
  Future<Either<FavoritedWordsFailure, Unit>> deleteFavoritedSearch(WordSearch search) async {
    try {
      await localDataSource.deleteFavoritedSearch(WordSearchDto.fromDomain(search));
      return Right(unit);
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
