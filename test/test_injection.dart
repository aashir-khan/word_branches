import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words.dart';
import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/internal/account_details/account_details.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'test_injection.iconfig.dart';

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}

final GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: ['test'])
void configureTestInjection() => $initGetIt(getIt);

// Usecases
@LazySingleton(as: GetHeadwordEntries)
class MockGetHeadwordEntries extends Mock implements GetHeadwordEntries {}

@LazySingleton(as: GetRecentlySearchedWords)
class MockGetRecentlySearchedWords extends Mock implements GetRecentlySearchedWords {}

@LazySingleton(as: AddNewRecentlySearchedWord)
class MockAddNewRecentlySearchedWord extends Mock implements AddNewRecentlySearchedWord {}

// Repositories
@LazySingleton(as: WordDetailsRepository)
class MockWordDetailsRepository extends Mock implements WordDetailsRepository {}

@LazySingleton(as: QuerySearchRepository)
class MockQuerySearchRepository extends Mock implements QuerySearchRepository {}

// Data sources
@LazySingleton(as: QuerySearchLocalDataSource)
class MockQuerySearchLocalDataSource extends Mock implements QuerySearchLocalDataSource {}

@LazySingleton(as: QuerySearchRemoteDataSource)
class MockQuerySearchRemoteDataSource extends Mock implements QuerySearchRemoteDataSource {}

// Third party
@LazySingleton(as: DataConnectionChecker)
class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

@LazySingleton(as: SharedPreferences)
class MockSharedPreferences extends Mock implements SharedPreferences {}

@LazySingleton(as: http.Client)
class MockHttpClient extends Mock implements http.Client {}

// Misc
@LazySingleton(as: AccountDetails)
class MockAccountDetails extends Mock implements AccountDetails {}

@LazySingleton(as: NetworkInfo)
class MockNetworkInfo extends Mock implements NetworkInfo {}
