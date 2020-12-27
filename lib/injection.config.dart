// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:audioplayer/audioplayer.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import 'infrastructure/core/daos/dictionary_word_dao.dart';
import 'infrastructure/word_search/word_search_local_data_source.dart';
import 'config/env.dart';
import 'infrastructure/favorited_words/favorited_words_local_data_source.dart';
import 'infrastructure/favorited_words/favorited_words_repository.dart';
import 'presentation/views/home/widgets/favorited_words_viewmodel.dart';
import 'infrastructure/core/daos/headword_entry_dao.dart';
import 'domain/favorited_words/i_favorited_words_local_data_source.dart';
import 'domain/favorited_words/i_favorited_words_repository.dart';
import 'domain/core/i_network_info.dart';
import 'domain/word_search/i_word_search_local_data_source.dart';
import 'domain/word_search/i_word_search_remote_data_source.dart';
import 'domain/word_search/i_word_search_repository.dart';
import 'injectable_module.dart';
import 'infrastructure/core/network_info_impl.dart';
import 'infrastructure/core/daos/word_search_dao.dart';
import 'infrastructure/word_search/word_search_remote_data_source.dart';
import 'infrastructure/word_search/word_search_remote_data_source_fake.dart';
import 'infrastructure/word_search/word_search_repository.dart';

/// Environment names
const _development = 'development';
const _production = 'production';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<AudioPlayer>(() => injectableModule.audioPlayer);
  gh.lazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  gh.lazySingleton<DictionaryWordDao>(() => DictionaryWordDao(),
      registerFor: {_development});
  gh.factory<Dio>(() => injectableModule.dio);
  gh.lazySingleton<EnvVariables>(() => EnvVariables());
  gh.factory<FavoritedWordsViewModel>(() => FavoritedWordsViewModel());
  gh.lazySingleton<HeadwordEntryDao>(() => HeadwordEntryDao(),
      registerFor: {_development});
  gh.lazySingleton<INetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  gh.lazySingleton<IWordSearchRemoteDataSource>(
      () => WordSearchRemoteDataSourceFake(
          dictionaryWordDao: get<DictionaryWordDao>(),
          headwordEntryDao: get<HeadwordEntryDao>()),
      registerFor: {_development});
  gh.lazySingleton<IWordSearchRemoteDataSource>(
      () => WordSearchRemoteDataSource(
          dio: get<Dio>(), envVariables: get<EnvVariables>()),
      registerFor: {_production});
  gh.lazySingleton<NavigationService>(() => injectableModule.navigationService);
  gh.lazySingleton<WordSearchDao>(() => WordSearchDao());
  gh.lazySingleton<IFavoritedWordsLocalDataSource>(
      () => FavoritedWordsLocalDataSource(wordSearchDao: get<WordSearchDao>()));
  gh.lazySingleton<IFavoritedWordsRepository>(() => FavoritedWordsRepository(
      localDataSource: get<IFavoritedWordsLocalDataSource>()));
  gh.lazySingleton<IWordSearchLocalDataSource>(() =>
      DictionaryWordSearchLocalDataSource(
          wordSearchDao: get<WordSearchDao>(), dio: get<Dio>()));
  gh.lazySingleton<IWordSearchRepository>(() => WordSearchRepository(
        remoteDataSource: get<IWordSearchRemoteDataSource>(),
        localDataSource: get<IWordSearchLocalDataSource>(),
        networkInfo: get<INetworkInfo>(),
      ));
  return get;
}

class _$InjectableModule extends InjectableModule {
  @override
  NavigationService get navigationService => NavigationService();
}
