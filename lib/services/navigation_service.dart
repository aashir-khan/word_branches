import 'stoppable_service.dart';
import 'package:flutter/material.dart';

class NavigationService extends StoppableService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  bool goBack() {
    return navigatorKey.currentState.pop();
  }
}
