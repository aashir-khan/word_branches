import 'package:auto_route/auto_route.dart';
import 'package:dr_words/application/dictionary_word_search/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/pages/search/search_page_search_delegate.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void didChangeDependencies() {
    Future.delayed(Duration.zero, () async {
      final DictionaryWord result =
          await showSearch(context: context, delegate: WordQuerySearch(BlocProvider.of<QuerySearchBloc>(context)));
      if (result != null) {
        await ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(
          Routes.headwordEntriesPage,
          arguments: HeadwordEntriesPageArguments(wordSelected: result),
        );
      } else {
        await ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.homePage);
      }
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
