import 'package:injectable/injectable.dart';
import 'package:word_branches/config/env/env_config.dart';

import '../../injection.dart';

@LazySingleton()
class EnvVariables {
  String baseApiUrl;
  Map<String, String> oxfordApiHeaders;

  EnvVariables(String environment) {
    if (environment == Env.production) {
      baseApiUrl = EnvConfig.baseApiUrlProd;
    } else if (environment == Env.development) {
      baseApiUrl = EnvConfig.baseApiUrlDev;
    }

    oxfordApiHeaders = EnvConfig.oxfordApiHeaders;
  }
}
