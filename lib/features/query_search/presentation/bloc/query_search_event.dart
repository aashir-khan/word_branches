import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
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

  ModifyQueryEvent({this.query});

  @override
  List<Object> get props => [query];
}

class AddNewRecentlySearchedWordEvent extends QuerySearchEvent {
  final QuerySearchSingleResult newRecentlySearchedWord;

  AddNewRecentlySearchedWordEvent({this.newRecentlySearchedWord});

  @override
  List<Object> get props => [newRecentlySearchedWord];
}
