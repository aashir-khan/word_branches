// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:audioplayer/audioplayer.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/dictionary_word_entries/dictionary_word_entries_bloc.dart';
import 'application/dictionary_word_search/dictionary_word_search_bloc.dart';
import 'domain/core/i_network_info.dart';
import 'domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'domain/dictionary_word_search/i_dictionary_word_search_local_data_source.dart';
import 'domain/dictionary_word_search/i_dictionary_word_search_remote_data_source.dart';
import 'domain/dictionary_word_search/i_dictionary_word_search_repository.dart';
import 'infrastructure/core/network_info_impl.dart';
import 'infrastructure/dictionary_word_entries/dictionary_word_entries_remote_data_source.dart';
import 'infrastructure/dictionary_word_entries/dictionary_word_entries_remote_data_source_fake.dart';
import 'infrastructure/dictionary_word_entries/dictionary_word_entries_repository.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_local_data_source.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source_fake.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_repository.dart';
import 'infrastructure/internal/account_details/account_details.dart';
import 'infrastructure/internal/account_details/account_details_impl.dart';
import 'injectable_module.dart';

/// Environment names
const _production = 'production';
const _development = 'development';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<AccountDetails>(() => AccountDetailsImpl(),
      registerFor: {_production});
  gh.factory<AudioPlayer>(() => injectableModule.audioPlayer);
  gh.lazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  gh.factory<Dio>(() => injectableModule.dio);
  gh.lazySingleton<IDictionaryWordEntriesRemoteDataSource>(
      () => DictionaryWordEntriesRemoteDataSource(
          accountDetails: g<AccountDetails>(), dio: g<Dio>()),
      registerFor: {_production});
  gh.lazySingleton<IDictionaryWordEntriesRemoteDataSource>(
      () => DictionaryWordEntriesRemoteDataSourceFake(
          sharedPreferences: g<SharedPreferences>()),
      registerFor: {_development});
  gh.lazySingleton<IDictionaryWordSearchLocalDataSource>(() =>
      DictionaryWordSearchLocalDataSource(
          sharedPreferences: g<SharedPreferences>()));
  gh.lazySingleton<IDictionaryWordSearchRemoteDataSource>(
      () => DictionaryWordSearchRemoteDataSource(
          dio: g<Dio>(), accountDetails: g<AccountDetails>()),
      registerFor: {_production});
  gh.lazySingleton<IDictionaryWordSearchRemoteDataSource>(
      () => DictionaryWordSearchRemoteDataSourceFake(
          sharedPreferences: g<SharedPreferences>()),
      registerFor: {_development});
  gh.lazySingleton<INetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  gh.lazySingleton<IDictionaryWordEntriesRepository>(() =>
      DictionaryWordEntriesRepository(
          networkInfo: g<INetworkInfo>(),
          remoteDataSource: g<IDictionaryWordEntriesRemoteDataSource>()));
  gh.lazySingleton<IDictionaryWordSearchRepository>(
      () => DictionaryWordSearchRepository(
            remoteDataSource: g<IDictionaryWordSearchRemoteDataSource>(),
            localDataSource: g<IDictionaryWordSearchLocalDataSource>(),
            networkInfo: g<INetworkInfo>(),
          ));
  gh.factory<DictionaryWordEntriesBloc>(() => DictionaryWordEntriesBloc(
      dictionaryWordEntriesRepository: g<IDictionaryWordEntriesRepository>()));
  gh.factory<DictionaryWordSearchBloc>(() => DictionaryWordSearchBloc(
      dictionaryWordSearchRepository: g<IDictionaryWordSearchRepository>()));
}

class _$InjectableModule extends InjectableModule {}
