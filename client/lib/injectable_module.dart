import 'package:audioplayers/audioplayers.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Connectivity get connectionChecker => Connectivity();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  AudioPlayer get audioPlayer => AudioPlayer();
}
