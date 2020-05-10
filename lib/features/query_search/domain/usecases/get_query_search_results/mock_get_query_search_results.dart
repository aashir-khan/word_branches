import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(GetQuerySearchResults, env: Env.test)
class MockGetQuerySearchResults extends Mock implements GetQuerySearchResults {}
