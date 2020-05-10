import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(QuerySearchRepository, env: Env.test)
class MockQuerySearchRepository extends Mock implements QuerySearchRepository {}
