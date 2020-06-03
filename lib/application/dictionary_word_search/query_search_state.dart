import 'package:dr_words/domain/core/entities/dictionary_word.dart';
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
  final List<DictionaryWord> words;

  const QuerySearchLoadedState({this.words});

  @override
  List<Object> get props => [words];
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
