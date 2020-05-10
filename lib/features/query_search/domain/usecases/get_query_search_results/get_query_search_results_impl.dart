import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@RegisterAs(GetQuerySearchResults)
class GetQuerySearchResultsImpl implements GetQuerySearchResults {
  final QuerySearchRepository repository;

  GetQuerySearchResultsImpl(this.repository);

  Future<dartz.Either<Failure, QuerySearchResults>> call(Params params) async {
    return await repository.getQuerySearchResults(
      query: params.query,
    );
  }
}
