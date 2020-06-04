import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_event.freezed.dart';

@freezed
abstract class QuerySearchEvent with _$QuerySearchEvent {
  const factory QuerySearchEvent.getRecentlySearchedWords() = _QuerySearchEventGetRecentlySearchedWords;
  const factory QuerySearchEvent.modifyQuery({String query}) = QuerySearchEventModifyQuery;
  const factory QuerySearchEvent.addNewRecentlySearchedWord({DictionaryWord newRecentlySearchedWord}) =
      _QuerySearchEventAddNewRecentlySearchedWord;
}
