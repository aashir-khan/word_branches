part of 'dictionary_word_search_bloc.dart';

@freezed
abstract class DictionaryWordSearchEvent with _$DictionaryWordSearchEvent {
  const factory DictionaryWordSearchEvent.getRecentlySearchedWords() =
      _DictionaryWordSearchEventGetRecentlySearchedWords;
  const factory DictionaryWordSearchEvent.modifyQuery({String query}) = DictionaryWordSearchEventModifyQuery;
  const factory DictionaryWordSearchEvent.addNewRecentlySearchedWord({DictionaryWord newRecentlySearchedWord}) =
      _DictionaryWordSearchEventAddNewRecentlySearchedWord;
}
