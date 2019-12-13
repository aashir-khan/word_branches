import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/services/navigation_service.dart';
import 'lifecycle_manager.dart';
import 'locator.dart';
import 'ui/router.dart' as router;
import 'ui/views/home_view.dart';

void main() {
  setupLocator();
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        title: 'Dr. Words',
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.generateRoute,
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
