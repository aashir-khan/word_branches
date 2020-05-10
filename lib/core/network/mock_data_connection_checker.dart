import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(DataConnectionChecker, env: Env.test)
class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}
