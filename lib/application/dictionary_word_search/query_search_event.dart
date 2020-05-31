import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:equatable/equatable.dart';

abstract class QuerySearchEvent extends Equatable {
  const QuerySearchEvent();
}

class GetRecentlySearchedWordsEvent extends QuerySearchEvent {
  @override
  List<Object> get props => [];
}

class ModifyQueryEvent extends QuerySearchEvent {
  final String query;

  const ModifyQueryEvent({this.query});

  @override
  List<Object> get props => [query];
}

class AddNewRecentlySearchedWordEvent extends QuerySearchEvent {
  final DictionaryWord newRecentlySearchedWord;

  const AddNewRecentlySearchedWordEvent({this.newRecentlySearchedWord});

  @override
  List<Object> get props => [newRecentlySearchedWord];
}
