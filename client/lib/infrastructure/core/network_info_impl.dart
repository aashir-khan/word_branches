import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/i_network_info.dart';

@LazySingleton(as: INetworkInfo)
class NetworkInfoImpl implements INetworkInfo {
  final Connectivity connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isNotConnected async {
    final result = await connectionChecker.checkConnectivity();
    return result == ConnectivityResult.none;
  }
}
