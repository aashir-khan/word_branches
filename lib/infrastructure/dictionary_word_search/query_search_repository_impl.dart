import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_local_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_remote_data_source.dart';
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
  Future<Either<Failure, List<DictionaryWord>>> getQuerySearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        final wordsDto = await remoteDataSource.getQuerySearchResults(query: query);
        final domainWords = wordsDto.map((dto) => dto.toDomain()).toList();
        return Right(domainWords);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<DictionaryWord>>> getRecentlySearchedWords() async {
    try {
      final wordsDto = await localDataSource.getRecentlySearchedWords();
      return Right(wordsDto.map((word) => word.toDomain()).toList());
    } on LocalDatabaseProcessingException {
      return Left(LocalDatabaseProcessingFailure());
    }
  }

  @override
  Future<Either<Failure, DictionaryWord>> addNewRecentlySearchedWord(DictionaryWord newWordToAdd) async {
    try {
      final savedDtoWord = await localDataSource.addNewRecentlySearchedWord(DictionaryWordDto.fromDomain(newWordToAdd));
      return Right(savedDtoWord.toDomain());
    } on LocalDatabaseProcessingException {
      return Left(LocalDatabaseProcessingFailure());
    }
  }
}
