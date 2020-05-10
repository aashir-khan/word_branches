import 'package:dr_words/injection.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(http.Client, env: Env.test)
class MockHttpClient extends Mock implements http.Client {}
