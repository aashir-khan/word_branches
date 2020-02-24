import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/mock_query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_fake.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(QuerySearchRemoteDataSourceImpl, env: Env.production)
@Bind.toType(QuerySearchRemoteDataSourceFake, env: Env.development)
@Bind.toType(MockQuerySearchRemoteDataSource, env: Env.test)
@lazySingleton
@injectable
abstract class QuerySearchRemoteDataSource {
  /// Calls the https://od-api.oxforddictionaries.com/api/v2/search/{source_lang} endpoint
  ///
  /// Throws a [ServerException] for all error codes
  Future<QuerySearchResultsModel> getQuerySearchResults({String query});
}
