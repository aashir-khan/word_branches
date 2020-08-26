import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/app_widget.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.development);
  runApp(AppWidget());
}
