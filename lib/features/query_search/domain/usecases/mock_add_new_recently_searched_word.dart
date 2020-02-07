import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@injectable
@lazySingleton
class MockAddNewRecentlySearchedWord extends Mock implements AddNewRecentlySearchedWord {}
