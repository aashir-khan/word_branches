// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dr_words/infrastructure/internal/account_details/account_details_impl.dart';
import 'package:dr_words/infrastructure/internal/account_details/account_details.dart';
import 'package:dr_words/injectable_module.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/application/dictionary_word_entries/dictionary_word_entries_bloc.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_local_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source_fake.dart';
import 'package:dr_words/infrastructure/core/network_info_impl.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_repository.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_repository.dart';
import 'package:dr_words/application/dictionary_word_search/dictionary_word_search_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<Client>(() => injectableModule.httpClient);
  g.registerLazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  g.registerFactory<DictionaryWordEntriesBloc>(() => DictionaryWordEntriesBloc(
      dictionaryWordEntriesRepository: g<IDictionaryWordEntriesRepository>()));
  g.registerLazySingleton<IDictionaryWordSearchLocalDataSource>(() =>
      DictionaryWordSearchLocalDataSource(
          sharedPreferences: g<SharedPreferences>()));
  g.registerLazySingleton<INetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  g.registerLazySingleton<IDictionaryWordSearchRepository>(
      () => DictionaryWordSearchRepository(
            remoteDataSource: g<IDictionaryWordSearchRemoteDataSource>(),
            localDataSource: g<IDictionaryWordSearchLocalDataSource>(),
            networkInfo: g<INetworkInfo>(),
          ));
  g.registerFactory<DictionaryWordSearchBloc>(() => DictionaryWordSearchBloc(
      dictionaryWordSearchRepository: g<IDictionaryWordSearchRepository>()));

  //Register production Dependencies --------
  if (environment == 'production') {
    g.registerLazySingleton<AccountDetails>(() => AccountDetailsImpl());
    g.registerLazySingleton<IDictionaryWordSearchRemoteDataSource>(() =>
        DictionaryWordSearchRemoteDataSource(
            client: g<Client>(), accountDetails: g<AccountDetails>()));
  }

  //Register development Dependencies --------
  if (environment == 'development') {
    g.registerLazySingleton<IDictionaryWordSearchRemoteDataSource>(() =>
        DictionaryWordSearchRemoteDataSourceFake(
            sharedPreferences: g<SharedPreferences>()));
  }
}

class _$InjectableModule extends InjectableModule {}
