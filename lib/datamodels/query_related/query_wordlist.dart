import 'package:dr_words/datamodels/query_related/query_metadata.dart';
import 'package:dr_words/datamodels/query_related/query_search_single_result.dart';

class QueryWordlist {
  QueryMetadata metadata;
  List<QuerySearchSingleResult> results;

  QueryWordlist({
    this.metadata,
    this.results,
  });

  factory QueryWordlist.fromJson(Map<String, dynamic> json) {
    List<QuerySearchSingleResult> results = [];

    json['results'].forEach((result) {
      results.add(QuerySearchSingleResult.fromJson(result));
    });

    return QueryWordlist(
      metadata: QueryMetadata.fromJson(json['metadata']),
      results: results,
    );
  }
}
