import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(NetworkInfo, env: Env.test)
class MockNetworkInfo extends Mock implements NetworkInfo {}
