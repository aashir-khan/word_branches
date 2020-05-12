import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class QuerySearchState extends Equatable {
  const QuerySearchState();
}

class Empty extends QuerySearchState {
  @override
  List<Object> get props => [];
}

class Loading extends QuerySearchState {
  @override
  List<Object> get props => [];
}

class QuerySearchLoadedState extends QuerySearchState {
  final QuerySearchResults querySearchResults;

  const QuerySearchLoadedState({this.querySearchResults});

  @override
  List<Object> get props => [querySearchResults];
}

class QuerySearchErrorState extends QuerySearchState {
  final String message;

  const QuerySearchErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}

class QuerySearchNewWordAddedState extends QuerySearchState {
  @override
  List<Object> get props => [];
}

class QuerySearchRecentlySearchedWordsLoadedState extends QuerySearchState {
  final List<DictionaryWord> recentlySearchedWords;

  const QuerySearchRecentlySearchedWordsLoadedState({this.recentlySearchedWords});

  @override
  List<Object> get props => [recentlySearchedWords];
}
