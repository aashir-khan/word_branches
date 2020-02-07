import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word_fake.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results_fake.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart'
    as addNewWordUsecase;
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart' as getQueryUsecase;
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart'
    as getRecentlySearchedUsecase;
import 'package:dr_words/features/query_search/presentation/bloc/bloc.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  QuerySearchBloc bloc;
  getRecentlySearchedUsecase.GetRecentlySearchedWords mockGetRecentlySearchedWords;
  getQueryUsecase.GetQuerySearchResults mockGetQuerySearchResults;
  addNewWordUsecase.AddNewRecentlySearchedWord mockAddNewRecentlySearchedWord;

  setUpAll(() async {
    await configureInjection(Env.test);
  });

  setUp(() {
    mockGetRecentlySearchedWords = getIt<getRecentlySearchedUsecase.GetRecentlySearchedWords>();
    mockGetQuerySearchResults = getIt<getQueryUsecase.GetQuerySearchResults>();
    mockAddNewRecentlySearchedWord = getIt<addNewWordUsecase.AddNewRecentlySearchedWord>();

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
      final tListOfDictionaryWord = [DictionaryWordFake.fromFakeData()];

      test('should get data using the GetRecentlySearchedWords use case', () async {
        // act
        bloc.add(GetRecentlySearchedWordsEvent());
        await untilCalled(mockGetRecentlySearchedWords.call(any));

        // assert
        verify(mockGetRecentlySearchedWords.call(NoParams()));
      });

      blocTest(
        'should emit [Loading, QuerySearchErrorState] when there is an issue adding the recently searched word to the usecase - local database processing failure',
        build: () {
          when(mockGetRecentlySearchedWords.call(any)).thenAnswer((_) async => Left(LocalDatabaseProcessingFailure()));
          return bloc;
        },
        act: (bloc) => bloc.add(GetRecentlySearchedWordsEvent()),
        expect: [Empty(), Loading(), QuerySearchErrorState(message: LOCAL_DATABASE_PROCESSING_FAILURE_MESSAGE)],
      );

      blocTest(
        'should emit [Loading, QuerySearchNewWordAddedState] when new word is successfully added',
        build: () {
          when(mockGetRecentlySearchedWords.call(any)).thenAnswer((_) async => Right(tListOfDictionaryWord));
          return bloc;
        },
        act: (bloc) => bloc.add(GetRecentlySearchedWordsEvent()),
        expect: [
          Empty(),
          Loading(),
          QuerySearchRecentlySearchedWordsLoadedState(recentlySearchedWords: tListOfDictionaryWord)
        ],
      );
    },
  );

  group('ModifyQueryEvent', () {
    final tQuery = faker.lorem.word();
    final tEmptyQuery = '';

    final tQuerySearchResults = QuerySearchResultsFake.fromFakeData();

    test('should get data from the GetQuerySearchResults use case', () async {
      // act
      bloc.add(ModifyQueryEvent(query: tQuery));
      await untilCalled(mockGetQuerySearchResults.call(any));

      // assert
      verify(mockGetQuerySearchResults.call(getQueryUsecase.Params(query: tQuery)));
    });

    blocTest(
      'should emit [Empty] when query is empty',
      build: () => bloc,
      act: (bloc) => bloc.add(ModifyQueryEvent(query: tEmptyQuery)),
      expect: [Empty()],
    );

    blocTest(
      'should emit [Loading, QuerySearchErrorState] when there is an issue getting the query results from the usecase - server failure',
      build: () {
        when(mockGetQuerySearchResults.call(any)).thenAnswer((_) async => Left(ServerFailure()));

        return bloc;
      },
      act: (bloc) => bloc.add(ModifyQueryEvent(query: tQuery)),
      expect: [Empty(), Loading(), QuerySearchErrorState(message: SERVER_FAILURE_MESSAGE)],
    );

    blocTest(
      'should emit [Loading, QuerySearchErrorState] when there is an issue getting the query results from the usecase - server failure',
      build: () {
        when(mockGetQuerySearchResults.call(any)).thenAnswer((_) async => Left(ServerFailure()));
        return bloc;
      },
      act: (bloc) => bloc.add(ModifyQueryEvent(query: tQuery)),
      expect: [Empty(), Loading(), QuerySearchErrorState(message: SERVER_FAILURE_MESSAGE)],
    );

    blocTest(
      'should emit [Loading, QuerySearchErrorState] when there is an issue getting the query results from the usecase - network failure',
      build: () {
        when(mockGetQuerySearchResults.call(any)).thenAnswer((_) async => Left(NetworkFailure()));

        return bloc;
      },
      act: (bloc) => bloc.add(ModifyQueryEvent(query: tQuery)),
      expect: [Empty(), Loading(), QuerySearchErrorState(message: NETWORK_FAILURE_MESSAGE)],
    );

    blocTest(
      'should emit [Loading, QuerySearchLoadedState] when data is gotten successfully',
      build: () {
        when(mockGetQuerySearchResults.call(any)).thenAnswer((_) async => Right(tQuerySearchResults));

        return bloc;
      },
      act: (bloc) => bloc.add(ModifyQueryEvent(query: tQuery)),
      expect: [Empty(), Loading(), QuerySearchLoadedState(querySearchResults: tQuerySearchResults)],
    );
  });

  group('AddNewRecentlySearchedWordEvent', () {
    final tNewWordToAdd = DictionaryWordFake.fromFakeData();

    test('should add new data using the AddNewRecentlySearchedWord use case', () async {
      // act
      bloc.add(AddNewRecentlySearchedWordEvent(newRecentlySearchedWord: tNewWordToAdd));
      await untilCalled(mockAddNewRecentlySearchedWord.call(any));

      // assert
      verify(mockAddNewRecentlySearchedWord.call(addNewWordUsecase.Params(newWordToAdd: tNewWordToAdd)));
    });

    blocTest(
      'should emit [Loading, QuerySearchErrorState] when there is an issue adding the recently searched word to the usecase - local database processing failure',
      build: () {
        when(mockAddNewRecentlySearchedWord.call(any)).thenAnswer((_) async => Left(LocalDatabaseProcessingFailure()));

        return bloc;
      },
      act: (bloc) => bloc.add(AddNewRecentlySearchedWordEvent(newRecentlySearchedWord: tNewWordToAdd)),
      expect: [Empty(), Loading(), QuerySearchErrorState(message: LOCAL_DATABASE_PROCESSING_FAILURE_MESSAGE)],
    );

    blocTest(
      'should emit [Loading, QuerySearchNewWordAddedState] when new word is successfully added',
      build: () {
        when(mockAddNewRecentlySearchedWord.call(any)).thenAnswer((_) async => Right(true));

        return bloc;
      },
      act: (bloc) => bloc.add(AddNewRecentlySearchedWordEvent(newRecentlySearchedWord: tNewWordToAdd)),
      expect: [Empty(), Loading(), QuerySearchNewWordAddedState()],
    );
  });
}
