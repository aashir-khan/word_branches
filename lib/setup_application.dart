import 'package:dr_words/injection.dart';
import 'package:dr_words/mirage/mirage.dart';
import 'package:flutter/material.dart';

Future setupApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  const environment = Env.production;
  configureInjection(environment);

  if (environment == Env.development) {
    setupMirage(isActive: true);
  }
}
