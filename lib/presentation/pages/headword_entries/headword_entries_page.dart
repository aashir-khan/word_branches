import 'package:auto_route/auto_route.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HeadwordEntriesPage extends StatefulWidget {
  final DictionaryWord wordSelected;

  const HeadwordEntriesPage(this.wordSelected);

  @override
  _HeadwordEntriesPageState createState() => _HeadwordEntriesPageState();
}

class _HeadwordEntriesPageState extends State<HeadwordEntriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.wordSelected.label),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () async => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.homePage),
        ),
      ),
    );
  }
}
