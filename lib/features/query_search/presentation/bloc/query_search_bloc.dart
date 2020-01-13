import 'dart:async';
import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dr_words/core/services/api/api_service.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/locator.dart';
import './bloc.dart';
import 'package:rxdart/rxdart.dart';

class QuerySearchBloc extends Bloc<QuerySearchEvent, QuerySearchState> {
  @override
  QuerySearchState get initialState => QuerySearchStateInitial();

  @override
  Stream<QuerySearchState> mapEventToState(
    QuerySearchEvent event,
  ) async* {
    if (event is ModifyQueryEvent) {
      if (event.query.isEmpty) {
        yield QuerySearchStateInitial();
      } else {
        yield QuerySearchStateLoading();
        final api = locator<ApiService>();
        final results = await api.getQueryResults(event.query);
        yield QuerySearchStateLoaded(querySearchResults: results);
      }
    } else if (event is CancelSearchEvent) {
      final navigationService = locator<NavigationService>();
      navigationService.navigateWithReplacement(event.routeNameToReturnTo);
      // nothing to yield
    }
  }

  @override
  Stream<QuerySearchState> transformEvents(Stream<QuerySearchEvent> events,
      Stream<QuerySearchState> Function(QuerySearchEvent) next) {
    final debounceStream = events
        .where((event) => event is ModifyQueryEvent)
        .debounceTime(Duration(milliseconds: 500));
    final nonDebounceStream =
        events.where((event) => event is! ModifyQueryEvent);
    return super.transformEvents(
        StreamGroup.merge([debounceStream, nonDebounceStream]), next);
  }
}
