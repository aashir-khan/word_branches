import 'package:get_it/get_it.dart';

import 'core/services/navigation_service.dart';
import 'core/viewmodels/home_model.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  // Services
  locator.registerLazySingleton(() => NavigationService());

  // View Models
  locator.registerLazySingleton(() => HomeModel());
}
