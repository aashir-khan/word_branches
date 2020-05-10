import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(QuerySearchRemoteDataSource, env: Env.test)
class MockQuerySearchRemoteDataSource extends Mock implements QuerySearchRemoteDataSource {}
