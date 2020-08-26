import 'dart:async';
import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_repository.dart';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word_search_event.dart';
part 'dictionary_word_search_state.dart';

part 'dictionary_word_search_bloc.freezed.dart';

const _serverFailureMessage = 'An error occurred trying to fetch search results';
const _networkFailureMessage = 'Seems like you are not connected to the Internet';
const _noResultsFoundMessage = 'No entry was found matching the query searched';
const _localDatabaseProcessingFailureMessage =
    'An error occurred trying to access/store a recently searched word on your device for retrieving';
const _unexpectedFailureMessage =
    'Unexpected error occurred while trying to get search results, please contact support';

@injectable
class DictionaryWordSearchBloc extends Bloc<DictionaryWordSearchEvent, DictionaryWordSearchState> {
  final IDictionaryWordSearchRepository dictionaryWordSearchRepository;

  DictionaryWordSearchBloc({@required this.dictionaryWordSearchRepository})
      : super(const DictionaryWordSearchState.initial());

  @override
  Stream<DictionaryWordSearchState> mapEventToState(
    DictionaryWordSearchEvent event,
  ) async* {
    yield* event.when(
      modifyQuery: (query) async* {
        if (query.isEmpty) {
          yield const DictionaryWordSearchState.initial();
        } else {
          yield const DictionaryWordSearchState.loadInProgress();
          final resultEither = await dictionaryWordSearchRepository.getDictionaryWordSearchResults(query: query);

          yield* resultEither.fold(
            (failure) async* {
              yield DictionaryWordSearchState.loadFailure(message: _mapRemoteFailureToMessage(failure));
            },
            (results) async* {
              yield DictionaryWordSearchState.loadSearchResultsSuccess(words: results);
            },
          );
        }
      },
      addNewRecentlySearchedWord: (word) async* {
        yield const DictionaryWordSearchState.loadInProgress();
        final resultEither = await dictionaryWordSearchRepository.addNewRecentlySearchedWord(word);

        yield* resultEither.fold(
          (failure) async* {
            yield const DictionaryWordSearchState.loadFailure(message: _localDatabaseProcessingFailureMessage);
          },
          (addedWord) async* {
            yield DictionaryWordSearchState.newWordAddedToRecentlySearchedWords(addedWord: addedWord);
          },
        );
      },
      getRecentlySearchedWords: () async* {
        yield const DictionaryWordSearchState.loadInProgress();
        final resultEither = await dictionaryWordSearchRepository.getRecentlySearchedWords();

        yield* resultEither.fold(
          (failure) async* {
            yield const DictionaryWordSearchState.loadFailure(message: _localDatabaseProcessingFailureMessage);
          },
          (results) async* {
            yield results.isEmpty()
                ? const DictionaryWordSearchState.initial()
                : DictionaryWordSearchState.loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords: results);
          },
        );
      },
      deleteRecentlySearchedWord: (wordToDelete) async* {
        yield const DictionaryWordSearchState.loadInProgress();
        final resultEither = await dictionaryWordSearchRepository.deleteRecentlySearchedWord(wordToDelete);

        yield* resultEither.fold(
          (failure) async* {
            yield const DictionaryWordSearchState.loadFailure(message: _localDatabaseProcessingFailureMessage);
          },
          (deletedWord) async* {
            yield DictionaryWordSearchState.deleteSuccess(deletedWord: deletedWord);
          },
        );
      },
    );
  }

  @override
  Stream<Transition<DictionaryWordSearchEvent, DictionaryWordSearchState>> transformEvents(
    Stream<DictionaryWordSearchEvent> events,
    Stream<Transition<DictionaryWordSearchEvent, DictionaryWordSearchState>> Function(DictionaryWordSearchEvent)
        transitionFn,
  ) {
    final debounceStream = events
        .where((event) => event is DictionaryWordSearchEventModifyQuery)
        .debounceTime(const Duration(milliseconds: 500));
    final nonDebounceStream = events.where((event) => event is! DictionaryWordSearchEventModifyQuery);
    return super.transformEvents(StreamGroup.merge([debounceStream, nonDebounceStream]), transitionFn);
  }
}

String _mapRemoteFailureToMessage(DictionaryWordSearchRemoteFailure failure) {
  return failure.when(
    networkError: () => _networkFailureMessage,
    noResultsFound: () => _noResultsFoundMessage,
    serverError: () => _serverFailureMessage,
    unexpected: () => _unexpectedFailureMessage,
  );
}
