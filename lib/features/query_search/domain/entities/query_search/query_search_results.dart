import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:equatable/equatable.dart';

import 'query_search_metadata.dart';

class QuerySearchResults extends Equatable {
  final QuerySearchMetadata metadata;
  final List<QuerySearchSingleResult> results;

  QuerySearchResults({
    this.metadata,
    this.results,
  });

  @override
  List<Object> get props => [metadata, results];
}
