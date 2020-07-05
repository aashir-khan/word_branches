// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'test_injection.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<Client>(() => MockHttpClient());
  g.registerLazySingleton<DataConnectionChecker>(
      () => MockDataConnectionChecker());
  g.registerLazySingleton<MockAccountDetails>(() => MockAccountDetails());
  g.registerLazySingleton<MockAddNewRecentlySearchedWord>(
      () => MockAddNewRecentlySearchedWord());
  g.registerLazySingleton<MockDictionaryWordSearchLocalDataSource>(
      () => MockDictionaryWordSearchLocalDataSource());
  g.registerLazySingleton<MockDictionaryWordSearchRemoteDataSource>(
      () => MockDictionaryWordSearchRemoteDataSource());
  g.registerLazySingleton<MockDictionaryWordSearchRepository>(
      () => MockDictionaryWordSearchRepository());
  g.registerLazySingleton<MockGetHeadwordEntries>(
      () => MockGetHeadwordEntries());
  g.registerLazySingleton<MockGetRecentlySearchedWords>(
      () => MockGetRecentlySearchedWords());
  g.registerLazySingleton<MockNetworkInfo>(() => MockNetworkInfo());
  g.registerLazySingleton<MockWordDetailsRepository>(
      () => MockWordDetailsRepository());
  g.registerLazySingleton<SharedPreferences>(() => MockSharedPreferences());
}
