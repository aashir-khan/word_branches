import 'package:dr_words/core/services/navigation/concrete_navigation_service.dart';
import 'package:dr_words/core/services/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';

import './core/viewmodels/home_model.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  // Services
  locator.registerLazySingleton<NavigationService>(
      () => ConcreteNavigationService());

  // View Models
  locator.registerLazySingleton(() => HomeModel());
}
