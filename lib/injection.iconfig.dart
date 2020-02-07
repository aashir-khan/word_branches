// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/core/network/network_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:http/src/client.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_fake.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/core/network/mock_network_info.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/mock_query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/local/mock_query_search_local_data_source.dart';
import 'package:dr_words/internal/mock_account_details.dart';
import 'package:dr_words/features/query_search/data/repositories/mock_query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/mock_add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/mock_get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/mock_get_recently_searched_words.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerLazySingleton<NetworkInfoImpl>(
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<NavigationService>(() => NavigationService())
    ..registerLazySingleton<QuerySearchRemoteDataSourceImpl>(() =>
        QuerySearchRemoteDataSourceImpl(
            client: getIt<Client>(), accountDetails: getIt<AccountDetails>()))
    ..registerLazySingleton<QuerySearchRemoteDataSourceFake>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<QuerySearchRepositoryImpl>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<AddNewRecentlySearchedWordImpl>(
        () => AddNewRecentlySearchedWordImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetRecentlySearchedWordsImpl>(
        () => GetRecentlySearchedWordsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetQuerySearchResultsImpl>(
        () => GetQuerySearchResultsImpl(getIt<QuerySearchRepository>()))
    ..registerFactory<QuerySearchBloc>(() => QuerySearchBloc(
          getRecentlySearchedWords: getIt<GetRecentlySearchedWords>(),
          getQuerySearchResults: getIt<GetQuerySearchResults>(),
          addNewRecentlySearchedWord: getIt<AddNewRecentlySearchedWord>(),
        ))
    ..registerLazySingleton<AccountDetailsImpl>(() => AccountDetailsImpl())
    ..registerLazySingleton<MockNetworkInfo>(() => MockNetworkInfo())
    ..registerLazySingleton<MockQuerySearchRemoteDataSource>(
        () => MockQuerySearchRemoteDataSource())
    ..registerLazySingleton<QuerySearchLocalDataSourceImpl>(() => QuerySearchLocalDataSourceImpl(
        sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<MockQuerySearchLocalDataSource>(
        () => MockQuerySearchLocalDataSource())
    ..registerLazySingleton<MockAccountDetails>(() => MockAccountDetails())
    ..registerLazySingleton<MockQuerySearchRepository>(() => MockQuerySearchRepository())
    ..registerLazySingleton<MockAddNewRecentlySearchedWord>(() => MockAddNewRecentlySearchedWord())
    ..registerLazySingleton<MockGetQuerySearchResults>(() => MockGetQuerySearchResults())
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
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceImpl(
            client: getIt<Client>(), accountDetails: getIt<AccountDetails>()))
    ..registerLazySingleton<QuerySearchRepository>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => AddNewRecentlySearchedWordImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => GetRecentlySearchedWordsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetQuerySearchResults>(
        () => GetQuerySearchResultsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<AccountDetails>(() => AccountDetailsImpl())
    ..registerLazySingleton<QuerySearchLocalDataSource>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferences: getIt<SharedPreferences>()));
}

void _registerDevelopmentDependencies() {
  getIt
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: getIt<SharedPreferences>()))
    ..registerLazySingleton<QuerySearchRepository>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => AddNewRecentlySearchedWordImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => GetRecentlySearchedWordsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetQuerySearchResults>(
        () => GetQuerySearchResultsImpl(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<AccountDetails>(() => AccountDetailsImpl())
    ..registerLazySingleton<QuerySearchLocalDataSource>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferences: getIt<SharedPreferences>()));
}

void _registerTestDependencies() {
  getIt
    ..registerLazySingleton<NetworkInfo>(() => MockNetworkInfo())
    ..registerLazySingleton<QuerySearchRemoteDataSource>(
        () => MockQuerySearchRemoteDataSource())
    ..registerLazySingleton<QuerySearchRepository>(
        () => MockQuerySearchRepository())
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => MockAddNewRecentlySearchedWord())
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => MockGetRecentlySearchedWords())
    ..registerLazySingleton<GetQuerySearchResults>(
        () => MockGetQuerySearchResults())
    ..registerLazySingleton<AccountDetails>(() => MockAccountDetails())
    ..registerLazySingleton<QuerySearchLocalDataSource>(
        () => MockQuerySearchLocalDataSource());
}
