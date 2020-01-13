import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:get_it/get_it.dart';

import 'core/services/api/api_service.dart';
import 'core/services/api/fake_api_service.dart';
import 'core/services/navigation_service.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  locator.registerFactory(() => QuerySearchBloc());
  // Services
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton<ApiService>(
      () => USE_FAKE_IMPLEMENTATION ? FakeApiService() : FakeApiService());
}
