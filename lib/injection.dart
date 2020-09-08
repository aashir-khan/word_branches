import 'package:dr_words/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) => $initGetIt(getIt, environment: environment);
