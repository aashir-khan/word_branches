import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_single_result_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:flutter/foundation.dart';

class QuerySearchResultsModel extends QuerySearchResults {
  QuerySearchResultsModel({
    @required QuerySearchMetadataModel metadata,
    @required List<QuerySearchSingleResultModel> results,
  }) : super(metadata: metadata, results: results);

  factory QuerySearchResultsModel.fromJson(Map<String, dynamic> json) {
    List<QuerySearchSingleResultModel> results = [];

    json['results'].forEach((result) {
      results.add(QuerySearchSingleResultModel.fromJson(result));
    });

    return QuerySearchResultsModel(
      metadata: QuerySearchMetadataModel.fromJson(json['metadata']),
      results: results,
    );
  }
}
