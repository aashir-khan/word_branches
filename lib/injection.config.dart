// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:audioplayer/audioplayer.dart' as _i3;
import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i15;

import 'config/env.dart' as _i7;
import 'domain/core/i_network_info.dart' as _i10;
import 'domain/favorited_words/i_favorited_words_local_data_source.dart'
    as _i17;
import 'domain/favorited_words/i_favorited_words_repository.dart' as _i19;
import 'domain/word_search/i_word_search_local_data_source.dart' as _i21;
import 'domain/word_search/i_word_search_remote_data_source.dart' as _i12;
import 'domain/word_search/i_word_search_repository.dart' as _i23;
import 'infrastructure/core/daos/dictionary_word_dao.dart' as _i5;
import 'infrastructure/core/daos/headword_entry_dao.dart' as _i9;
import 'infrastructure/core/daos/word_search_dao.dart' as _i16;
import 'infrastructure/core/network_info_impl.dart' as _i11;
import 'infrastructure/favorited_words/favorited_words_local_data_source.dart'
    as _i18;
import 'infrastructure/favorited_words/favorited_words_repository.dart' as _i20;
import 'infrastructure/word_search/word_search_local_data_source.dart' as _i22;
import 'infrastructure/word_search/word_search_remote_data_source.dart' as _i14;
import 'infrastructure/word_search/word_search_remote_data_source_fake.dart'
    as _i13;
import 'infrastructure/word_search/word_search_repository.dart' as _i24;
import 'injectable_module.dart' as _i25;
import 'presentation/views/home/widgets/favorited_words_viewmodel.dart' as _i8;

const String _development = 'development';
const String _production = 'production';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.AudioPlayer>(() => injectableModule.audioPlayer);
  gh.lazySingleton<_i4.DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  gh.lazySingleton<_i5.DictionaryWordDao>(() => _i5.DictionaryWordDao(),
      registerFor: {_development});
  gh.factory<_i6.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i7.EnvVariables>(() => _i7.EnvVariables());
  gh.factory<_i8.FavoritedWordsViewModel>(() => _i8.FavoritedWordsViewModel());
  gh.lazySingleton<_i9.HeadwordEntryDao>(() => _i9.HeadwordEntryDao(),
      registerFor: {_development});
  gh.lazySingleton<_i10.INetworkInfo>(
      () => _i11.NetworkInfoImpl(get<_i4.DataConnectionChecker>()));
  gh.lazySingleton<_i12.IWordSearchRemoteDataSource>(
      () => _i13.WordSearchRemoteDataSourceFake(
          dictionaryWordDao: get<_i5.DictionaryWordDao>(),
          headwordEntryDao: get<_i9.HeadwordEntryDao>()),
      registerFor: {_development});
  gh.lazySingleton<_i12.IWordSearchRemoteDataSource>(
      () => _i14.WordSearchRemoteDataSource(
          dio: get<_i6.Dio>(), envVariables: get<_i7.EnvVariables>()),
      registerFor: {_production});
  gh.lazySingleton<_i15.NavigationService>(
      () => injectableModule.navigationService);
  gh.lazySingleton<_i16.WordSearchDao>(() => _i16.WordSearchDao());
  gh.lazySingleton<_i17.IFavoritedWordsLocalDataSource>(() =>
      _i18.FavoritedWordsLocalDataSource(
          wordSearchDao: get<_i16.WordSearchDao>()));
  gh.lazySingleton<_i19.IFavoritedWordsRepository>(() =>
      _i20.FavoritedWordsRepository(
          localDataSource: get<_i17.IFavoritedWordsLocalDataSource>()));
  gh.lazySingleton<_i21.IWordSearchLocalDataSource>(() =>
      _i22.DictionaryWordSearchLocalDataSource(
          wordSearchDao: get<_i16.WordSearchDao>(), dio: get<_i6.Dio>()));
  gh.lazySingleton<_i23.IWordSearchRepository>(() => _i24.WordSearchRepository(
      remoteDataSource: get<_i12.IWordSearchRemoteDataSource>(),
      localDataSource: get<_i21.IWordSearchLocalDataSource>(),
      networkInfo: get<_i10.INetworkInfo>()));
  return get;
}

class _$InjectableModule extends _i25.InjectableModule {
  @override
  _i15.NavigationService get navigationService => _i15.NavigationService();
}
