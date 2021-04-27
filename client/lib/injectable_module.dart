import 'package:audioplayer/audioplayer.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Connectivity get connectionChecker => Connectivity();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  AudioPlayer get audioPlayer => AudioPlayer();

  @lazySingleton
  NavigationService get navigationService;
}
