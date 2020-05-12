import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/core/network/network_info/network_info.dart';
import 'package:dr_words/features/query_search/data/datasources/local/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/injection.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await configureInjection(Env.test);
  });

  QuerySearchRepositoryImpl repository;
  QuerySearchRemoteDataSource mockRemoteDataSource;
  QuerySearchLocalDataSource mockLocalDataSource;
  NetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = getIt<QuerySearchRemoteDataSource>();
    mockLocalDataSource = getIt<QuerySearchLocalDataSource>();
    mockNetworkInfo = getIt<NetworkInfo>();

    repository = getIt<QuerySearchRepositoryImpl>();
  });

  group('getQuerySearchResults', () {
    final tQuery = faker.lorem.word();
    final tQuerySearchResultsModel = QuerySearchResultsModel.fromFakeData();
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

      test('should return remote data when the call to remote data source is successful', () async {
        // arrange
        when(mockRemoteDataSource.getQuerySearchResults(query: anyNamed('query')))
            .thenAnswer((_) async => tQuerySearchResultsModel);

        // act
        final result = await repository.getQuerySearchResults(query: tQuery);

        // assert
        verify(mockRemoteDataSource.getQuerySearchResults(query: tQuery));
        expect(result, equals(Right(tQuerySearchResults)));
      });

      test('should return server failure when the call to remote data source is unsuccessful', () async {
        // arrange
        when(mockRemoteDataSource.getQuerySearchResults(query: anyNamed('query'))).thenThrow(ServerException());

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

      test('should return NetworkFailure when there is no internet connection', () async {
        // act
        final result = await repository.getQuerySearchResults(query: tQuery);

        // assert
        verifyNoMoreInteractions(mockRemoteDataSource);
        expect(result, equals(Left(NetworkFailure())));
      });
    });
  });

  group('getRecentlySearchedWords', () {
    final List<DictionaryWordModel> tDictionaryWordModelList = [DictionaryWordModel(id: 'test', label: 'test')];
    final List<DictionaryWord> tDictionaryWordList = tDictionaryWordModelList;

    test('should return local data when the call to local data is successful', () async {
      // arrange
      when(mockLocalDataSource.getRecentlySearchedWords()).thenAnswer((_) async => tDictionaryWordModelList);

      // act
      final result = await repository.getRecentlySearchedWords();

      // assert
      verify(mockLocalDataSource.getRecentlySearchedWords());
      expect(result, equals(Right(tDictionaryWordList)));
    });

    test('should return local database processing failure when the call to local data source is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataSource.getRecentlySearchedWords()).thenThrow(LocalDatabaseProcessingException());

      // act
      final result = await repository.getRecentlySearchedWords();

      // assert
      verify(mockLocalDataSource.getRecentlySearchedWords());
      expect(result, equals(Left(LocalDatabaseProcessingFailure())));
    });
  });
  group('addNewRecentlySearchedWord', () {
    final tNewWordToAddModel = DictionaryWordModel.fromFakeData();
    final DictionaryWord tNewWordToAdd = tNewWordToAddModel;
    test('should return true if the recently searched word is added successfully to the repository', () async {
      // arrange
      when(mockLocalDataSource.addNewRecentlySearchedWord(any)).thenAnswer((_) async => true);

      // act
      final result = await repository.addNewRecentlySearchedWord(tNewWordToAdd);

      // assert
      verify(mockLocalDataSource.addNewRecentlySearchedWord(tNewWordToAddModel));
      expect(result, Right(true));
    });
  });
}
