import 'package:dr_words/infrastructure/dictionary_word_search/query_search_remote_data_source_fake.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}

Future<void> configureInjection(String environment) async {
  await configureManualInjection(environment);
  configureAutomaticInjection(environment);
}

final GetIt getIt = GetIt.instance;

@injectableInit
void configureAutomaticInjection(String environment) => $initGetIt(getIt, environment: environment);

Future<void> configureManualInjection(String environment) async {
  if (environment == Env.production) {
    await _registerProductionDependencies();
  }
  if (environment == Env.development) {
    await _registerDevelopmentDependencies();
  }
}

Future _registerProductionDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

Future _registerDevelopmentDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // Clear any local storage data
  await sharedPreferences.remove(QuerySearchRemoteDataSourceFake.querySearchResultsModelDbIdentifer);
}
