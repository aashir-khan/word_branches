import 'package:device_preview/device_preview.dart';
import 'package:dr_words/core/constants/app_colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/constants/theme_data.dart';
import 'core/presentation/pages/home_page/home_page.dart';
import 'core/presentation/widgets/lifecycle_manager.dart';
import 'core/services/navigation_service.dart';
import 'injection/injection_container.dart' as di;
import 'router.dart' as router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
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
        navigatorKey: di.sl<NavigationService>().navigatorKey,
        onGenerateRoute: router.generateRoute,
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
