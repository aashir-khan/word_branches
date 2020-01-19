import 'package:dartz/dartz.dart';
import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:dr_words/features/query_search/data/datasources/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:flutter/foundation.dart';

class QuerySearchRepositoryImpl implements QuerySearchRepository {
  final QuerySearchRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  QuerySearchRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, QuerySearchResults>> getQuerySearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await remoteDataSource.getQuerySearchResults(
          query: query,
          options: options,
        ));
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
