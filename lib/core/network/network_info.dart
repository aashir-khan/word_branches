import 'package:dr_words/core/network/connection_checker_wrapper.dart';
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
  final ConnectionCheckerWrapper connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.instance.hasConnection;
}
