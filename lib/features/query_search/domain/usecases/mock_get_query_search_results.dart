import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@injectable
@lazySingleton
class MockGetQuerySearchResults extends Mock implements GetQuerySearchResults {}
