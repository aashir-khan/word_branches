import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/entities/dictionary_word.dart';
import '../../domain/core/entities/word_search.dart';
import '../../domain/core/i_network_info.dart';
import '../../domain/word_search/i_word_search_local_data_source.dart';
import '../../domain/word_search/i_word_search_remote_data_source.dart';
import '../../domain/word_search/i_word_search_repository.dart';
import '../../domain/word_search/word_search_failure.dart';
import '../../domain/word_search/word_search_local_failure.dart';
import '../../domain/word_search/word_search_remote_failure.dart';
import '../core/dtos/dictionary_word_dto.dart';
import '../core/dtos/word_search_dto.dart';
import 'dtos/headword_entry_dto.dart';
import 'word_search_local_exception.dart';
import 'word_search_remote_exception.dart';

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
  Future<Either<WordSearchRemoteFailure, KtList<DictionaryWord>>> getWordSearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isNotConnected) {
      return const Left(WordSearchRemoteFailure.networkError());
    }

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
  Future<Either<WordSearchLocalFailure, Unit>> addRecentSearch(DictionaryWord word) async {
    try {
      await localDataSource.addRecentSearch(DictionaryWordDto.fromDomain(word));
      return const Right(unit);
    } on WordSearchLocalException catch (e) {
      return e.when(
        localDatabaseProcessingException: () => const Left(WordSearchLocalFailure.localDatabaseProcessingFailure()),
      );
    }
  }

  @override
  Future<Either<WordSearchLocalFailure, Unit>> deleteRecentSearch(WordSearch search) async {
    try {
      await localDataSource.deleteRecentSearch(WordSearchDto.fromDomain(search));
      return const Right(unit);
    } on WordSearchLocalException catch (e) {
      return Left(_handleLocalException(e));
    }
  }

  @override
  Future<Either<WordSearchFailure, WordSearch>> getSearchForWord(DictionaryWord word) async {
    KtList<HeadwordEntryDto> entries;
    final wordDto = DictionaryWordDto.fromDomain(word);

    try {
      entries = await remoteDataSource.getWordEntries(wordDto);
    } on WordSearchRemoteException catch (e) {
      return Left(WordSearchFailure.remote(_handleRemoteException(e)));
    }

    try {
      final search = await localDataSource.mapWordAndEntriesToSearch(wordDto, entries);
      return Right(search.toDomain());
    } on WordSearchLocalException catch (e) {
      return Left(WordSearchFailure.local(_handleLocalException(e)));
    }
  }
}

WordSearchLocalFailure _handleLocalException(WordSearchLocalException exception) {
  return exception.when(
    localDatabaseProcessingException: () => const WordSearchLocalFailure.localDatabaseProcessingFailure(),
  );
}

WordSearchRemoteFailure _handleRemoteException(WordSearchRemoteException exception) {
  return exception.when(
    serverError: () => const WordSearchRemoteFailure.serverError(),
    unexpected: () => const WordSearchRemoteFailure.unexpected(),
  );
}
