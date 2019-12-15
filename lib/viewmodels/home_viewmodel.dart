import 'package:dr_words/datamodels/query_related/query_wordlist.dart';
import 'package:dr_words/locator.dart';
import 'package:dr_words/services/api/api_service.dart';
import 'package:dr_words/services/navigation_service.dart';
import 'package:dr_words/widgets/loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final navigationService = locator<NavigationService>();

  String appBarText;
  List<String> popupMenuChoices;

  void initialise(BuildContext context) {
    appBarText = 'Favorites';

    popupMenuChoices = ['Settings', 'Help', 'About'];
  }

  void beginSearch(context) async {
    var result =
        await showSearch(context: context, delegate: WordQuerySearch());
    print(result);
  }

  void handlePopupMenuSelection(String choice) {
    print(choice);
  }
}

class WordQuerySearch extends SearchDelegate {
  final api = locator<ApiService>();

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
        builder: (BuildContext context, AsyncSnapshot<QueryWordlist> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Execute a search...');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return LoadingIndicator();
            default:
              return snapshot.data == null
                  ? Text('No results found')
                  : ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: snapshot.data.results.length,
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(0),
                        child: Text(snapshot.data.results[index].label),
                      ),
                    );
          }
        });
  }

  Future<QueryWordlist> getQueryResults() async {
    return await api.getQueryResults(query);
  }
}
