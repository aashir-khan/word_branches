import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class QuerySearchRepositoryImpl implements QuerySearchRepository {
  final QuerySearchRemoteDataSource remoteDataSource;
  final QuerySearchLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  QuerySearchRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, QuerySearchResults>> getQuerySearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.getQuerySearchResults(
          query: query,
        ));
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
      return Right(await localDataSource.getRecentlySearchedWords());
    } on LocalDatabaseProcessingException {
      return Left(LocalDatabaseProcessingFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> addNewRecentlySearchedWord(DictionaryWord newWordToAdd) async {
    try {
      return Right(await localDataSource.addNewRecentlySearchedWord(newWordToAdd));
    } on LocalDatabaseProcessingException {
      return Left(LocalDatabaseProcessingFailure());
    }
  }
}
