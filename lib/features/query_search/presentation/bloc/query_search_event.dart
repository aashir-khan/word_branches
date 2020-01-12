import 'package:equatable/equatable.dart';

abstract class QuerySearchEvent extends Equatable {
  const QuerySearchEvent();
}

class ModifyQueryEvent extends QuerySearchEvent {
  final String query;

  ModifyQueryEvent({this.query});

  @override
  List<Object> get props => [query];
}

class CancelSearchEvent extends QuerySearchEvent {
  final String routeNameToReturnTo;

  CancelSearchEvent({this.routeNameToReturnTo});

  @override
  List<Object> get props => [routeNameToReturnTo];
}
