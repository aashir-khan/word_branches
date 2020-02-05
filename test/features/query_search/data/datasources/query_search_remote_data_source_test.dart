import 'dart:convert';

import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/core/network/network_client_wrapper.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:faker/faker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:matcher/matcher.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockNetworkClient extends Mock implements NetworkClientWrapper {}

class MockAccountDetails extends Mock implements AccountDetails {}

void main() {
  QuerySearchRemoteDataSource dataSource;
  MockNetworkClient mockHttpClient;
  MockAccountDetails mockAccountDetails;

  setUp(() {
    mockHttpClient = MockNetworkClient();
    mockAccountDetails = MockAccountDetails();
    dataSource = QuerySearchRemoteDataSourceImpl(
      networkClient: mockHttpClient,
      accountDetails: mockAccountDetails,
    );

    when(mockAccountDetails.oxfordAPIDetails).thenReturn({});
  });

  group('getQuerySearchResults', () {
    final tQuerySearchResultsModel =
        QuerySearchResultsModel.fromJson(json.decode(fixture('query_search/query_search_results.json')));
    final tQuery = faker.lorem.word();

    test('should return QuerySearchResultsModel when the response code is 200 (success)', () async {
      // arrange
      when(mockHttpClient.instance.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response(fixture('query_search/query_search_results.json'), 200));

      // act
      final result = await dataSource.getQuerySearchResults(query: tQuery);

      // assert
      expect(result, equals(tQuerySearchResultsModel));
    }, skip: 'TODO: Figure out how to mock mockHttpClient.instance properly');

    test('should throw a ServerException when the response code is 404 or other', () async {
      // arrange
      when(mockHttpClient.instance.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Something went wrong', 404));

      // act
      final call = dataSource.getQuerySearchResults;

      // assert
      expect(
          () => call(
                query: tQuery,
                options: {},
              ),
          throwsA(TypeMatcher<ServerException>()));
    }, skip: 'TODO: Figure out how to mock mockHttpClient.instance properly');
  });
}
