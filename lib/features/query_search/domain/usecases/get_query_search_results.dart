import 'package:dartz/dartz.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/usecases/usecase.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class GetQuerySearchResults extends UseCase<QuerySearchResults, Params> {
  final QuerySearchRepository repository;

  GetQuerySearchResults(this.repository);

  Future<Either<Failure, QuerySearchResults>> call(Params params) async {
    return await repository.getQuerySearchResults(
      query: params.query,
      options: params.options,
    );
  }
}

class Params extends Equatable {
  final String query;
  final Map<String, dynamic> options;

  Params({
    @required this.query,
    this.options = const {},
  });

  @override
  List<Object> get props => [query, options];
}
