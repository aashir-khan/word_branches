import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../core/custom_icons_icons.dart';
import '../../core/widgets/loading_indicator.dart';
import 'search_viewmodel.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => _SearchViewWidget(),
      viewModelBuilder: () => SearchViewModel(),
    );
  }
}

class _SearchViewWidget extends HookViewModelWidget<SearchViewModel> {
  @override
  Widget buildViewModelWidget(BuildContext context, SearchViewModel model) {
    final theme = Theme.of(context);
    /*
      * Start section that emulates Flutter SearchDelegate
    */
    final ProxyAnimation _proxyAnimation = ProxyAnimation(kAlwaysDismissedAnimation);
    Animation<double> transitionAnimation() => _proxyAnimation;
    /*
      * End section that emulates Flutter SearchDelegate
    */

    Widget buildLeading(BuildContext context) {
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.arrow_menu,
          progress: transitionAnimation(),
        ),
        onPressed: model.navigateToHomeView,
      );
    }

    List<Widget> buildActions(BuildContext context, TextEditingController controller) {
      return [
        IconButton(
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: transitionAnimation(),
          ),
          onPressed: () => controller.text = '',
        )
      ];
    }

    Widget buildBody() {
      if (model.isBusy) {
        return LoadingIndicator();
      } else if (model.hasError) {
        return Center(
          child: Text(model.modelError as String),
        );
      } else if (model.hasSomeSearchResults) {
        return ListView.builder(
          itemCount: model.searchResults.size,
          itemBuilder: (context, index) => InkWell(
            onTap: () => model.viewSearchResultsForWord(model.searchResults[index]),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 24,
              ),
              child: Text(
                model.searchResults[index].label,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        );
      } else if (model.hasEmptySearchResults) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Flexible(
                child: Text(
                  'No results found',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ),
              Flexible(
                child: Text(
                  'Try adjusting your search',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
            ],
          ),
        );
      } else if (model.hasSomeRecentSearches) {
        final recentSearch = model.recentSearches;
        return ListView.builder(
          itemCount: recentSearch.size,
          itemBuilder: (context, index) => InkWell(
            onTap: () => model.navigateToHeadwordEntriesView(recentSearch[index]),
            child: ListTile(
              leading: const Icon(CustomIcons.time_icon, color: Colors.black),
              title: Text(recentSearch[index].word.label, style: const TextStyle(fontSize: 16)),
              trailing: InkWell(
                onTap: () => model.deleteRecentSearch(recentSearch[index]),
                child: const Icon(Icons.delete, color: Colors.red),
              ),
            ),
          ),
        );
      }

      return const Center(
        child: Text('Enter a query to search from', style: TextStyle(fontSize: 20)),
      );
    }

    final queryController = useTextEditingController();
    final queryChangeHandler = useStreamController<String>();
    queryController.addListener(() {
      queryChangeHandler.add(queryController.text);
    });

    void debounceFunction(String query) =>
        query.isEmpty ? model.getRecentSearches() : model.getDictionaryWordSearchResults(query);

    queryChangeHandler.stream.debounceTime(const Duration(milliseconds: 500)).forEach(debounceFunction);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        iconTheme: theme.primaryIconTheme,
        textTheme: theme.primaryTextTheme,
        brightness: theme.primaryColorBrightness,
        leading: buildLeading(context),
        title: TextField(
          controller: queryController,
          style: theme.textTheme.headline6,
          textInputAction: TextInputAction.none,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: MaterialLocalizations.of(context).searchFieldLabel,
            hintStyle: theme.inputDecorationTheme.hintStyle,
          ),
        ),
        actions: buildActions(context, queryController),
      ),
      body: buildBody(),
    );
  }
}
