import 'package:flutter/material.dart';

import 'injection.dart';
import 'mirage/mirage.dart';

Future setupApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  const environment = Env.production;
  configureInjection(environment);

  if (environment == Env.development) {
    setupMirage(isActive: true);
  }
}
