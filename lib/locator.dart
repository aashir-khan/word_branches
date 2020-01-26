import 'package:get_it/get_it.dart';

import 'core/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Services
  locator.registerLazySingleton(() => NavigationService());
}
