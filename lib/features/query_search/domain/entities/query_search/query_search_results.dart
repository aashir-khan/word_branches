import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:equatable/equatable.dart';

import 'query_search_metadata.dart';

class QuerySearchResults extends Equatable {
  final QuerySearchMetadata metadata;
  final List<DictionaryWord> results;

  QuerySearchResults({
    this.metadata,
    this.results,
  });

  @override
  List<Object> get props => [metadata, results];

  factory QuerySearchResults.fromFakeData() {
    final results = List<DictionaryWord>.generate(1, (_) => DictionaryWord.fromFakeData());
    final metadata = QuerySearchMetadata.fromFakeData();
    return QuerySearchResults(
      results: results,
      metadata: metadata,
    );
  }
}
