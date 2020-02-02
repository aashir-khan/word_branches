import 'package:dr_words/features/query_search/data/models/dictionary_word_model_fake.dart';
import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';
import 'package:hive/hive.dart';

part 'query_search_results_model_fake.g.dart';

@HiveType(typeId: 0)
class QuerySearchResultsModelFake extends QuerySearchResultsModel {
  QuerySearchResultsModelFake({
    @HiveField(0) @required QuerySearchMetadataModel metadata,
    @HiveField(1) @required List<DictionaryWordModelFake> results,
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
}
