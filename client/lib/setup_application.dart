import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'mirage/mirage.dart';

Future setupApplication(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment(environment));

  if (environment == Environment.test) {
    setupMirage();
  }
}
