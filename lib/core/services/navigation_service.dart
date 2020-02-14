import 'package:injectable/injectable.dart';

import 'stoppable_service.dart';
import 'package:flutter/material.dart';

@lazySingleton
@injectable
class NavigationService extends StoppableService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo<T>(String routeName, {Object arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateWithReplacement<T>(String routeName, {T arguments}) {
    return navigatorKey.currentState.pushReplacementNamed(routeName, arguments: arguments);
  }

  bool goBack() {
    return navigatorKey.currentState.pop();
  }
}
