import 'package:flutter/material.dart';

import 'core/services/navigation_service.dart';
import 'lifecycle_manager.dart';
import 'locator.dart';
import 'ui/router.dart' as router;
import 'core/constants/routes_path.dart' as routes;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      child: MaterialApp(
        title: 'Dr. Words',
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.generateRoute,
        initialRoute: routes.HomeRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
