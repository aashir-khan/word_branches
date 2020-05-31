import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:equatable/equatable.dart';

import 'query_search_metadata.dart';

class QuerySearchResults extends Equatable {
  final QuerySearchMetadata metadata;
  final List<DictionaryWord> results;

  const QuerySearchResults({
    this.metadata,
    this.results,
  });

  @override
  List<Object> get props => [metadata, results];
}
