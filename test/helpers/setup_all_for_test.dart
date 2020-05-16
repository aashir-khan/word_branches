import 'package:flutter_test/flutter_test.dart';

import '../test_injection.dart';

Future<void> setupInjectionForTest() {
  setUpAll(() async {
    configureTestInjection();
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  return Future.value(null);
}
