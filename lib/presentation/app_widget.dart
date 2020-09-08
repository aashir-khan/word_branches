import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:dr_words/presentation/core/constants/theme_data.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: colors.primaryColorDark));

    return MaterialApp(
      title: 'Dr. Words',
      theme: AppTheme.lightTheme,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: getIt<NavigationService>().navigatorKey as GlobalKey<NavigatorState>,
      debugShowCheckedModeBanner: false,
    );
  }
}
