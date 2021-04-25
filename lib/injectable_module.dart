import 'package:audioplayer/audioplayer.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Connectivity get connectionChecker => Connectivity();

  Dio get dio {
    final dioInstance = Dio();
    return dioInstance;
  }

  AudioPlayer get audioPlayer => AudioPlayer();

  @lazySingleton
  NavigationService get navigationService;
}
