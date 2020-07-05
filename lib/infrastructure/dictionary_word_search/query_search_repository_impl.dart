import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_local_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_remote_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_remote_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_repository.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: QuerySearchRepository)
class QuerySearchRepositoryImpl implements QuerySearchRepository {
  final QuerySearchRemoteDataSource remoteDataSource;
  final QuerySearchLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  QuerySearchRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<QuerySearchRemoteFailure, List<DictionaryWord>>> getQuerySearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        final wordsDto = await remoteDataSource.getQuerySearchResults(query: query);
        final domainWords = wordsDto.asList().toList().map((dto) => dto.toDomain()).toList();
        return Right(domainWords);
      } on QuerySearchRemoteFailure catch (e) {
        return e.when(
          networkError: () => const Left(QuerySearchRemoteFailure.networkError()),
          noResultsFound: () => const Left(QuerySearchRemoteFailure.noResultsFound()),
          serverError: () => const Left(QuerySearchRemoteFailure.serverError()),
        );
      }
    } else {
      return const Left(QuerySearchRemoteFailure.networkError());
    }
  }

  @override
  Future<Either<QuerySearchLocalFailure, List<DictionaryWord>>> getRecentlySearchedWords() async {
    try {
      final wordsDto = await localDataSource.getRecentlySearchedWords();
      return Right(wordsDto.asList().toList().map((word) => word.toDomain()).toList());
    } on LocalDatabaseProcessingException {
      return const Left(QuerySearchLocalFailure.localDatabaseProcessingFailure());
    }
  }

  @override
  Future<Either<QuerySearchLocalFailure, DictionaryWord>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd) async {
    try {
      final savedDtoWord = await localDataSource.addNewRecentlySearchedWord(DictionaryWordDto.fromDomain(newWordToAdd));
      return Right(savedDtoWord.toDomain());
    } on LocalDatabaseProcessingException {
      return const Left(QuerySearchLocalFailure.localDatabaseProcessingFailure());
    }
  }
}
