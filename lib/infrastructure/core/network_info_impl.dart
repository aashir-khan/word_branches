import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INetworkInfo)
class NetworkInfoImpl implements INetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
