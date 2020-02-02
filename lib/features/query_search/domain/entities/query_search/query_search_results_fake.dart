import 'package:dr_words/core/domain/entities/dictionary_word_fake.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_metadata_fake.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';

class QuerySearchResultsFake extends QuerySearchResults {
  QuerySearchResultsFake({
    QuerySearchMetadataFake metadata,
    List<DictionaryWordFake> results,
  }) : super(
          metadata: metadata,
          results: results,
        );

  factory QuerySearchResultsFake.fromFakeData() {
    final results = List<DictionaryWordFake>.generate(1, (_) => DictionaryWordFake.fromFakeData());
    final metadata = QuerySearchMetadataFake.fromFakeData();
    return QuerySearchResultsFake(
      results: results,
      metadata: metadata,
    );
  }
}
