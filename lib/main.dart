import 'package:device_preview/device_preview.dart';
import 'package:dr_words/core/constants/app_colors.dart' as colors;
import 'package:dr_words/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/constants/theme_data.dart';
import 'core/presentation/pages/home_page/home_page.dart';
import 'core/services/navigation_service.dart';
import 'router.dart' as router;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.development);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: colors.primaryColorDark));

    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Dr. Words',
      theme: AppTheme.lightTheme,
      navigatorKey: getIt<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
