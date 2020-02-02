import 'package:dr_words/features/query_search/data/models/dictionary_word_model_fake.dart';
import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class QuerySearchResultsModelFake extends QuerySearchResultsModel {
  QuerySearchResultsModelFake({
    @required QuerySearchMetadataModel metadata,
    @required List<DictionaryWordModelFake> results,
  }) : super(metadata: metadata, results: results);

  static const DB_IDENTIFIER = 'query_search_results_model_fake';

  factory QuerySearchResultsModelFake.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
    List<dynamic> traits = const [],
  }) {
    int resultsCount = (customFieldValues['results'] ?? []).length ?? options['resultsAcount'] ?? 10;

    final results = (customFieldValues['results'] as List<DictionaryWordModelFake>) ??
        List<DictionaryWordModelFake>.generate(resultsCount, (_) => DictionaryWordModelFake.fromFakeData());

    final metadata = QuerySearchMetadataModel(
      limit: faker.randomGenerator.integer(10, min: 1),
      total: results.length,
      offset: faker.randomGenerator.integer(100),
    );

    return QuerySearchResultsModelFake(results: results, metadata: metadata);
  }

  factory QuerySearchResultsModelFake.fromJson(Map<String, dynamic> json) {
    List<DictionaryWordModelFake> results = [];

    json['results'].forEach((result) {
      results.add(DictionaryWordModelFake.fromJson(result));
    });

    return QuerySearchResultsModelFake(
      metadata: json['metadata'] == null ? null : QuerySearchMetadataModel.fromJson(json['metadata']),
      results: results,
    );
  }

  Map<String, dynamic> toJson() {
    return super.toJson();
  }
}
