import 'package:dr_words/domain/favorited_words/favorited_words_exception.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IFavoritedWordsRepository)
class FavoritedWordsRepository implements IFavoritedWordsRepository {
  final IFavoritedWordsLocalDataSource localDataSource;

  FavoritedWordsRepository({@required this.localDataSource});

  @override
  Future<Either<FavoritedWordsFailure, DictionaryWord>> addFavoritedWord(DictionaryWord word) async {
    try {
      final savedFavoritedWord = await localDataSource.addNewFavoritedWord(DictionaryWordDto.fromDomain(word));
      return Right(savedFavoritedWord.toDomain());
    } on FavoritedWordsException catch (e) {
      return Left(handleException(e));
    }
  }

  @override
  Future<Either<FavoritedWordsFailure, DictionaryWord>> deleteFavoritedWord(DictionaryWord favoritedWord) async {
    try {
      final deletedFavoritedWord =
          await localDataSource.deleteFavoritedWord(DictionaryWordDto.fromDomain(favoritedWord));
      return Right(deletedFavoritedWord.toDomain());
    } on FavoritedWordsException catch (e) {
      return Left(handleException(e));
    }
  }

  @override
  Future<Either<FavoritedWordsFailure, KtList<DictionaryWord>>> getFavoritedWords() async {
    try {
      final favoritedWords = await localDataSource.getFavoritedWords();
      final domainFavoritedWords = favoritedWords.map((word) => word.toDomain());
      return Right(domainFavoritedWords);
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
