import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}

@injectableInit
void configureAutomaticInjection(String environment) => $initGetIt(environment: environment);

Future<void> configureManualInjection(String environment) async {
  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<DataConnectionChecker>(() => DataConnectionChecker());
}
