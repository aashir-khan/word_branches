import 'package:dr_words/core/presentation/widgets/loading_indicator/loading_indicator.dart';
import 'package:dr_words/features/query_search/presentation/bloc/bloc.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_words/core/constants/routes_path.dart' as routes;

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var result = Map<dynamic, dynamic>();

  @override
  void didChangeDependencies() {
    Future.delayed(Duration.zero, () async {
      result = await showSearch(
          context: context,
          delegate: WordQuerySearch(BlocProvider.of<QuerySearchBloc>(context)));

      if (result.isEmpty) {
        BlocProvider.of<QuerySearchBloc>(context)
            .add(CancelSearchEvent(routeNameToReturnTo: routes.HomeRoute));
      }
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Results'),
            leading: result['singleResult'] != null
                ? IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => BlocProvider.of<QuerySearchBloc>(context)
                        .add(CancelSearchEvent(
                            routeNameToReturnTo: routes.HomeRoute)))
                : null),
        body: result.isEmpty
            ? Container()
            : Container(
                child: Center(
                  child: Text(result['singleResult'].label),
                ),
              ));
  }
}

class WordQuerySearch extends SearchDelegate<Map<dynamic, dynamic>> {
  final Bloc<QuerySearchEvent, QuerySearchState> bloc;

  WordQuerySearch(this.bloc);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: transitionAnimation,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context);

  @override
  TextInputAction get textInputAction => TextInputAction.done;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, Map()),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    bloc.add(ModifyQueryEvent(query: query));

    return BlocBuilder(
      bloc: bloc,
      builder: (context, state) {
        if (state is QuerySearchStateInitial) {
          return Center(
            child: Text('Enter a query to search from'),
          );
        }
        if (state is QuerySearchStateLoading) {
          return LoadingIndicator();
        }
        return state.querySearchResults.results.length == 0
            ? Center(
                child: Text('No results found'),
              )
            : ListView.builder(
                itemCount: state.querySearchResults.results.length,
                itemBuilder: (context, index) => InkWell(
                    child: Container(
                      child: Text(
                        state.querySearchResults.results[index].label,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                    ),
                    onTap: () {
                      final querySingleSearchResult =
                          state.querySearchResults.results[index];
                      close(context, {'singleResult': querySingleSearchResult});
                      // querySearchSingleResult = state.results.results[index];
                      // showResults(context);
                    }),
              );
      },
    );
  }
}
