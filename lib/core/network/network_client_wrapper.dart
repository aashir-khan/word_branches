import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class NetworkClientWrapper {
  Client get instance => Client();
}
