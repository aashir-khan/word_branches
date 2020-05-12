import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@RegisterAs(NetworkInfo, env: Env.development)
class NetworkInfoFake implements NetworkInfo {
  @override
  Future<bool> get isConnected => Future.value(true);
}
