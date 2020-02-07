import 'package:dr_words/core/network/network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@injectable
class MockNetworkInfo extends Mock implements NetworkInfo {}
