import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_state.freezed.dart';

@freezed
abstract class QuerySearchState with _$QuerySearchState {
  const factory QuerySearchState.initial() = _QuerySearchStateInitial;
  const factory QuerySearchState.loadInProgreess() = _QuerySearchStateLoadInProgress;
  const factory QuerySearchState.loadSearchResultsSuccess({List<DictionaryWord> words}) =
      _QuerySearchStateLoadSearchResultsSuccess;
  const factory QuerySearchState.loadFailure({String message}) = _QuerySearchStateLoadFailure;
  const factory QuerySearchState.newWordAddedToRecentlySearchedWords() =
      _QueySearchStateNewWordAddedToRecentlySearchedWords;
  const factory QuerySearchState.loadRecentlySearchedWordsResultsSuccess({List<DictionaryWord> recentlySearchedWords}) =
      _QuerySearchLoadRecentlySearchedWordsSuccess;
}
