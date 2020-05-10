import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(AddNewRecentlySearchedWord, env: Env.test)
class MockAddNewRecentlySearchedWord extends Mock implements AddNewRecentlySearchedWord {}
