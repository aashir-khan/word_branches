import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'dictionary_word_search_state.freezed.dart';

@freezed
abstract class DictionaryWordSearchState with _$DictionaryWordSearchState {
  const factory DictionaryWordSearchState.initial() = _DictionaryWordSearchStateInitial;
  const factory DictionaryWordSearchState.loadInProgreess() = _DictionaryWordSearchStateLoadInProgress;
  const factory DictionaryWordSearchState.loadSearchResultsSuccess({KtList<DictionaryWord> words}) =
      _DictionaryWordSearchStateLoadSearchResultsSuccess;
  const factory DictionaryWordSearchState.loadFailure({String message}) = _DictionaryWordSearchStateLoadFailure;
  const factory DictionaryWordSearchState.newWordAddedToRecentlySearchedWords({@required DictionaryWord addedWord}) =
      _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords;
  const factory DictionaryWordSearchState.loadRecentlySearchedWordsResultsSuccess(
      {KtList<DictionaryWord> recentlySearchedWords}) = _DictionaryWordSearchLoadRecentlySearchedWordsSuccess;
}
