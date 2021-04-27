import 'package:injectable/injectable.dart';
import 'package:word_branches/config/env/env_config.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class EnvVariables {
  String baseApiUrl;
  Map<String, String> oxfordApiHeaders;

  EnvVariables(Environment environment) {
    if (environment.name == Environment.prod) {
      baseApiUrl = EnvConfig.baseApiUrlProd;
    } else if (environment.name == Environment.dev) {
      baseApiUrl = EnvConfig.baseApiUrlDev;
    }

    oxfordApiHeaders = EnvConfig.oxfordApiHeaders;
  }
}
