import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_event.freezed.dart';

@freezed
abstract class DictionaryWordSearchEvent with _$DictionaryWordSearchEvent {
  const factory DictionaryWordSearchEvent.getRecentlySearchedWords() =
      _DictionaryWordSearchEventGetRecentlySearchedWords;
  const factory DictionaryWordSearchEvent.modifyQuery({String query}) = DictionaryWordSearchEventModifyQuery;
  const factory DictionaryWordSearchEvent.addNewRecentlySearchedWord({DictionaryWord newRecentlySearchedWord}) =
      _DictionaryWordSearchEventAddNewRecentlySearchedWord;
}
