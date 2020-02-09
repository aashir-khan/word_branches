import 'package:dr_words/features/query_search/data/datasources/local/mock_query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(QuerySearchLocalDataSourceImpl, env: Env.production)
@Bind.toType(QuerySearchLocalDataSourceImpl, env: Env.development)
@Bind.toType(MockQuerySearchLocalDataSource, env: Env.test)
@lazySingleton
@injectable
abstract class QuerySearchLocalDataSource {
  Future<List<DictionaryWordModel>> getRecentlySearchedWords();
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd);
}
