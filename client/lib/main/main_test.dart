import 'package:flutter/material.dart';

import '../injection.dart';
import '../presentation/app_widget.dart';
import '../setup_application.dart';

Future<void> main() async {
  await setupApplication(Env.test);
  runApp(AppWidget());
}
