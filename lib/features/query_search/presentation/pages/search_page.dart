import 'package:dr_words/features/query_search/presentation/bloc/bloc.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/features/query_search/presentation/pages/search_page_search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  onPressed: () => {},
                )
              : null),
      body: result.isEmpty
          ? Container()
          : Container(
              child: Center(
                child: Text(result['singleResult'].label),
              ),
            ),
    );
  }
}
