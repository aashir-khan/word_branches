import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:injectable/injectable.dart';

@injectable
@lazySingleton
class NetworkInfoFake implements NetworkInfo {
  Future<bool> get isConnected => Future.value(true);
}
