import 'package:dr_words/datamodels/query_related/query_search_results.dart';
import 'package:dr_words/locator.dart';
import 'package:dr_words/responsive/screen_type_layout.dart';
import 'package:dr_words/services/api/api_service.dart';
import 'package:dr_words/viewmodels/search_viewmodel.dart';
import 'package:dr_words/widgets/base_widget.dart';
import 'package:dr_words/widgets/loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';

import 'search_view_mobile.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SearchViewModel>(
      viewModel: SearchViewModel(),
      child: ScreenTypeLayout(
        mobile: SearchViewMobile(),
      ),
    );
  }
}

class WordQuerySearch extends SearchDelegate {
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
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
        future: getQueryResults(),
        builder:
            (BuildContext context, AsyncSnapshot<QuerySearchResults> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Execute a search...');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return LoadingIndicator();
            default:
              return snapshot.data.results.length == 0
                  ? Text('No results found')
                  : ListView.builder(
                      itemCount: snapshot.data.results.length,
                      itemBuilder: (context, index) => InkWell(
                        child: Container(
                          child: Text(
                            snapshot.data.results[index].label,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 24,
                          ),
                        ),
                        onTap: () =>
                            close(context, snapshot.data.results[index].label),
                      ),
                    );
          }
        });
  }

  Future<QuerySearchResults> getQueryResults() async {
    final api = locator<ApiService>();
    return api.getQueryResults(query);
  }
}
