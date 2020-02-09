import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@injectable
@lazySingleton
class MockGetRecentlySearchedWords extends Mock implements GetRecentlySearchedWords {}
