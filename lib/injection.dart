import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/data/mock_http_client.dart';
import 'package:dr_words/core/data/mock_shared_preferences.dart';
import 'package:dr_words/core/network/mock_data_connection_checker.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}

Future<void> configureInjection(String environment) async {
  configureAutomaticInjection(environment);
  await configureManualInjection(environment);
}

@injectableInit
void configureAutomaticInjection(String environment) => $initGetIt(environment: environment);

Future<void> configureManualInjection(String environment) async {
  if (environment == Env.production) {
    await _registerProductionDependencies();
  }
  if (environment == Env.development) {
    await _registerDevelopmentDependencies();
  }
  if (environment == Env.test) {
    await _registerTestDependencies();
  }
}

Future _registerProductionDependencies() async {
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<DataConnectionChecker>(() => DataConnectionChecker());

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

Future _registerDevelopmentDependencies() async {
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<DataConnectionChecker>(() => DataConnectionChecker());

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

Future _registerTestDependencies() async {
  getIt.registerLazySingleton<http.Client>(() => MockHttpClient());
  getIt.registerLazySingleton<DataConnectionChecker>(() => MockDataConnectionChecker());
  getIt.registerLazySingleton<SharedPreferences>(() => MockSharedPreferences());
}
