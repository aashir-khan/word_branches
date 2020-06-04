import 'package:dr_words/application/dictionary_word_search/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dr_words/presentation/core/utils/icon_utils.dart';

class WordQuerySearch extends SearchDelegate<DictionaryWord> {
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
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      bloc.add(const QuerySearchEvent.getRecentlySearchedWords());
    } else {
      bloc.add(QuerySearchEvent.modifyQuery(query: query));
    }

    return BlocBuilder<QuerySearchBloc, QuerySearchState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: Text('Enter a query to search from'),
          ),
          loadInProgreess: () => LoadingIndicator(),
          loadSearchResultsSuccess: (words) => words.isEmpty
              ? const Center(
                  child: Text('No results found'),
                )
              : ListView.builder(
                  itemCount: words.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      final querySingleSearchResult = words[index];
                      bloc.add(QuerySearchEvent.addNewRecentlySearchedWord(
                          newRecentlySearchedWord: querySingleSearchResult));
                      close(context, querySingleSearchResult);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                      child: Text(
                        words[index].label,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
          loadFailure: (message) => Text(message),
          newWordAddedToRecentlySearchedWords: () => Container(),
          loadRecentlySearchedWordsResultsSuccess: (words) => ListView.builder(
            itemCount: words.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () async {
                final DictionaryWord wordToGetHeadwordEntries = words[index];
                close(context, wordToGetHeadwordEntries);
              },
              child: Container(
                // child: Text('foo'),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 24,
                ),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      iconUtils['timeIcon'] as String,
                      placeholderBuilder: (_) => const CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 24),
                      child: Text(
                        words[index].label,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
