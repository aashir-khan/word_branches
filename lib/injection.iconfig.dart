// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/internal/account_details/mock_account_details.dart';
import 'package:dr_words/internal/account_details/account_details.dart';
import 'package:dr_words/internal/account_details/account_details_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/mock_add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word.dart';
import 'package:dr_words/core/data/mock_http_client.dart';
import 'package:http/src/client.dart';
import 'package:dr_words/injectable_module.dart';
import 'package:dr_words/core/network/mock_data_connection_checker.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/mock_get_headword_entries.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/mock_get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/mock_get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/core/network/network_info/mock_network_info.dart';
import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:dr_words/core/network/network_info/network_info_fake.dart';
import 'package:dr_words/core/network/network_info/network_info_impl.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/features/query_search/data/datasources/local/mock_query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_fake.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/mock_query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/data/repositories/mock_query_search_repository.dart';
import 'package:dr_words/features/word_details/data/repositories/mock_word_details_repository.dart';
import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word_impl.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words_impl.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<AccountDetails>(() => AccountDetailsImpl());
  g.registerLazySingleton<Client>(() => injectableModule.httpClient);
  g.registerLazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  g.registerLazySingleton<NavigationService>(() => NavigationService());
  g.registerFactory<QuerySearchBloc>(() => QuerySearchBloc(
        getRecentlySearchedWords: g<GetRecentlySearchedWords>(),
        getQuerySearchResults: g<GetQuerySearchResults>(),
        addNewRecentlySearchedWord: g<AddNewRecentlySearchedWord>(),
      ));
  g.registerLazySingleton<QuerySearchLocalDataSource>(() =>
      QuerySearchLocalDataSourceImpl(
          sharedPreferences: g<SharedPreferences>()));
  g.registerLazySingleton<QuerySearchRepository>(
      () => QuerySearchRepositoryImpl(
            remoteDataSource: g<QuerySearchRemoteDataSource>(),
            localDataSource: g<QuerySearchLocalDataSource>(),
            networkInfo: g<NetworkInfo>(),
          ));
  g.registerLazySingleton<AddNewRecentlySearchedWord>(
      () => AddNewRecentlySearchedWordImpl(g<QuerySearchRepository>()));
  g.registerLazySingleton<GetHeadwordEntries>(
      () => GetHeadwordEntriesImpl(g<WordDetailsRepository>()));
  g.registerLazySingleton<GetQuerySearchResults>(
      () => GetQuerySearchResultsImpl(g<QuerySearchRepository>()));
  g.registerLazySingleton<GetRecentlySearchedWords>(
      () => GetRecentlySearchedWordsImpl(g<QuerySearchRepository>()));

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerLazySingleton<AccountDetails>(() => MockAccountDetails());
    g.registerLazySingleton<AddNewRecentlySearchedWord>(
        () => MockAddNewRecentlySearchedWord());
    g.registerLazySingleton<Client>(() => MockHttpClient());
    g.registerLazySingleton<DataConnectionChecker>(
        () => MockDataConnectionChecker());
    g.registerLazySingleton<GetHeadwordEntries>(() => MockGetHeadwordEntries());
    g.registerLazySingleton<GetQuerySearchResults>(
        () => MockGetQuerySearchResults());
    g.registerLazySingleton<GetRecentlySearchedWords>(
        () => MockGetRecentlySearchedWords());
    g.registerLazySingleton<NetworkInfo>(() => MockNetworkInfo());
    g.registerLazySingleton<QuerySearchLocalDataSource>(
        () => MockQuerySearchLocalDataSource());
    g.registerLazySingleton<QuerySearchRemoteDataSource>(
        () => MockQuerySearchRemoteDataSource());
    g.registerLazySingleton<QuerySearchRepository>(
        () => MockQuerySearchRepository());
    g.registerLazySingleton<WordDetailsRepository>(
        () => MockWordDetailsRepository());
  }

  //Register development Dependencies --------
  if (environment == 'development') {
    g.registerLazySingleton<NetworkInfo>(() => NetworkInfoFake());
    g.registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: g<SharedPreferences>()));
  }

  //Register production Dependencies --------
  if (environment == 'production') {
    g.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(g<DataConnectionChecker>()));
    g.registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceImpl(
            client: g<Client>(), accountDetails: g<AccountDetails>()));
  }
}

class _$InjectableModule extends InjectableModule {}
