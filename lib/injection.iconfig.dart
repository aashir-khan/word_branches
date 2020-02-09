// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/core/network/mock_network_info.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/features/query_search/data/datasources/local/mock_query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:http/src/client.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_fake.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/mock_query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/data/repositories/mock_query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word.dart';
import 'package:dr_words/internal/mock_account_details.dart';
import 'package:dr_words/core/network/network_info_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/mock_add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/mock_get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/mock_get_recently_searched_words.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerLazySingleton<MockNetworkInfo>(() => MockNetworkInfo())
    ..registerLazySingleton<NavigationService>(() => NavigationService())
    ..registerLazySingleton<QuerySearchLocalDataSourceImpl>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<MockQuerySearchLocalDataSource>(
        () => MockQuerySearchLocalDataSource())
    ..registerLazySingleton<QuerySearchRemoteDataSourceImpl>(() =>
        QuerySearchRemoteDataSourceImpl(
            client: getIt<Client>(), accountDetails: getIt<AccountDetails>()))
    ..registerLazySingleton<QuerySearchRemoteDataSourceFake>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<MockQuerySearchRemoteDataSource>(
        () => MockQuerySearchRemoteDataSource())
    ..registerLazySingleton<QuerySearchRepositoryImpl>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<MockQuerySearchRepository>(
        () => MockQuerySearchRepository())
    ..registerFactory<QuerySearchBloc>(() => QuerySearchBloc(
          getRecentlySearchedWords: getIt<GetRecentlySearchedWords>(),
          getQuerySearchResults: getIt<GetQuerySearchResults>(),
          addNewRecentlySearchedWord: getIt<AddNewRecentlySearchedWord>(),
        ))
    ..registerLazySingleton<MockAccountDetails>(() => MockAccountDetails())
    ..registerLazySingleton<AccountDetailsImpl>(() => AccountDetailsImpl())
    ..registerLazySingleton<NetworkInfoImpl>(
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<AddNewRecentlySearchedWordImpl>(
        () => AddNewRecentlySearchedWordImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<MockAddNewRecentlySearchedWord>(
        () => MockAddNewRecentlySearchedWord())
    ..registerLazySingleton<GetQuerySearchResultsImpl>(
        () => GetQuerySearchResultsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<MockGetQuerySearchResults>(
        () => MockGetQuerySearchResults())
    ..registerLazySingleton<GetRecentlySearchedWordsImpl>(() => GetRecentlySearchedWordsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<MockGetRecentlySearchedWords>(() => MockGetRecentlySearchedWords());
  if (environment == 'production') {
    _registerProductionDependencies();
  }
  if (environment == 'development') {
    _registerDevelopmentDependencies();
  }
  if (environment == 'test') {
    _registerTestDependencies();
  }
}

void _registerProductionDependencies() {
  getIt
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<QuerySearchLocalDataSource>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceImpl(
            client: getIt<Client>(), accountDetails: getIt<AccountDetails>()))
    ..registerLazySingleton<QuerySearchRepository>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<AccountDetails>(() => AccountDetailsImpl())
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => AddNewRecentlySearchedWordImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetQuerySearchResults>(
        () => GetQuerySearchResultsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => GetRecentlySearchedWordsImpl(getIt<QuerySearchRepository>()));
}

void _registerDevelopmentDependencies() {
  getIt
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<QuerySearchLocalDataSource>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<QuerySearchRepository>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<AccountDetails>(() => AccountDetailsImpl())
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => AddNewRecentlySearchedWordImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetQuerySearchResults>(
        () => GetQuerySearchResultsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => GetRecentlySearchedWordsImpl(getIt<QuerySearchRepository>()));
}

void _registerTestDependencies() {
  getIt
    ..registerLazySingleton<NetworkInfo>(() => MockNetworkInfo())
    ..registerLazySingleton<QuerySearchLocalDataSource>(
        () => MockQuerySearchLocalDataSource())
    ..registerLazySingleton<QuerySearchRemoteDataSource>(
        () => MockQuerySearchRemoteDataSource())
    ..registerLazySingleton<QuerySearchRepository>(
        () => MockQuerySearchRepository())
    ..registerLazySingleton<AccountDetails>(() => MockAccountDetails())
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => MockAddNewRecentlySearchedWord())
    ..registerLazySingleton<GetQuerySearchResults>(
        () => MockGetQuerySearchResults())
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => MockGetRecentlySearchedWords());
}
