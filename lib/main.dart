import 'package:dr_words/presentation/app_widget.dart';
import 'package:dr_words/setup_application.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await setupApplication();
  runApp(AppWidget());
}
