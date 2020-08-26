// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:audioplayer/audioplayer.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'infrastructure/internal/account_details/account_details.dart';
import 'infrastructure/internal/account_details/account_details_impl.dart';
import 'application/dictionary_word_entries/dictionary_word_entries_cubit.dart';
import 'infrastructure/dictionary_word_entries/dictionary_word_entries_remote_data_source.dart';
import 'infrastructure/dictionary_word_entries/dictionary_word_entries_remote_data_source_fake.dart';
import 'infrastructure/dictionary_word_entries/dictionary_word_entries_repository.dart';
import 'application/dictionary_word_search/dictionary_word_search_bloc.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_local_data_source.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source_fake.dart';
import 'infrastructure/dictionary_word_search/dictionary_word_search_repository.dart';
import 'application/favorited_words/favorited_words_actor/favorited_words_actor_cubit.dart';
import 'infrastructure/favorited_words/favorited_words_local_data_source.dart';
import 'infrastructure/favorited_words/favorited_words_repository.dart';
import 'application/favorited_words/favorited_words_watcher/favorited_words_watcher_cubit.dart';
import 'domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'domain/dictionary_word_search/i_dictionary_word_search_local_data_source.dart';
import 'domain/dictionary_word_search/i_dictionary_word_search_remote_data_source.dart';
import 'domain/dictionary_word_search/i_dictionary_word_search_repository.dart';
import 'domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'domain/favorited_words/i_favorited_words_repository.dart';
import 'domain/core/i_network_info.dart';
import 'injectable_module.dart';
import 'infrastructure/core/network_info_impl.dart';

/// Environment names
const _production = 'production';
const _development = 'development';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<AccountDetails>(() => AccountDetailsImpl(),
      registerFor: {_production});
  gh.factory<AudioPlayer>(() => injectableModule.audioPlayer);
  gh.lazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  gh.factory<Dio>(() => injectableModule.dio);
  gh.lazySingleton<IDictionaryWordEntriesRemoteDataSource>(
      () => DictionaryWordEntriesRemoteDataSource(
          accountDetails: get<AccountDetails>(), dio: get<Dio>()),
      registerFor: {_production});
  gh.lazySingleton<IDictionaryWordEntriesRemoteDataSource>(
      () => DictionaryWordEntriesRemoteDataSourceFake(
          sharedPreferences: get<SharedPreferences>()),
      registerFor: {_development});
  gh.lazySingleton<IDictionaryWordSearchLocalDataSource>(() =>
      DictionaryWordSearchLocalDataSource(
          sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<IDictionaryWordSearchRemoteDataSource>(
      () => DictionaryWordSearchRemoteDataSource(
          dio: get<Dio>(), accountDetails: get<AccountDetails>()),
      registerFor: {_production});
  gh.lazySingleton<IDictionaryWordSearchRemoteDataSource>(
      () => DictionaryWordSearchRemoteDataSourceFake(
          sharedPreferences: get<SharedPreferences>()),
      registerFor: {_development});
  gh.lazySingleton<IFavoritedWordsLocalDataSource>(() =>
      FavoritedWordsLocalDataSource(
          sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<IFavoritedWordsRepository>(() => FavoritedWordsRepository(
      localDataSource: get<IFavoritedWordsLocalDataSource>()));
  gh.lazySingleton<INetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  gh.factory<FavoritedWordsActorCubit>(() => FavoritedWordsActorCubit(
      favoritedWordsRepository: get<IFavoritedWordsRepository>()));
  gh.factory<FavoritedWordsWatcherCubit>(() => FavoritedWordsWatcherCubit(
      favoritedWordsRepository: get<IFavoritedWordsRepository>()));
  gh.lazySingleton<IDictionaryWordEntriesRepository>(() =>
      DictionaryWordEntriesRepository(
          networkInfo: get<INetworkInfo>(),
          remoteDataSource: get<IDictionaryWordEntriesRemoteDataSource>()));
  gh.lazySingleton<IDictionaryWordSearchRepository>(
      () => DictionaryWordSearchRepository(
            remoteDataSource: get<IDictionaryWordSearchRemoteDataSource>(),
            localDataSource: get<IDictionaryWordSearchLocalDataSource>(),
            networkInfo: get<INetworkInfo>(),
          ));
  gh.factory<DictionaryWordEntriesCubit>(() => DictionaryWordEntriesCubit(
      dictionaryWordEntriesRepository:
          get<IDictionaryWordEntriesRepository>()));
  gh.factory<DictionaryWordSearchBloc>(() => DictionaryWordSearchBloc(
      dictionaryWordSearchRepository: get<IDictionaryWordSearchRepository>()));
  return get;
}

class _$InjectableModule extends InjectableModule {}
