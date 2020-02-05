import 'package:dartz/dartz.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class GetQuerySearchResults extends UseCase<QuerySearchResults, Params> {
  final QuerySearchRepository repository;

  GetQuerySearchResults(this.repository);

  Future<Either<Failure, QuerySearchResults>> call(Params params) async {
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
