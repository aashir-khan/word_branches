import 'package:dr_words/injection.iconfig.dart';
import 'package:injectable/injectable.dart';

@injectableInit
void configureInjection(String environment) => $initGetIt(environment: environment);

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}
