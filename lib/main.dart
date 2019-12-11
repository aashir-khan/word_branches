import 'package:flutter/material.dart';

import './ui/router.dart' as router;
import './core/constants/routes_path.dart' as routes;
import './locator.dart';
import './core/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr. Words',
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.HomeRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
