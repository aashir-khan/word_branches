import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@registerModule
abstract class InjectableModule {
  @lazySingleton
  http.Client get httpClient => http.Client();

  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();
}
