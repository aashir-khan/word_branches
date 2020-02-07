import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/network/mock_network_info.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(NetworkInfoImpl, env: Env.production)
@Bind.toType(NetworkInfoImpl, env: Env.development)
@Bind.toType(MockNetworkInfo, env: Env.test)
@lazySingleton
@injectable
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@lazySingleton
@injectable
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
