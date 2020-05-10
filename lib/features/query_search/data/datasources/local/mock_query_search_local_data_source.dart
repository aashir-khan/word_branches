import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(QuerySearchLocalDataSource, env: Env.test)
class MockQuerySearchLocalDataSource extends Mock implements QuerySearchLocalDataSource {}
