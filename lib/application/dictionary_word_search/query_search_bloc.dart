import 'dart:async';
import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dr_words/application/dictionary_word_search/bloc.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/core/usecase.dart';
import 'package:dr_words/domain/dictionary_word_search/usecases/add_new_recently_searched_word.dart'
    as add_new_use_case;
import 'package:dr_words/domain/dictionary_word_search/usecases/get_query_search_results.dart' as get_results_use_case;
import 'package:dr_words/domain/dictionary_word_search/usecases/get_recently_searched_words.dart'
    as get_recent_use_case;
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:rxdart/rxdart.dart';

const serverFailureMessage = 'An error occurred trying to fetch search results';
const networkFailureMessage = 'Seems like you are not connected to the Internet';
const localDatabaseProcessingFailureMessage =
    'An error occurred trying to access/store a recently searched word on your device for retrieving';

@injectable
class QuerySearchBloc extends Bloc<QuerySearchEvent, QuerySearchState> {
  final get_recent_use_case.GetRecentlySearchedWords getRecentlySearchedWords;
  final get_results_use_case.GetQuerySearchResults getQuerySearchResults;
  final add_new_use_case.AddNewRecentlySearchedWord addNewRecentlySearchedWord;

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
        final resultEither = await getQuerySearchResults.call(get_results_use_case.Params(query: event.query));

        yield* resultEither.fold(
          (failure) async* {
            yield QuerySearchErrorState(message: _mapFailureToMessage(failure));
          },
          (results) async* {
            yield QuerySearchLoadedState(words: results);
          },
        );
      }
    } else if (event is AddNewRecentlySearchedWordEvent) {
      yield Loading();
      final resultEither =
          await addNewRecentlySearchedWord.call(add_new_use_case.Params(newWordToAdd: event.newRecentlySearchedWord));

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
          yield results.isEmpty ? Empty() : QuerySearchRecentlySearchedWordsLoadedState(recentlySearchedWords: results);
        },
      );
    }
  }

  @override
  Stream<Transition<QuerySearchEvent, QuerySearchState>> transformEvents(
    Stream<QuerySearchEvent> events,
    Stream<Transition<QuerySearchEvent, QuerySearchState>> Function(QuerySearchEvent) transitionFn,
  ) {
    final debounceStream =
        events.where((event) => event is ModifyQueryEvent).debounceTime(const Duration(milliseconds: 500));
    final nonDebounceStream = events.where((event) => event is! ModifyQueryEvent);
    return super.transformEvents(StreamGroup.merge([debounceStream, nonDebounceStream]), transitionFn);
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return serverFailureMessage;
    case NetworkFailure:
      return networkFailureMessage;
    case LocalDatabaseProcessingFailure:
      return localDatabaseProcessingFailureMessage;
    default:
      return 'Unexpected Error';
  }
}
