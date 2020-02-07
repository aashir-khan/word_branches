import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await configureInjection(Env.test);
  });

  group('isConnected', () {
    test('should forward the call to DataConnectionChecker.hasConnection', () async {
      // arrange
      final mockDataConnectionChecker = getIt<DataConnectionChecker>();
      final networkInfo = getIt<NetworkInfoImpl>();
      final tHasConnectionFuture = Future.value(true);

      when(mockDataConnectionChecker.hasConnection).thenAnswer((_) => tHasConnectionFuture);

      // act
      final result = networkInfo.isConnected;

      // assert
      expect(result, tHasConnectionFuture);
    });
  });
}
