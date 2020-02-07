import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class QuerySearchResultsModel extends QuerySearchResults {
  QuerySearchResultsModel({
    @required QuerySearchMetadataModel metadata,
    @required List<DictionaryWordModel> results,
  }) : super(metadata: metadata, results: results);

  factory QuerySearchResultsModel.fromJson(Map<String, dynamic> json) {
    List<DictionaryWordModel> results = [];

    json['results'].forEach((result) {
      results.add(DictionaryWordModel.fromJson(result));
    });

    return QuerySearchResultsModel(
      metadata: json['metadata'] == null ? null : QuerySearchMetadataModel.fromJson(json['metadata']),
      results: results,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> _results = [];
    results.cast<DictionaryWordModel>().forEach((s) => _results.add(s.toJson()));
    return {
      'metadata': (metadata as QuerySearchMetadataModel).toJson(),
      'results': _results,
    };
  }

  factory QuerySearchResultsModel.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
    List<dynamic> traits = const [],
  }) {
    int resultsCount = (customFieldValues['results'] ?? []).length ?? options['resultsAcount'] ?? 10;

    final results = (customFieldValues['results'] as List<DictionaryWordModel>) ??
        List<DictionaryWordModel>.generate(resultsCount, (_) => DictionaryWordModel.fromFakeData());

    final metadata = QuerySearchMetadataModel(
      limit: faker.randomGenerator.integer(10, min: 1),
      total: results.length,
      offset: faker.randomGenerator.integer(100),
    );

    return QuerySearchResultsModel(results: results, metadata: metadata);
  }
}
