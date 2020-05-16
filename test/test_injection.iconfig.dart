// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'test_injection.dart';
import 'package:dr_words/internal/account_details/account_details.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<AccountDetails>(() => MockAccountDetails());
  g.registerLazySingleton<AddNewRecentlySearchedWord>(
      () => MockAddNewRecentlySearchedWord());
  g.registerLazySingleton<Client>(() => MockHttpClient());
  g.registerLazySingleton<DataConnectionChecker>(
      () => MockDataConnectionChecker());
  g.registerLazySingleton<GetHeadwordEntries>(() => MockGetHeadwordEntries());
  g.registerLazySingleton<GetRecentlySearchedWords>(
      () => MockGetRecentlySearchedWords());
  g.registerLazySingleton<QuerySearchLocalDataSource>(
      () => MockQuerySearchLocalDataSource());
  g.registerLazySingleton<QuerySearchRemoteDataSource>(
      () => MockQuerySearchRemoteDataSource());
  g.registerLazySingleton<QuerySearchRepository>(
      () => MockQuerySearchRepository());
  g.registerLazySingleton<SharedPreferences>(() => MockSharedPreferences());
  g.registerLazySingleton<WordDetailsRepository>(
      () => MockWordDetailsRepository());
}
