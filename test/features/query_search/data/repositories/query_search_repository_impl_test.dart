import 'package:dartz/dartz.dart';
import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:dr_words/features/query_search/data/datasources/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/models/query_search_metadata_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_single_result_model.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock implements QuerySearchRemoteDataSource {
}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  QuerySearchRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = QuerySearchRepositoryImpl(
        networkInfo: mockNetworkInfo, remoteDataSource: mockRemoteDataSource);
  });

  group('getQuerySearchResults', () {
    final tQuery = 'test';
    final tQuerySearchMetadata =
        QuerySearchMetadataModel(limit: 1, offset: 0, total: 1);
    final tQuerySearchSingleResult1 =
        QuerySearchSingleResultModel(id: 'test', label: 'test');
    final tQuerySearchSingleResult2 =
        QuerySearchSingleResultModel(id: 'test2', label: 'test2');

    final tQuerySearchSingleResultList = [
      tQuerySearchSingleResult1,
      tQuerySearchSingleResult2
    ];

    final tQuerySearchResultsModel = QuerySearchResultsModel(
      metadata: tQuerySearchMetadata,
      results: tQuerySearchSingleResultList,
    );

    final QuerySearchResults tQuerySearchResults = tQuerySearchResultsModel;

    test('should check if the device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      // act
      repository.getQuerySearchResults(query: tQuery);

      // assert
      verify(mockNetworkInfo.isConnected);
    });

    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test(
          'should return remote data when the call to remote data source is successful',
          () async {
        // arrange
        when(mockRemoteDataSource.getQuerySearchResults(
                query: anyNamed('query')))
            .thenAnswer((_) async => tQuerySearchResultsModel);

        // act
        final result = await repository.getQuerySearchResults(query: tQuery);

        // assert
        verify(mockRemoteDataSource.getQuerySearchResults(query: tQuery));
        expect(result, equals(Right(tQuerySearchResults)));
      });

      test(
          'should return server failure when the call to remote data source is unsuccessful',
          () async {
        // arrange
        when(mockRemoteDataSource.getQuerySearchResults(
                query: anyNamed('query')))
            .thenThrow(ServerException());

        // act
        final result = await repository.getQuerySearchResults(query: tQuery);

        // assert
        verify(mockRemoteDataSource.getQuerySearchResults(query: tQuery));
        expect(result, equals(Left(ServerFailure())));
      });
    });

    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      test('should return NetworkFailure when there is no internet connection',
          () async {
        // act
        final result = await repository.getQuerySearchResults(query: tQuery);

        // assert
        verifyNoMoreInteractions(mockRemoteDataSource);
        expect(result, equals(Left(NetworkFailure())));
      });
    });
  });
}
