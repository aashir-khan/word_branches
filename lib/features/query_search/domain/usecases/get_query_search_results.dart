import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/mock_get_query_search_results.dart';
import 'package:dr_words/injection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(GetQuerySearchResultsImpl, env: Env.production)
@Bind.toType(GetQuerySearchResultsImpl, env: Env.development)
@Bind.toType(MockGetQuerySearchResults, env: Env.test)
@lazySingleton
@injectable
abstract class GetQuerySearchResults extends UseCase<QuerySearchResults, Params> {
  Future<dartz.Either<Failure, QuerySearchResults>> call(Params params);
}

@lazySingleton
@injectable
class GetQuerySearchResultsImpl extends GetQuerySearchResults {
  final QuerySearchRepository repository;

  GetQuerySearchResultsImpl(this.repository);

  Future<dartz.Either<Failure, QuerySearchResults>> call(Params params) async {
    return await repository.getQuerySearchResults(
      query: params.query,
    );
  }
}

class Params extends Equatable {
  final String query;

  Params({
    @required this.query,
  });

  @override
  List<Object> get props => [query];
}
