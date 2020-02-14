import 'package:dr_words/core/network/network_info/mock_network_info.dart';
import 'package:dr_words/core/network/network_info/network_info_fake.dart';
import 'package:dr_words/core/network/network_info/network_info_impl.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(NetworkInfoImpl, env: Env.production)
@Bind.toType(NetworkInfoFake, env: Env.development)
@Bind.toType(MockNetworkInfo, env: Env.test)
@lazySingleton
@injectable
abstract class NetworkInfo {
  Future<bool> get isConnected;
}
