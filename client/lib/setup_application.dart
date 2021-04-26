import 'package:flutter/material.dart';
import 'package:word_branches/config/env/env_variables.dart';

import 'injection.dart';
import 'mirage/mirage.dart';

Future setupApplication(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(environment);
  getIt.registerLazySingleton<EnvVariables>(() => EnvVariables(environment));

  if (environment == Env.test) {
    setupMirage();
  }
}
