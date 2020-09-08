import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/word_search.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/domain/word_search/i_word_search_local_data_source.dart';
import 'package:dr_words/domain/word_search/word_search_local_failure.dart';
import 'package:dr_words/domain/word_search/i_word_search_remote_data_source.dart';
import 'package:dr_words/domain/word_search/word_search_remote_failure.dart';
import 'package:dr_words/domain/word_search/i_word_search_repository.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/infrastructure/word_search/word_search_local_exception.dart';
import 'package:dr_words/infrastructure/word_search/word_search_remote_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IWordSearchRepository)
class WordSearchRepository implements IWordSearchRepository {
  final IWordSearchRemoteDataSource remoteDataSource;
  final IWordSearchLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  WordSearchRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<WordSearchRemoteFailure, KtList<WordSearch>>> getWordSearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        final wordsDto = await remoteDataSource.getWordSearchResults(query: query);
        final domainWords = wordsDto.asList().map((dto) => dto.toDomain()).toList();
        return Right(domainWords.toImmutableList());
      } on WordSearchRemoteException catch (e) {
        return e.when(
          serverError: () => const Left(WordSearchRemoteFailure.serverError()),
          unexpected: () => const Left(WordSearchRemoteFailure.unexpected()),
        );
      }
    } else {
      return const Left(WordSearchRemoteFailure.networkError());
    }
  }

  @override
  Future<Either<WordSearchLocalFailure, KtList<WordSearch>>> getRecentlySearchedWords() async {
    try {
      final wordsDto = await localDataSource.getRecentSearches();
      return Right(wordsDto.asList().toList().map((word) => word.toDomain()).toImmutableList());
    } on WordSearchLocalException catch (e) {
      return e.when(
        localDatabaseProcessingException: () => const Left(WordSearchLocalFailure.localDatabaseProcessingFailure()),
      );
    }
  }

  @override
  Future<Either<WordSearchLocalFailure, WordSearch>> addRecentSearch(WordSearch search) async {
    try {
      final savedDtoWord = await localDataSource.addRecentSearch(WordSearchDto.fromDomain(search));
      return Right(savedDtoWord.toDomain());
    } on WordSearchLocalException catch (e) {
      return e.when(
        localDatabaseProcessingException: () => const Left(WordSearchLocalFailure.localDatabaseProcessingFailure()),
      );
    }
  }

  @override
  Future<Either<WordSearchLocalFailure, WordSearch>> deleteRecentSearch(WordSearch search) async {
    try {
      final deletedWordSearch = await localDataSource.deleteRecentSearch(WordSearchDto.fromDomain(search));
      return Right(deletedWordSearch.toDomain());
    } on WordSearchLocalException catch (e) {
      return Left(handleLocalException(e));
    }
  }
}

WordSearchLocalFailure handleLocalException(WordSearchLocalException exception) {
  return exception.when(
    localDatabaseProcessingException: () => const WordSearchLocalFailure.localDatabaseProcessingFailure(),
  );
}
