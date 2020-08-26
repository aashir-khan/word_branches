part of 'dictionary_word_search_bloc.dart';

@freezed
abstract class DictionaryWordSearchState with _$DictionaryWordSearchState {
  const factory DictionaryWordSearchState.initial() = _DictionaryWordSearchStateInitial;
  const factory DictionaryWordSearchState.loadInProgress() = _DictionaryWordSearchStateLoadInProgress;
  const factory DictionaryWordSearchState.loadSearchResultsSuccess({KtList<DictionaryWord> words}) =
      _DictionaryWordSearchStateLoadSearchResultsSuccess;
  const factory DictionaryWordSearchState.loadFailure({String message}) = _DictionaryWordSearchStateLoadFailure;
  const factory DictionaryWordSearchState.newWordAddedToRecentlySearchedWords({@required DictionaryWord addedWord}) =
      _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords;
  const factory DictionaryWordSearchState.deleteSuccess({@required DictionaryWord deletedWord}) = _DeleteSuccess;
  const factory DictionaryWordSearchState.loadRecentlySearchedWordsResultsSuccess(
      {KtList<DictionaryWord> recentlySearchedWords}) = _DictionaryWordSearchLoadRecentlySearchedWordsSuccess;
}
