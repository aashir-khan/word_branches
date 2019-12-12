import 'package:dr_words/core/services/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

class ConcreteNavigationService implements NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  @override
  bool goBack() {
    return navigatorKey.currentState.pop();
  }
}
