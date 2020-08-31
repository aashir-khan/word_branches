import 'package:audioplayer/audioplayer.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:injectable/injectable.dart';

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

  // @preResolve
  // Future<AppDatabase> get database => $FloorAppDatabase.databaseBuilder('app_database.db').build();

}
