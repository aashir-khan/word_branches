import 'package:device_preview/device_preview.dart';
import 'package:dr_words/constants/app_colors.dart' as colors;
import 'package:dr_words/services/navigation_service.dart';
import 'package:dr_words/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/theme_data.dart';
import 'lifecycle_manager.dart';
import 'locator.dart';
import 'router.dart' as router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: colors.primaryColorDark));

    return LifeCycleManager(
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        title: 'Dr. Words',
        theme: AppTheme.lightTheme,
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.generateRoute,
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
