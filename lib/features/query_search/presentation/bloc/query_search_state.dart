import 'package:dr_words/datamodels/query_related/query_search_results.dart';
import 'package:equatable/equatable.dart';

abstract class QuerySearchState extends Equatable {
  const QuerySearchState();
}

class QuerySearchStateInitial extends QuerySearchState {
  @override
  List<Object> get props => [];
}

class QuerySearchStateLoading extends QuerySearchState {
  @override
  List<Object> get props => [];
}

class QuerySearchStateLoaded extends QuerySearchState {
  final QuerySearchResults querySearchResults;

  QuerySearchStateLoaded({this.querySearchResults});

  @override
  List<Object> get props => [querySearchResults];
}
