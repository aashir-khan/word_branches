import 'package:dr_words/core/network/connection_checker_wrapper.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDataConnectionCheckerWrapper extends Mock implements ConnectionCheckerWrapper {}

void main() {
  NetworkInfoImpl networkInfo;
  MockDataConnectionCheckerWrapper mockConnectionCheckerWrapper;

  setUp(() {
    mockConnectionCheckerWrapper = MockDataConnectionCheckerWrapper();
    networkInfo = NetworkInfoImpl(mockConnectionCheckerWrapper);
  });

  group('isConnected', () {
    test('should forward the call to DataConnectionChecker.hasConnection', () async {
      // arrange
      final tHasConnectionFuture = Future.value(true);

      // Figure out how to pick properly
      when(mockConnectionCheckerWrapper.instance.hasConnection).thenAnswer((_) => tHasConnectionFuture);

      // act
      final result = networkInfo.isConnected;

      // assert
      expect(result, tHasConnectionFuture);
    }, skip: 'TODO: Figure out how to mock mockConnectionCheckerWrapper properly');
  });
}
