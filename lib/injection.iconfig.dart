// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/infrastructure/internal/account_details/account_details_impl.dart';
import 'package:dr_words/infrastructure/internal/account_details/account_details.dart';
import 'package:dr_words/injectable_module.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/infrastructure/core/network_info_impl.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/query_search_local_data_source_impl.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/query_search_remote_data_source_impl.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/query_search_remote_data_source_fake.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/query_search_repository_impl.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_repository.dart';
import 'package:dr_words/application/dictionary_word_search/query_search_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<Client>(() => injectableModule.httpClient);
  g.registerLazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  g.registerLazySingleton<INetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  g.registerLazySingleton<QuerySearchLocalDataSource>(() =>
      QuerySearchLocalDataSourceImpl(
          sharedPreferences: g<SharedPreferences>()));
  g.registerLazySingleton<QuerySearchRepository>(
      () => QuerySearchRepositoryImpl(
            remoteDataSource: g<QuerySearchRemoteDataSource>(),
            localDataSource: g<QuerySearchLocalDataSource>(),
            networkInfo: g<INetworkInfo>(),
          ));
  g.registerFactory<QuerySearchBloc>(
      () => QuerySearchBloc(querySearchRepository: g<QuerySearchRepository>()));

  //Register production Dependencies --------
  if (environment == 'production') {
    g.registerLazySingleton<AccountDetails>(() => AccountDetailsImpl());
    g.registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceImpl(
            client: g<Client>(), accountDetails: g<AccountDetails>()));
  }

  //Register development Dependencies --------
  if (environment == 'development') {
    g.registerLazySingleton<QuerySearchRemoteDataSource>(() =>
        QuerySearchRemoteDataSourceFake(
            sharedPreferences: g<SharedPreferences>()));
  }
}

class _$InjectableModule extends InjectableModule {}
