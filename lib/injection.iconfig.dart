// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/core/network/network_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:http/src/client.dart';
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
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<NetworkInfoImpl>(
        () => NetworkInfoImpl(getIt<DataConnectionChecker>()))
    ..registerLazySingleton<NavigationService>(() => NavigationService())
    ..registerLazySingleton<QuerySearchLocalDataSource>(() =>
        QuerySearchLocalDataSourceImpl(
            sharedPreferences: getIt<SharedPreferences>()))
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
    ..registerLazySingleton<AccountDetails>(() => AccountDetails());
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
            client: getIt<Client>(), accountDetails: getIt<AccountDetails>()));
}

void _registerDevelopmentDependencies() {
  getIt
    ..registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: getIt<SharedPreferences>()));
}
