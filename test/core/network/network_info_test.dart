import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/network/network_info/network_info_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/setup_all_for_test.dart';
import '../../test_injection.dart';

Future<void> main() async {
  await setupInjectionForTest();

  group('isConnected', () {
    test('should forward the call to DataConnectionChecker.hasConnection', () async {
      // arrange
      final mockDataConnectionChecker = getIt<DataConnectionChecker>();
      final networkInfo = NetworkInfoImpl(mockDataConnectionChecker);
      final tHasConnectionFuture = Future.value(true);

      when(mockDataConnectionChecker.hasConnection).thenAnswer((_) => tHasConnectionFuture);

      // act
      final result = networkInfo.isConnected;

      // assert
      expect(result, tHasConnectionFuture);
    });
  });
}
