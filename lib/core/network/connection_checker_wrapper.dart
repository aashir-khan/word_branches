import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class ConnectionCheckerWrapper {
  DataConnectionChecker get instance => DataConnectionChecker();
}
