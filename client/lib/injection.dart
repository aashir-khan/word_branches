import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config/env/env_variables.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void _configureInjection(Environment environment) => $initGetIt(getIt, environment: environment.name);

void configureInjection(Environment environment) {
  getIt.registerSingleton<Environment>(environment);
  _configureInjection(environment);

  if (environment.name != Environment.test) {
    getIt.allowReassignment = true;

    final dioInstance = Dio(BaseOptions(baseUrl: getIt<EnvVariables>().baseApiUrl));
    dioInstance.interceptors.add(DioCacheManager(CacheConfig()).interceptor as Interceptor);
    getIt.registerLazySingleton<Dio>(() => dioInstance);
  }
}
