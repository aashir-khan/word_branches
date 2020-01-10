import 'package:dr_words/datamodels/query_related/query_metadata.dart';
import 'package:dr_words/datamodels/query_related/query_search_single_result.dart';

class QuerySearchResults {
  QueryMetadata metadata;
  List<QuerySearchSingleResult> results;

  QuerySearchResults({
    this.metadata,
    this.results,
  });

  factory QuerySearchResults.fromJson(Map<String, dynamic> json) {
    List<QuerySearchSingleResult> results = [];

    json['results'].forEach((result) {
      results.add(QuerySearchSingleResult.fromJson(result));
    });

    return QuerySearchResults(
      metadata: QueryMetadata.fromJson(json['metadata']),
      results: results,
    );
  }
}
