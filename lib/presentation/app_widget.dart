import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';

import '../injection.dart';
import './routes/router.dart';
import 'core/constants/app_colors.dart' as colors;
import 'core/constants/theme_data.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: colors.primaryColorDark));

    return MaterialApp(
      title: 'Dr. Words',
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRouter().onGenerateRoute,
      navigatorKey: getIt<NavigationService>().navigatorKey as GlobalKey<NavigatorState>,
      debugShowCheckedModeBanner: false,
    );
  }
}
