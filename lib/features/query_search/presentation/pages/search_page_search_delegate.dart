import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/presentation/utils/icon_utils.dart';
import 'package:dr_words/core/presentation/widgets/loading_indicator.dart';
import 'package:dr_words/features/query_search/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      bloc.add(GetRecentlySearchedWordsEvent());
    } else {
      bloc.add(ModifyQueryEvent(query: query));
    }

    return BlocBuilder(
      bloc: bloc,
      builder: (context, state) {
        if (state is Empty) {
          return const Center(
            child: Text('Enter a query to search from'),
          );
        } else if (state is Loading) {
          return LoadingIndicator();
        } else if (state is QuerySearchErrorState) {
          return Text(state.message);
        } else if (state is QuerySearchRecentlySearchedWordsLoadedState) {
          return ListView.builder(
            itemCount: state.recentlySearchedWords.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () async {
                final DictionaryWord wordToGetHeadwordEntries = state.recentlySearchedWords[index];
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
                        state.recentlySearchedWords[index].label,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is QuerySearchLoadedState) {
          return (state?.querySearchResults?.results ?? []).isEmpty
              ? const Center(
                  child: Text('No results found'),
                )
              : ListView.builder(
                  itemCount: state.querySearchResults.results.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      final querySingleSearchResult = state.querySearchResults.results[index];
                      bloc.add(AddNewRecentlySearchedWordEvent(newRecentlySearchedWord: querySingleSearchResult));
                      close(context, querySingleSearchResult);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                      child: Text(
                        state.querySearchResults.results[index].label,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                );
        }
        return const Scaffold();
      },
    );
  }
}
