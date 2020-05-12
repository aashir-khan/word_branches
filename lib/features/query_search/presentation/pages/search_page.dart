import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/features/query_search/presentation/bloc/bloc.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/features/query_search/presentation/pages/search_page_search_delegate.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_words/core/constants/routes_path.dart' as routes;

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
        await getIt<NavigationService>()
            .navigateWithReplacement<DictionaryWord>(routes.headwordEntriesRoute, arguments: result);
      } else {
        await getIt<NavigationService>().navigateWithReplacement(routes.homeRoute);
      }
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //     title: Text('Results'),
        //     leading: result['singleResult'] != null
        //         ? IconButton(
        //             icon: Icon(Icons.arrow_back),
        //             onPressed: () => {},
        //           )
        //         : null),
        // body: result.isEmpty
        //     ? Container()
        //     : Container(
        //         child: Center(
        //           child: Text(result['singleResult'].label),
        //         ),
        //       ),
        );
  }
}
