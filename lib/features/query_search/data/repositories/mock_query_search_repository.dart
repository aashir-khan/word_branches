import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@injectable
class MockQuerySearchRepository extends Mock implements QuerySearchRepository {}
