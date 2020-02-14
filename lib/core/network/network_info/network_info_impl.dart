import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

import 'network_info.dart';

@lazySingleton
@injectable
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
