import 'package:dr_words/injection.config.dart';
import 'package:dr_words/mirage/mirage.dart';
import 'package:get_it/get_it.dart';
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
  await registerSharedPreferences();
}

Future _registerDevelopmentDependencies() async {
  await registerSharedPreferences();
  await setupMirage(isActive: true);
}

Future<void> registerSharedPreferences() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
