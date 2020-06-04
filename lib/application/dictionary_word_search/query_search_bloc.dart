import 'dart:async';
import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dr_words/application/dictionary_word_search/bloc.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_remote_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_repository.dart';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

const serverFailureMessage = 'An error occurred trying to fetch search results';
const networkFailureMessage = 'Seems like you are not connected to the Internet';
const noResultsFoundMessage = 'No entry was found matching the query searched';
const localDatabaseProcessingFailureMessage =
    'An error occurred trying to access/store a recently searched word on your device for retrieving';

@injectable
class QuerySearchBloc extends Bloc<QuerySearchEvent, QuerySearchState> {
  final QuerySearchRepository querySearchRepository;

  QuerySearchBloc({@required this.querySearchRepository});

  @override
  QuerySearchState get initialState => const QuerySearchState.initial();

  @override
  Stream<QuerySearchState> mapEventToState(
    QuerySearchEvent event,
  ) async* {
    yield* event.when(
      modifyQuery: (query) async* {
        if (query.isEmpty) {
          yield const QuerySearchState.initial();
          return;
        } else {
          yield const QuerySearchState.loadInProgreess();
          final resultEither = await querySearchRepository.getQuerySearchResults(query: query);

          yield* resultEither.fold(
            (failure) async* {
              yield QuerySearchState.loadFailure(message: _mapRemoteFailureToMessage(failure));
            },
            (results) async* {
              yield QuerySearchState.loadSearchResultsSuccess(words: results);
            },
          );
        }
      },
      addNewRecentlySearchedWord: (word) async* {
        yield const QuerySearchState.loadInProgreess();
        final resultEither = await querySearchRepository.addNewRecentlySearchedWord(word);

        yield* resultEither.fold(
          (failure) async* {
            yield const QuerySearchState.loadFailure(message: localDatabaseProcessingFailureMessage);
          },
          (results) async* {
            yield const QuerySearchState.newWordAddedToRecentlySearchedWords();
          },
        );
      },
      getRecentlySearchedWords: () async* {
        yield const QuerySearchState.loadInProgreess();
        final resultEither = await querySearchRepository.getRecentlySearchedWords();

        yield* resultEither.fold(
          (failure) async* {
            yield const QuerySearchState.loadFailure(message: localDatabaseProcessingFailureMessage);
          },
          (results) async* {
            yield results.isEmpty
                ? const QuerySearchState.initial()
                : QuerySearchState.loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords: results);
          },
        );
      },
    );
  }

  @override
  Stream<Transition<QuerySearchEvent, QuerySearchState>> transformEvents(
    Stream<QuerySearchEvent> events,
    Stream<Transition<QuerySearchEvent, QuerySearchState>> Function(QuerySearchEvent) transitionFn,
  ) {
    final debounceStream =
        events.where((event) => event is QuerySearchEventModifyQuery).debounceTime(const Duration(milliseconds: 500));
    final nonDebounceStream = events.where((event) => event is! QuerySearchEventModifyQuery);
    return super.transformEvents(StreamGroup.merge([debounceStream, nonDebounceStream]), transitionFn);
  }
}

String _mapRemoteFailureToMessage(QuerySearchRemoteFailure failure) {
  return failure.when(
    networkError: () => networkFailureMessage,
    noResultsFound: () => noResultsFoundMessage,
    serverError: () => serverFailureMessage,
  );
}
