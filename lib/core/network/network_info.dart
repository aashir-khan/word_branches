import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(NetworkInfoImpl)
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
