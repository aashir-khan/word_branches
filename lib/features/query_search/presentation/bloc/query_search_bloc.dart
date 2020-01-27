import 'dart:async';
import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart'
    as addNewUsecase;
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart'
    as getResultsUsecase;
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart'
    as getRecentUsecase;
import 'package:flutter/foundation.dart';
import './bloc.dart';
import 'package:rxdart/rxdart.dart';

const SERVER_FAILURE_MESSAGE =
    'An error occurred trying to fetch search results';
const NETWORK_FAILURE_MESSAGE =
    'Seems like you are not connected to the Internet';
const LOCAL_DATABASE_PROCESSING_FAILURE_MESSAGE =
    'An error occurred trying to access/store a recently searched word on your device for retrieving';

class QuerySearchBloc extends Bloc<QuerySearchEvent, QuerySearchState> {
  final getRecentUsecase.GetRecentlySearchedWords getRecentlySearchedWords;
  final getResultsUsecase.GetQuerySearchResults getQuerySearchResults;
  final addNewUsecase.AddNewRecentlySearchedWord addNewRecentlySearchedWord;

  QuerySearchBloc({
    @required this.getRecentlySearchedWords,
    @required this.getQuerySearchResults,
    @required this.addNewRecentlySearchedWord,
  });

  @override
  QuerySearchState get initialState => Empty();

  @override
  Stream<QuerySearchState> mapEventToState(
    QuerySearchEvent event,
  ) async* {
    if (event is ModifyQueryEvent) {
      if (event.query.isEmpty) {
        yield Empty();
        return;
      } else {
        yield Loading();
        final resultEither = await getQuerySearchResults
            .call(getResultsUsecase.Params(query: event.query));

        yield* resultEither.fold(
          (failure) async* {
            yield QuerySearchErrorState(message: _mapFailureToMessage(failure));
          },
          (results) async* {
            yield QuerySearchLoadedState(querySearchResults: results);
          },
        );
      }
    } else if (event is AddNewRecentlySearchedWordEvent) {
      yield Loading();
      final resultEither = await addNewRecentlySearchedWord.call(
          addNewUsecase.Params(newWordToAdd: event.newRecentlySearchedWord));

      yield* resultEither.fold(
        (failure) async* {
          yield QuerySearchErrorState(message: _mapFailureToMessage(failure));
        },
        (results) async* {
          yield QuerySearchNewWordAddedState();
        },
      );
    } else if (event is GetRecentlySearchedWordsEvent) {
      yield Loading();
      final resultEither = await getRecentlySearchedWords.call(NoParams());

      yield* resultEither.fold(
        (failure) async* {
          yield QuerySearchErrorState(message: _mapFailureToMessage(failure));
        },
        (results) async* {
          yield QuerySearchRecentlySearchedWordsLoadedState(results);
        },
      );
    }
  }

  @override
  Stream<QuerySearchState> transformEvents(Stream<QuerySearchEvent> events,
      Stream<QuerySearchState> Function(QuerySearchEvent) next) {
    final debounceStream = events
        .where((event) => event is ModifyQueryEvent)
        .debounceTime(Duration(milliseconds: 500));
    final nonDebounceStream =
        events.where((event) => event is! ModifyQueryEvent);
    return super.transformEvents(
        StreamGroup.merge([debounceStream, nonDebounceStream]), next);
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;
    case NetworkFailure:
      return NETWORK_FAILURE_MESSAGE;
    case LocalDatabaseProcessingFailure:
      return LOCAL_DATABASE_PROCESSING_FAILURE_MESSAGE;
    default:
      return 'Unexpected Error';
  }
}
