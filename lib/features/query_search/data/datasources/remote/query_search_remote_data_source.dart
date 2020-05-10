import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';

abstract class QuerySearchRemoteDataSource {
  /// Calls the https://od-api.oxforddictionaries.com/api/v2/search/{source_lang} endpoint
  ///
  /// Throws a [ServerException] for all error codes
  Future<QuerySearchResultsModel> getQuerySearchResults({String query});
}
