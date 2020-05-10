import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

import 'network_info.dart';

@lazySingleton
@RegisterAs(NetworkInfo, env: Env.production)
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
