import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_metadata.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart'
    as addNewWordUsecase;
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart'
    as getQueryUsecase;
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart'
    as getRecentlySearchedUsecase;
import 'package:dr_words/features/query_search/presentation/bloc/bloc.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetRecentlySearchedWords extends Mock
    implements getRecentlySearchedUsecase.GetRecentlySearchedWords {}

class MockGetQuerySearchResults extends Mock
    implements getQueryUsecase.GetQuerySearchResults {}

class MockAddNewRecentlySearchedWord extends Mock
    implements addNewWordUsecase.AddNewRecentlySearchedWord {}

void main() {
  QuerySearchBloc bloc;
  MockGetRecentlySearchedWords mockGetRecentlySearchedWords;
  MockGetQuerySearchResults mockGetQuerySearchResults;
  MockAddNewRecentlySearchedWord mockAddNewRecentlySearchedWord;

  setUp(() {
    mockGetRecentlySearchedWords = MockGetRecentlySearchedWords();
    mockGetQuerySearchResults = MockGetQuerySearchResults();
    mockAddNewRecentlySearchedWord = MockAddNewRecentlySearchedWord();

    bloc = QuerySearchBloc(
      getRecentlySearchedWords: mockGetRecentlySearchedWords,
      addNewRecentlySearchedWord: mockAddNewRecentlySearchedWord,
      getQuerySearchResults: mockGetQuerySearchResults,
    );
  });

  test('initialState should be Empty', () async {
    // assert
    expect(bloc.initialState, equals(Empty()));
  });

  group(
    'GetRecentlySearchedWordsEvent',
    () {
      final tListOfQuerySearchSingleResult = [
        QuerySearchSingleResult(id: 'test', label: 'test')
      ];

      test('should get data using the GetRecentlySearchedWords use case',
          () async {
        // act
        bloc.add(GetRecentlySearchedWordsEvent());
        await untilCalled(mockGetRecentlySearchedWords.call(any));

        // assert
        verify(mockGetRecentlySearchedWords.call(NoParams()));
      });

      test(
          'should emit [Loading, QuerySearchErrorState] when there is an issue adding the recently searched word to the usecase - local database processing failure',
          () async {
        // arrange
        when(mockGetRecentlySearchedWords.call(any))
            .thenAnswer((_) async => Left(LocalDatabaseProcessingFailure()));

        // assert later
        final expected = [
          Empty(),
          Loading(),
          QuerySearchErrorState(
              message: LOCAL_DATABASE_PROCESSING_FAILURE_MESSAGE)
        ];
        expectLater(bloc, emitsInOrder(expected));

        // act
        bloc.add(GetRecentlySearchedWordsEvent());
      });

      test(
          'should emit [Loading, QuerySearchNewWordAddedState] when new word is successfully added',
          () async {
        // arrange
        when(mockGetRecentlySearchedWords.call(any))
            .thenAnswer((_) async => Right(tListOfQuerySearchSingleResult));

        // assert later
        final expected = [
          Empty(),
          Loading(),
          QuerySearchRecentlySearchedWordsLoadedState(
              tListOfQuerySearchSingleResult)
        ];

        expectLater(bloc, emitsInOrder(expected));

        // act
        bloc.add(GetRecentlySearchedWordsEvent());
      }, timeout: Timeout(Duration(seconds: 4)));
    },
  );

  group('ModifyQueryEvent', () {
    final tQuery = 'test';

    final tQuerySearchMetadata = QuerySearchMetadata(
      limit: 1,
      offset: 1,
      total: 1,
    );

    final tQuerySearchSingleResult = QuerySearchSingleResult(
      id: '1',
      label: 'test',
    );

    final tQuerySearchResults = QuerySearchResults(
      metadata: tQuerySearchMetadata,
      results: [tQuerySearchSingleResult],
    );

    test('should get data from the GetQuerySearchResults use case', () async {
      // act
      bloc.add(ModifyQueryEvent(query: tQuery));
      await untilCalled(mockGetQuerySearchResults.call(any));

      // assert
      verify(mockGetQuerySearchResults
          .call(getQueryUsecase.Params(query: tQuery)));
    });

    test(
        'should emit [Loading, QuerySearchErrorState] when there is an issue getting the query results from the usecase - server failure',
        () async {
      // arrange
      when(mockGetQuerySearchResults.call(any))
          .thenAnswer((_) async => Left(ServerFailure()));

      // assert later
      final expected = [
        Empty(),
        Loading(),
        QuerySearchErrorState(message: SERVER_FAILURE_MESSAGE)
      ];
      expectLater(bloc, emitsInOrder(expected));

      // act
      bloc.add(ModifyQueryEvent(query: tQuery));
    });

    test(
        'should emit [Loading, QuerySearchErrorState] when there is an issue getting the query results from the usecase - network failure',
        () async {
      // arrange
      when(mockGetQuerySearchResults.call(any))
          .thenAnswer((_) async => Left(NetworkFailure()));

      // assert later
      final expected = [
        Empty(),
        Loading(),
        QuerySearchErrorState(message: NETWORK_FAILURE_MESSAGE)
      ];
      expectLater(bloc, emitsInOrder(expected));

      // act
      bloc.add(ModifyQueryEvent(query: tQuery));
    });

    test(
        'should emit [Loading, QuerySearchLoadedState] when data is gotten successfully',
        () async {
      // arrange
      when(mockGetQuerySearchResults.call(any))
          .thenAnswer((_) async => Right(tQuerySearchResults));

      // assert later
      final expected = [
        Empty(),
        Loading(),
        QuerySearchLoadedState(querySearchResults: tQuerySearchResults)
      ];

      expectLater(bloc, emitsInOrder(expected));

      // act
      bloc.add(ModifyQueryEvent(query: tQuery));
    });
  });

  group('AddNewRecentlySearchedWordEvent', () {
    final tNewWordToAdd = QuerySearchSingleResult(
      id: 'test',
      label: 'test',
    );

    test('should add new data using the AddNewRecentlySearchedWord use case',
        () async {
      // act
      bloc.add(AddNewRecentlySearchedWordEvent(
          newRecentlySearchedWord: tNewWordToAdd));
      await untilCalled(mockAddNewRecentlySearchedWord.call(any));

      // assert
      verify(mockAddNewRecentlySearchedWord
          .call(addNewWordUsecase.Params(newWordToAdd: tNewWordToAdd)));
    });

    test(
        'should emit [Loading, QuerySearchErrorState] when there is an issue adding the recently searched word to the usecase - local database processing failure',
        () async {
      // arrange
      when(mockAddNewRecentlySearchedWord.call(any))
          .thenAnswer((_) async => Left(LocalDatabaseProcessingFailure()));

      // assert later
      final expected = [
        Empty(),
        Loading(),
        QuerySearchErrorState(
            message: LOCAL_DATABASE_PROCESSING_FAILURE_MESSAGE)
      ];
      expectLater(bloc, emitsInOrder(expected));

      // act
      bloc.add(AddNewRecentlySearchedWordEvent(
          newRecentlySearchedWord: tNewWordToAdd));
    });

    test(
        'should emit [Loading, QuerySearchNewWordAddedState] when new word is successfully added',
        () async {
      // arrange
      when(mockAddNewRecentlySearchedWord.call(any))
          .thenAnswer((_) async => Right(true));

      // assert later
      final expected = [Empty(), Loading(), QuerySearchNewWordAddedState()];

      expectLater(bloc, emitsInOrder(expected));

      // act
      bloc.add(AddNewRecentlySearchedWordEvent(
          newRecentlySearchedWord: tNewWordToAdd));
    });
  });
}
