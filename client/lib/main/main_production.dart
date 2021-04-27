import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../presentation/app_widget.dart';
import '../setup_application.dart';

Future<void> main() async {
  await setupApplication(Environment.prod);
  runApp(AppWidget());
}
