import 'package:dr_words/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  // Services
  locator.registerLazySingleton(() => NavigationService());
}
