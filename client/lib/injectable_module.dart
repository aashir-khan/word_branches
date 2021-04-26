import 'package:audioplayer/audioplayer.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Connectivity get connectionChecker => Connectivity();

  @lazySingleton
  Dio get dio => Dio();

  AudioPlayer get audioPlayer => AudioPlayer();

  @lazySingleton
  NavigationService get navigationService;
}
