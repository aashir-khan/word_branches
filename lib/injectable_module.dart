import 'package:audioplayer/audioplayer.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  Dio get dio {
    final dioInstance = Dio();
    dioInstance.interceptors.add(DioCacheManager(CacheConfig()).interceptor as Interceptor);
    return dioInstance;
  }

  AudioPlayer get audioPlayer => AudioPlayer();

  @lazySingleton
  NavigationService get navigationService;
}
