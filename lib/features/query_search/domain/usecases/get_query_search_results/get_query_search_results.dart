import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class GetQuerySearchResults extends UseCase<QuerySearchResults, Params> {
  Future<dartz.Either<Failure, QuerySearchResults>> call(Params params);
}

class Params extends Equatable {
  final String query;

  Params({
    @required this.query,
  });

  @override
  List<Object> get props => [query];
}
