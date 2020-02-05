// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/core/network/network_info.dart';
import 'package:dr_words/core/network/connection_checker_wrapper.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:dr_words/core/data/shared_preferences_wrapper.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:dr_words/core/network/network_client_wrapper.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_fake.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(getIt<ConnectionCheckerWrapper>()))
    ..registerLazySingleton<NetworkInfoImpl>(
        () => NetworkInfoImpl(getIt<ConnectionCheckerWrapper>()))
    ..registerLazySingleton<NavigationService>(() => NavigationService())
    ..registerLazySingleton<QuerySearchLocalDataSource>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferencesWrapper: getIt<SharedPreferencesWrapper>()))
    ..registerLazySingleton<QuerySearchRemoteDataSourceImpl>(() =>
        QuerySearchRemoteDataSourceImpl(
            networkClient: getIt<NetworkClientWrapper>(),
            accountDetails: getIt<AccountDetails>()))
    ..registerLazySingleton<QuerySearchRemoteDataSourceFake>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferencesWrapper: getIt<SharedPreferencesWrapper>()))
    ..registerLazySingleton<QuerySearchRepositoryImpl>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<QuerySearchRepository>(
        () => QuerySearchRepositoryImpl(
              remoteDataSource: getIt<QuerySearchRemoteDataSource>(),
              localDataSource: getIt<QuerySearchLocalDataSource>(),
              networkInfo: getIt<NetworkInfo>(),
            ))
    ..registerLazySingleton<AddNewRecentlySearchedWord>(
        () => AddNewRecentlySearchedWord(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetRecentlySearchedWords>(
        () => GetRecentlySearchedWords(getIt<QuerySearchRepository>()))
    ..registerLazySingleton<GetQuerySearchResults>(
        () => GetQuerySearchResults(getIt<QuerySearchRepository>()))
    ..registerFactory<QuerySearchBloc>(() => QuerySearchBloc(
          getRecentlySearchedWords: getIt<GetRecentlySearchedWords>(),
          getQuerySearchResults: getIt<GetQuerySearchResults>(),
          addNewRecentlySearchedWord: getIt<AddNewRecentlySearchedWord>(),
        ))
    ..registerLazySingleton<AccountDetails>(() => AccountDetails())
    ..registerLazySingleton<ConnectionCheckerWrapper>(() => ConnectionCheckerWrapper())
    ..registerLazySingleton<NetworkClientWrapper>(() => NetworkClientWrapper())
    ..registerLazySingleton<SharedPreferencesWrapper>(() => SharedPreferencesWrapper());
  if (environment == 'production') {
    _registerProductionDependencies();
  }
  if (environment == 'development') {
    _registerDevelopmentDependencies();
  }
}

void _registerProductionDependencies() {
  getIt
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceImpl(
            networkClient: getIt<NetworkClientWrapper>(),
            accountDetails: getIt<AccountDetails>()));
}

void _registerDevelopmentDependencies() {
  getIt
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferencesWrapper: getIt<SharedPreferencesWrapper>()));
}
