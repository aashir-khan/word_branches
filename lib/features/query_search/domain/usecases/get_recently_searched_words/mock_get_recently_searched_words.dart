import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(GetRecentlySearchedWords, env: Env.test)
class MockGetRecentlySearchedWords extends Mock implements GetRecentlySearchedWords {}
